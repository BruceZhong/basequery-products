package com.eenet.basequery.local;

import org.junit.Test;

import com.eenet.base.query.ConditionItem;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.RangeType;
import com.eenet.basequery.local.env.SpringEnv;
import com.eenet.basequery.sales.SaleCustomerService;
import com.eenet.util.EEBeanUtils;

public class SaleCustomerTest extends SpringEnv {

	@Test
	public void crud(){
		SaleCustomerService service = (SaleCustomerService)super.getContext().getBean("SaleCustomerService");		
		QueryCondition queryCondition = new QueryCondition();
		queryCondition.setMaxQuantity(10);
		queryCondition.setStartIndex(0);
		String result = EEBeanUtils.object2Json(service.getSaleCustomer(queryCondition));
		System.out.println("result----"+result);
		
	}
}