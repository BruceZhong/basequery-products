<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/bootstrap/css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/ionicons/2.0.1/css/ionicons.min.css">

<!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/dist/css/skins/skin-blue.min.css">
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/plugins/iCheck/all.css">
<!-- datepicker --> 
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/plugins/datepicker/datepicker3.css">
<!-- DataTables -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/plugins/datatables/dataTables.bootstrap.css">
<!-- jquery-confirm 
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/plugins/jquery-confirm/jquery-confirm.css">
-->
<!-- Theme style -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/dist/css/AdminLTE.min.css">
<!-- jquery-ui -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/plugins/jQueryUI/css/jquery-ui.css">
<!-- retrunTop css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/static/plugins/returnTop/css/returnTop.css">
<!-- jqueryTab -->	
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/static/plugins/jqueryTab/css/easy-responsive-tabs.css">
	
<!-- jqueryPage -->	
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/static/plugins/jqueryPage/src/paging.css">	
	
<!-- jqueryBuildTable -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/plugins/jqueryBuildTable/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/plugins/jqueryBuildTable/css/jquery.circliful.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/plugins/jqueryBuildTable/css/styles.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/plugins/jqueryBuildTable/css/font-awesome.css">
<!-- custom css -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/dist/css/base.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/dist/css/page.css">	
<style type="text/css">
.slide_box{height: 150px;}
</style>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="<%=request.getContextPath() %>/static/https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="<%=request.getContextPath() %>/static/https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


<!-- jQuery 2.1.4 --> 
<!--[if gte IE 9]>
  <script src="<%=request.getContextPath() %>/static/plugins/jQuery/jQuery-2.1.4.min.js"></script>
  <![endif]--> 

<!--[if !IE]><!--> 
<script src="<%=request.getContextPath() %>/static/plugins/jQuery/jQuery-2.1.4.min.js"></script> 
<!--<![endif]--> 

<!--[if lt IE 9]>
    <script src="<%=request.getContextPath() %>/static/plugins/jQuery/jquery-1.12.4.min.js"></script>
  <![endif]--> 

<script src="<%=request.getContextPath() %>/static/plugins/jQueryUI/jquery-ui.min.js"></script> 

<script src="<%=request.getContextPath() %>/static/bootstrap/js/bootstrap.min.js"></script>
<!-- JQuery-Validform 
<script src="<%=request.getContextPath() %>/static/plugins/JQuery-Validform/Validform_v5.3.2_min.js"></script>
-->
<!-- iCheck 1.0.1 -->
<script src="<%=request.getContextPath() %>/static/plugins/iCheck/icheck.min.js"></script>
<!-- datepicker -->
<script src="<%=request.getContextPath() %>/static/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="<%=request.getContextPath() %>/static/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<!-- bootstrap-confirmation 
<script src="<%=request.getContextPath() %>/static/plugins/bootstrap-confirmation/bootstrap-confirmation.js"></script>
-->
<!-- jquery-confirm 
<script src="<%=request.getContextPath() %>/static/plugins/jquery-confirm/jquery-confirm.js"></script>
-->
<!-- DataTables --> 
<script src="<%=request.getContextPath() %>/static/plugins/datatables/jquery.dataTables.js"></script> 
<script src="<%=request.getContextPath() %>/static/plugins/datatables/dataTables.bootstrap.js"></script>
<!-- SlimScroll 1.3.0 --> 
<script src="<%=request.getContextPath() %>/static/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- AdminLTE App --> 
<script src="<%=request.getContextPath() %>/static/dist/js/app.min.js"></script>  
<!-- common js --> 
<script src="<%=request.getContextPath() %>/static/dist/js/common.js"></script> 

<!-- ECharts -->
<script
	src="<%=request.getContextPath()%>/static/plugins/echarts/echarts.js"></script>
<script
	src="<%=request.getContextPath()%>/static/plugins/echarts/theme/macarons.js"></script>
<script
	src="<%=request.getContextPath()%>/static/plugins/echarts/theme/infographic.js"></script>
<script
	src="<%=request.getContextPath()%>/static/plugins/echarts/theme/roma.js"></script>
<script
	src="<%=request.getContextPath()%>/static/plugins/echarts/theme/vintage.js"></script>
<script
		src="<%=request.getContextPath()%>/static/plugins/echarts/map/china.js"></script>
		
<!-- jqueryTab -->
<script
		src="<%=request.getContextPath()%>/static/plugins/jqueryTab/js/easyResponsiveTabs.js"></script>


<!-- jqueryPage -->
<script
		src="<%=request.getContextPath()%>/static/plugins/jqueryPage/src/query.js"></script>			
<script
		src="<%=request.getContextPath()%>/static/plugins/jqueryPage/src/paging.js"></script>		
<!-- jqueryBuildTable -->
<script src="<%=request.getContextPath()%>/static/plugins/jqueryBuildTable/jquery.jsontotable.min.js"></script>
<script src="<%=request.getContextPath()%>/static/plugins/jqueryBuildTable/easypiechart-data.js"></script>
<script src="<%=request.getContextPath()%>/static/plugins/jqueryBuildTable/easypiechart.js"></script>
<script src="<%=request.getContextPath()%>/static/plugins/jqueryBuildTable/jquery.circliful.min.js"></script>