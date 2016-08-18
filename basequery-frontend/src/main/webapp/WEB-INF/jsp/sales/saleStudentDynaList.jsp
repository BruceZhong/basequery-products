<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="reset">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>远程教育数据中心</title>
<jsp:include page="/WEB-INF/jsp/common/jslibs.jsp"/>
</head>
<body class="inner-page-body">
  <!-- 
<section class="content-header">
  <h1>
  平台查询
  </h1>
  <ol class="breadcrumb">
    <li><a href="/"><i class="fa fa-home"></i> 首页</a></li>
    <li class="active">产品查询</li>
  </ol>
</section>
   -->
<section class="content">
 <div class="box">
     <div class="box-body">
     <form method="post">
	    <div class="box-footer fr left120" style="border-top:0;">
	      <div><button type="button" class="btn btn-primary">搜索</button></div>
	      <div class="margin_t20"><button type="button" class="btn btn-default down_btn">高级搜索</button></div>
	    </div>
    
      <div class="form-horizontal oh slide_box">
        <div class="row reset-form-horizontal pad-t15">
          
       <div class="col-md-12	">
				<div class="form-group">
				  <label class="control-label col-sm-3">激活时间</label>
				  <div class="col-sm-4">
					<input type="hidden"  value="activateDt"  name="conditions[0].fieldName"/> 
					<input type="hidden"  value="LESS2GREAT"  name="conditions[0].rangeType"/> 
					<input type="text" class="form-control "  value="${queryCondition.conditions[0].rangeFrom}"   id="activateDtId01" name="conditions[0].rangeFrom">
				  </div>
				  <div class="col-sm-1" style="text-align: center;line-height: 34px;">
					至
				  </div>
				   <div class="col-sm-4">
					<input type="text" class="form-control "  value="${queryCondition.conditions[0].rangeTo}"   id="activateDtId02" name="conditions[0].rangeTo">
				  </div>
				</div>
			  </div>
          <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">院校</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="schoolChineseName"  name="conditions[1].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[1].rangeType"/> 
                 <input type="text" class="form-control "  value="${queryCondition.conditions[1].rangeFrom}"   name="conditions[1].rangeFrom">
              </div>
            </div>
          </div>
           <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">学习中心</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="learncenterName"  name="conditions[2].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[2].rangeType"/> 
                <input type="text" class="form-control "  value="${queryCondition.conditions[2].rangeFrom}"    name="conditions[2].rangeFrom">
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">产品</label>
              <div class="col-sm-9">
                <input type="hidden"  value="productName"  name="conditions[3].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[3].rangeType"/> 
                 <input type="text" class="form-control "   value="${queryCondition.conditions[3].rangeFrom}"   name="conditions[3].rangeFrom">
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">产品类别</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="productTypeCode"  name="conditions[4].fieldName"/> 
              	<input type="hidden"  value="EQUAL"  name="conditions[4].rangeType"/> 
                 <select class="form-control" name="conditions[4].rangeFrom">
	                  <option value="">全部</option>
	                  <option value="01"  <c:if test="${queryCondition.conditions[4].rangeFrom == '01'}" >selected</c:if> >中小学教育产品</option>
	                  <option value="02"  <c:if test="${queryCondition.conditions[4].rangeFrom == '02'}" >selected</c:if> >职工网教育产品</option>
	                  <option value="03"  <c:if test="${queryCondition.conditions[4].rangeFrom == '03'}" >selected</c:if> >职业教育产品</option>
	                  <option value="04"  <c:if test="${queryCondition.conditions[4].rangeFrom == '04'}" >selected</c:if> >省专业技术人员教育产品</option>
	                  <option value="05"  <c:if test="${queryCondition.conditions[4].rangeFrom == '05'}" >selected</c:if> >学历教育产品</option>
	                  <option value="06"  <c:if test="${queryCondition.conditions[4].rangeFrom == '06'}" >selected</c:if> >专业技术人员教育产品</option>
	                  <option value="07"  <c:if test="${queryCondition.conditions[4].rangeFrom == '07'}" >selected</c:if> >工会干部培训教育产品</option>
	                  <option value="08"  <c:if test="${queryCondition.conditions[4].rangeFrom == '08'}" >selected</c:if> >生活学院教育产品</option>
	                  <option value="09"  <c:if test="${queryCondition.conditions[4].rangeFrom == '09'}" >selected</c:if> >高校考试培训产品	</option>
                </select>
              </div>
            </div>
          </div>
           <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">客户</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="customerName"  name="conditions[5].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[5].rangeType"/> 
                <input type="text" class="form-control "  value="${queryCondition.conditions[5].rangeFrom}"    name="conditions[5].rangeFrom">
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">年级</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="gradeName"  name="conditions[6].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[6].rangeType"/> 
                <input type="text" class="form-control "  value="${queryCondition.conditions[6].rangeFrom}"    name="conditions[6].rangeFrom">
              </div>
            </div>
          </div>
         <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">期名称</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="termName"  name="conditions[7].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[7].rangeType"/> 
                <input type="text" class="form-control "   value="${queryCondition.conditions[7].rangeFrom}"   name="conditions[7].rangeFrom">
              </div>
            </div>
          </div>
           <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">班级名称</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="className"  name="conditions[8].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[8].rangeType"/> 
                <input type="text" class="form-control "    value="${queryCondition.conditions[8].rangeFrom}"  name="conditions[8].rangeFrom">
              </div>
            </div>
          </div>
         
        </div>
      </div>
    </div> 
    </div> 
  
  <div class="box margin-bottom-none">
    <div class="box-header with-border">
      <div class="fr">
      <!-- 
        <button class="btn btn-block btn-success btn-outport"><i class="fa fa-fw fa-sign-out"></i> 导出学员信息</button>
         -->
      </div>
    </div>
    <div class="box-body">
      <table id="dtable" class="table table-bordered table-striped table-container">
      <thead>
        <tr>
        <th><input type="checkbox" class="select-all"></th>
        <th>学员</th>     
        <th>院校</th>
        <th>学习中心</th>
        <th>产品类别</th>
        <th>产品</th>
        <th>年级/培训期</th>
        <th>期</th>
        <th>班级</th>
        <th>必修活动数</th>
        <th>活动总数</th>
        <th>必修活动完成数</th>
        <th>活动完成总数</th>
        <th>学习进度</th>
        <th>企业</th>
        <th>企业激活时间</th>
        </tr>
      </thead>
      <tbody>
        <c:choose>
        	<c:when test="${not empty resultMap.resultSet }">
        	<c:forEach items="${resultMap.resultSet }"  var="resultSet">
        <tr>
		          <td><input type="checkbox"></td>
		      	    <td>${resultSet.studentName }<c:if test="${ empty resultSet.studentName }">暂无</c:if></td>
		          <td>	${resultSet.schoolChineseName }<c:if test="${ empty resultSet.schoolChineseName }">暂无</c:if></td>
		          <td>	${resultSet.learncenterName }<c:if test="${ empty resultSet.learncenterName }">暂无</c:if></td>
		          <td>${resultSet.productTypeName }<c:if test="${ empty resultSet.productTypeName }">暂无</c:if></td>
		          <td>${resultSet.productName }<c:if test="${ empty resultSet.productName }">暂无</c:if></td>
		          <td>${resultSet.gradeName }<c:if test="${ empty resultSet.gradeName }">暂无</c:if></td>
		          <td>${resultSet.termName }<c:if test="${ empty resultSet.termName }">暂无</c:if></td>
		          <td>${resultSet.className }<c:if test="${ empty resultSet.className }">暂无</c:if></td>
		          <td>${resultSet.mustCount }<c:if test="${ empty resultSet.mustCount }">暂无</c:if></td>
		          <td>${resultSet.actCount }<c:if test="${ empty resultSet.actCount }">暂无</c:if></td>
		          <td>${resultSet.myMustactcount }<c:if test="${ empty resultSet.myMustactcount }">暂无</c:if></td>
		          <td>${resultSet.myActcount }<c:if test="${ empty resultSet.myActcount }">暂无</c:if></td>
		          <td>${resultSet.myCourseProgress }<c:if test="${ empty resultSet.myCourseProgress }">暂无</c:if></td>
		          <td>${resultSet.customerName }<c:if test="${ empty resultSet.customerName }">暂无</c:if></td>
		          <td><fmt:formatDate  value="${resultSet.activateDt }"  type="both" pattern="yyyy-MM-dd " /></td>
        </tr>
          	</c:forEach>
          	</c:when>
          	<c:otherwise>
          			<td colspan="15"  align="center">暂无数据</td>
          	</c:otherwise>
           </c:choose>
      </tbody>
      </table>
      <jsp:include page="/WEB-INF/jsp/common/pagination.jsp"/>
      </form>
    </div>
  </div>
<jsp:include page="/WEB-INF/jsp/layouts/footer.jsp" />
</section>
</body>
<script>
    $("#activateDtId01").datepicker({language: 'zh-CN', autoclose: true, todayHighlight: true,format:'yyyy-mm-dd'});  
    $("#activateDtId02").datepicker({language: 'zh-CN', autoclose: true, todayHighlight: true,format:'yyyy-mm-dd', 
        onSelect: function(dateText,inst){  
            var time=dateText.split("-");  
            var year = time[0];  
            var month = time[1];  
            var day = time[2];  
            $("#activateDtId02").datepicker(  
                'option', 'minDate', new Date(year, month - 1, day)  
            );  
              
        }  
    });  
</script>
</html>
