package com.eenet.basequery.login;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.eenet.authen.AdminUserLoginAccount;
import com.eenet.base.SimpleResponse;
import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.authen.AuthenUtils;
import com.eenet.basequery.authen.Constant;
import com.eenet.basequery.increment.Increment;
import com.eenet.basequery.increment.IncrementService;
import com.eenet.basequery.pri.PriTreeService;
import com.eenet.basequery.pri.Privilege;
import com.eenet.util.EEBeanUtils;

@Controller
public class LoginController {
	
	@Autowired
	private IncrementService incrementService;
	
	@Autowired
	private PriTreeService priTreeService;

	@RequestMapping(value="/login")
	public String login(HttpSession session,String loginAccount,String password,RedirectAttributes redirectAttributes){
		SimpleResponse errResponse = new SimpleResponse();
		errResponse.setSuccessful(false);
		
		if(EEBeanUtils.isNULL(loginAccount) || EEBeanUtils.isNULL(password)){
			errResponse.addMessage("账号或密码参数丢失");
			redirectAttributes.addFlashAttribute("errResponse", errResponse);
			redirectAttributes.addFlashAttribute("errMsg", errResponse.getStrMessage());
			return "redirect:/";
		}
		try {
			//调用api验证账号密码，获取授权码
			String code = AuthenUtils.loginUserGrantCode(loginAccount, password);
			if("".equals(code)){
				errResponse.addMessage("账号或密码输入错误");
				redirectAttributes.addFlashAttribute("errResponse", errResponse);
				redirectAttributes.addFlashAttribute("errMsg", errResponse.getStrMessage());
				return "redirect:/";
			}
			HashMap<String,String> tokenMap = AuthenUtils.grantToken(code);//获取令牌
			AdminUserLoginAccount adminUserLoginAccount = AuthenUtils.getAdminUserInfo(tokenMap.get("userId"),tokenMap.get("accessToken"));//获取个人信息
			if(adminUserLoginAccount!=null){
				Map<String, List<String>> map = priTreeService.getWholePri("D24FF26BC02D4E5AB5F1F37AE7319F6B");
				adminUserLoginAccount.setLoginAccount(loginAccount);
				session.setAttribute(Constant.adminUserLoginInfoSession, adminUserLoginAccount);
				   return "redirect:/main"; 
			}
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		errResponse.addMessage("系统出错，请联系管理员");
		redirectAttributes.addFlashAttribute("errResponse", errResponse);
		redirectAttributes.addFlashAttribute("errMsg", errResponse.getStrMessage());
		return "redirect:/";
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession session){
		session.removeAttribute(Constant.adminUserLoginInfoSession);
		return "redirect:/";
	}
	
	@RequestMapping(value="/main")
	public String main(){
		//显示后台整体框架
		
		return "main";
	}
	
	@RequestMapping(value="/index")
	public String index(QueryCondition queryCondition,Model model){
		SimpleResultSet<Increment>  result =  incrementService.getIncrement(queryCondition);
		model.addAttribute("resultMap", result);
		return "index";
	}
	
}
