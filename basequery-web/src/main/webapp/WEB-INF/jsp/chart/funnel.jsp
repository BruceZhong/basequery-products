<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html style="height: 100%">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>远程教育数据中心</title>
<jsp:include page="/WEB-INF/jsp/common/jslibs_report.jsp" />
</head>
<body>
<div class="col-lg-12 main">
	<div class="box" >
		<div class="box-body">
			<div class="col-md-12">
				<div class="form-group">
					<div class="col-md-4 grid_box1">		
						<input id="create_dt_from" type="text" class="form-control"  placeholder="预报读时间从">	
					</div>				
					<div class="col-md-4 grid_box1">				
							<input id="create_dt_to" type="text" class="form-control"  placeholder="预报读时间至">						
					</div>
					<div class="col-md-3">
						<button id="search" type="button" class="btn btn-primary"><i class="fa fa-search"></i>  搜索</button>
						<button id="reset" type="button" class="btn btn-default"><i class="fa fa-refresh"></i>  清空</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-4">
			<div class="panel panel-default" >
				<div class="panel-heading"><i class="fa fa-line-chart"></i></div>
				<div class="panel-body">
					<div class="canvas-wrapper">
						<div class="chart" id="main01" ></div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="panel panel-default">
				<div class="panel-heading"><i class="fa fa-pie-chart"></i></div>
				<div class="panel-body">
					<div class="canvas-wrapper">
						<div class="chart" id="main02"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="panel panel-default">
				<div class="panel-heading"><i class="fa fa-bar-chart"></i></div>
				<div class="panel-body">
					<div class="canvas-wrapper">
						<div class="chart" id="main03"></div>
					</div>
				</div>
			</div>
		</div>			
	</div><!--/.row-->			

	<div class="box">
		<div class="box-body">
			<div id="container-FRead">
				<!--Horizontal Tab-->
				<div id="FRead">
					<ul class="resp-tabs-list hor_1">
						<li><i class="fa fa-university"></i>网院</li>
						<li><i class="fa fa-graduation-cap"></i>学习中心</li>
						<li><i class="fa fa-home"></i>客户</li>
						<li><i class="fa fa-user"></i>招生顾问</li>						
					</ul>
					<div class="resp-tabs-container hor_1">
						<div id="jsontotable-FReadColleges">
							<!-- 加载表格 -->
							<div id="pageTool-FReadColleges"> <!-- 加载分页控件 --> </div>
						</div>	
						
						<div id="jsontotable-FReadLearnCenter">
							<!-- 加载表格 -->		
							<div id="pageTool-FReadLearnCenter"> <!-- 加载分页控件 --> </div>					
						</div>
						<div id="jsontotable-FReadCompany">
							<!-- 加载表格 -->
							<div id="pageTool-FReadCompany"> <!-- 加载分页控件 --> </div>						
						</div>
						<div id="jsontotable-FReadSaleman">
							<!-- 加载表格 -->
							<div id="pageTool-FReadSaleman"> <!-- 加载分页控件 --> </div>						
						</div>						
					</div>
				</div>
				<div id="nested-tabInfo-FRead">
					当前选择: <span class="tabName">网院</span>			
				</div>
			</div><!-- container-FRead -->
			
			<div id="container-Fllow">
				<!--Horizontal Tab-->
				<div id="Fllow">
					<ul class="resp-tabs-list hor_1">
						<li><i class="fa fa-university"></i>网院</li>
						<li><i class="fa fa-graduation-cap"></i>学习中心</li>
						<li><i class="fa fa-home"></i>客户</li>
						<li><i class="fa fa-users"></i>班主任</li>						
					</ul>
					<div class="resp-tabs-container hor_1">
						<div id="jsontotable-FllowColleges">
							<!-- 加载表格 -->
							<div id="pageTool-FllowColleges"> <!-- 加载分页控件 --> </div>
						</div>	
						
						<div id="jsontotable-FllowLearnCenter">
							<!-- 加载表格 -->		
							<div id="pageTool-FllowLearnCenter"> <!-- 加载分页控件 --> </div>					
						</div>
						<div id="jsontotable-FllowCompany">
							<!-- 加载表格 -->
							<div id="pageTool-FllowCompany"> <!-- 加载分页控件 --> </div>						
						</div>
						<div id="jsontotable-FllowLearnCenterUser">
							<!-- 加载表格 -->
							<div id="pageTool-FllowLearnCenterUser"> <!-- 加载分页控件 --> </div>						
						</div>						
					</div>
				</div>
				<div id="nested-tabInfo-Fllow">
					当前选择: <span class="tabName">网院</span>			
				</div>
			</div><!-- containerFllow -->	
			
			<div id="container-Read">
				<!--Horizontal Tab-->
				<div id="Read">
					<ul class="resp-tabs-list hor_1">
						<li><i class="fa fa-university"></i>网院</li>
						<li><i class="fa fa-graduation-cap"></i>学习中心</li>
						<li><i class="fa fa-home"></i>客户</li>
						<li><i class="fa fa-users"></i>班主任</li>						
					</ul>
					<div class="resp-tabs-container hor_1">
						<div id="jsontotable-ReadColleges">
							<!-- 加载表格 -->
							<div id="pageTool-ReadColleges"> <!-- 加载分页控件 --> </div>
						</div>	
						
						<div id="jsontotable-ReadLearnCenter">
							<!-- 加载表格 -->		
							<div id="pageTool-ReadLearnCenter"> <!-- 加载分页控件 --> </div>					
						</div>
						<div id="jsontotable-ReadCompany">
							<!-- 加载表格 -->
							<div id="pageTool-ReadCompany"> <!-- 加载分页控件 --> </div>						
						</div>
						<div id="jsontotable-ReadLearnCenterUser">
							<!-- 加载表格 -->
							<div id="pageTool-ReadLearnCenterUser"> <!-- 加载分页控件 --> </div>						
						</div>						
					</div>
				</div>
				<div id="nested-tabInfo-Read">
					当前选择: <span class="tabName">网院</span>			
				</div>
			</div><!-- containerRead -->	
			
			<div id="container-Sell">
				<!--Horizontal Tab-->
				<div id="Sell">
					<ul class="resp-tabs-list hor_1">
						<li><i class="fa fa-university"></i>网院</li>
						<li><i class="fa fa-graduation-cap"></i>学习中心</li>
						<li><i class="fa fa-home"></i>客户</li>
						<li><i class="fa fa-users"></i>班主任</li>						
					</ul>
					<div class="resp-tabs-container hor_1">
						<div id="jsontotable-SellColleges">
							<!-- 加载表格 -->
							<div id="pageTool-SellColleges"> <!-- 加载分页控件 --> </div>
						</div>	
						
						<div id="jsontotable-SellLearnCenter">
							<!-- 加载表格 -->		
							<div id="pageTool-SellLearnCenter"> <!-- 加载分页控件 --> </div>					
						</div>
						<div id="jsontotable-SellCompany">
							<!-- 加载表格 -->
							<div id="pageTool-SellCompany"> <!-- 加载分页控件 --> </div>						
						</div>
						<div id="jsontotable-SellLearnCenterUser">
							<!-- 加载表格 -->
							<div id="pageTool-SellLearnCenterUser"> <!-- 加载分页控件 --> </div>						
						</div>						
					</div>
				</div>
				<div id="nested-tabInfo-Sell">
					当前选择: <span class="tabName">网院</span>			
				</div>
			</div><!-- containerRead -->							
		</div>
	<jsp:include page="/WEB-INF/jsp/layouts/footer.jsp" />
	</div><!-- main -->	
	
</div>
	

<script type="text/javascript">					
	//清空按钮
	$("#reset").click(function(){
		$("#create_dt_from").val("");
		$("#create_dt_to").val("");
	});
	
	//时间控件
   $("#create_dt_from").datepicker({language: 'zh-CN', autoclose: true, todayHighlight: true,format:'yyyymmdd'});  
   $("#create_dt_to").datepicker({language: 'zh-CN',autoclose: true, todayHighlight: true,format:'yyyymmdd',
       onSelect: function(dateText,inst){  
           var time=dateText.split("-");  
           var year = time[0];  
           var month = time[1];  
           var day = time[2];  
           $("#create_dt_to").datepicker(  
               'option', 'minDate', new Date(year, month - 1, day)  
           );  
       }  
   });  		

	var name = "";
	
	var worldMapContainer01 = document.getElementById('main01');
	var worldMapContainer02 = document.getElementById('main02');
	var worldMapContainer03 = document.getElementById('main03');
	
	//用于使chart自适应高度和宽度,通过窗体高宽计算容器高宽
	var resizeWorldMapContainer = function () {		    
	    worldMapContainer01.style.height = document.body.clientWidth*0.2+'px';
	    worldMapContainer02.style.height = document.body.clientWidth*0.2+'px';
	    worldMapContainer03.style.height = document.body.clientWidth*0.2+'px';
	};
	
	//设置容器高宽
	resizeWorldMapContainer();	
	
	var myChart01 = echarts.init(worldMapContainer01);
	var myChart02 = echarts.init(worldMapContainer02,'macarons');
	var myChart03 = echarts.init(worldMapContainer03);

	
	$("#search").click(function(){			

		/*===========================预报读阶段===========================*/
		//学习中心	
		setPara_FReadLearnCenter = "FReadLearnCenter";
		buildFunc(setPara_FReadLearnCenter);	
		//网院	
		setPara_FReadColleges = "FReadColleges";
		buildFunc(setPara_FReadColleges);
		//客户
		setPara_FReadCompany = "FReadCompany";
		buildFunc(setPara_FReadCompany);	
		//招生顾问
		setPara_FReadSaleman = "FReadSaleman";
		buildFunc(setPara_FReadSaleman);			
		
		/*===========================预报读阶段===========================*/
		//学习中心	
		setPara_FllowLearnCenter = "FllowLearnCenter";
		buildFunc(setPara_FllowLearnCenter);	
		//网院	
		setPara_FllowColleges = "FllowColleges";
		buildFunc(setPara_FllowColleges);
		//客户
		setPara_FllowCompany = "FllowCompany";
		buildFunc(setPara_FllowCompany);	
		//班主任
		setPara_FllowLearnCenterUser = "FllowLearnCenterUser";
		buildFunc(setPara_FllowLearnCenterUser);			
		
		/*===========================报读阶段===========================*/
		//学习中心	
		setPara_ReadLearnCenter = "ReadLearnCenter";
		buildFunc(setPara_ReadLearnCenter);	
		//网院	
		setPara_ReadColleges = "ReadColleges";
		buildFunc(setPara_ReadColleges);
		//客户
		setPara_ReadCompany = "ReadCompany";
		buildFunc(setPara_ReadCompany);	
		//班主任
		setPara_ReadLearnCenterUser = "ReadLearnCenterUser";
		buildFunc(setPara_ReadLearnCenterUser);	
		
		/*===========================缴费阶段===========================*/
		//学习中心	
		setPara_SellLearnCenter = "SellLearnCenter";
		buildFunc(setPara_SellLearnCenter);	
		//网院	
		setPara_SellColleges = "SellColleges";
		buildFunc(setPara_SellColleges);
		//客户
		setPara_SellCompany = "SellCompany";
		buildFunc(setPara_SellCompany);	
		//班主任
		setPara_SellLearnCenterUser = "SellLearnCenterUser";
		buildFunc(setPara_SellLearnCenterUser);		

		/*===========================学员漏斗主表===========================*/	
		setPara_Student = "Student";
		buildFunc(setPara_Student);
	
		//========================================================================			
		
		setTimeout(function() {
			window.onresize = function() {
				resizeWorldMapContainer();
				myChart01.resize();
				myChart02.resize();
				myChart03.resize();
			}
		}, 200);

		myChart01.on('click',function(params) {
			var htmlstr = "";
			for ( var key in params) {
				if (key == "data") {
					htmlstr += "<tr><td>"
							+ params[key]["name"]
							+ "</td>"
							+ "<td>"
							+ params[key]["value"]
							+ "</td></tr>";
					name = params[key]["name"];
				}
			}
			buildFunc("Student");
			switch(name){
				case '预报读':
					$("#container-FRead").show();
					$("#container-Fllow").hide();
					$("#container-Read").hide();
					$("#container-Sell").hide();
					break;
				case '预报读跟踪':
					$("#container-FRead").hide();
					$("#container-Fllow").show();
					$("#container-Read").hide();
					$("#container-Sell").hide();
					break;			
				case '报读':
					$("#container-FRead").hide();
					$("#container-Fllow").hide();
					$("#container-Read").show();
					$("#container-Sell").hide();
					break;			
				case '缴费':
					$("#container-FRead").hide();
					$("#container-Fllow").hide();
					$("#container-Read").hide();
					$("#container-Sell").show();
					break;								
				default:
					$("#container-FRead").show();
					$("#container-Fllow").hide();
					$("#container-Read").hide();
					$("#container-Sell").hide();				
			}
		
		});
	});// #search
	
	$(document).ready(function() {
		$("#search").triggerHandler("click");
		
		$("#container-Fllow").hide();
		$("#container-Read").hide();
		$("#container-Sell").hide();		
		
        //Horizontal Tab
        $('#FRead').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo-FRead');
                var $name = $('span', $info) ;
                $name.text($tab.text());
                $info.show();
            }
        });		
        $('#Fllow').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo-Fllow');
                var $name = $('span', $info) ;
                $name.text($tab.text());
                $info.show();
            }
        });	
        $('#Read').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo-Read');
                var $name = $('span', $info) ;
                $name.text($tab.text());
                $info.show();
            }
        });	
        $('#Sell').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo-Sell');
                var $name = $('span', $info) ;
                $name.text($tab.text());
                $info.show();
            }
        });	        
	});
	/*=========================================公用部分=========================================*/
	var totalCount = 0;//总条数	
	
	function fillData(setStr,str,currentCount,pageSize,total){

		//删除表格数据
		$("div#jsontotable-str-"+setStr).remove();
		$("div#allData").append('<div id="div#jsontotable-'+setStr+'"></div>');
		//添加表格div
		$("div#jsontotable-"+setStr).append('<div id="jsontotable-str-'+setStr+'"></div>');
		//生成表格数据
		$.jsontotable(str, {
			id: "#jsontotable-str-"+setStr,
			className: "table table-bordered table-striped table-container"
		});						
		$("div#pageToolbar-"+setStr).remove();
		//添加表格div
		$("div#pageTool-"+setStr).append('<div id="pageToolbar-'+setStr+'"></div>');
		
		//加载分页工具
		$('#pageToolbar-'+setStr).Paging({pagesize:eval("pageSize_" + setStr),current:((eval("currentCount_" + setStr)/eval("pageSize_" + setStr))+1),count:total,toolbar:true,
			callback:function(page,size,count){
					console.log(arguments);		
					eval("currentCount_" + setStr + "=" +  ((page-1)*size)); 
					eval("pageSize_" + setStr + "=" +  size);
					$('#search').trigger('click');	
				}	
		});			
	};	

	//json传送数据
	function buildFunc(setPara){
		eval('function ' +setPara + '(){'+
				'var jsonDate = {'+
				'"CREATE_DT_FROM" : $("#create_dt_from").val(),'+
				'"CREATE_DT_TO" : $("#create_dt_to").val(),'+
				'"currentCount" : eval("currentCount_'+ setPara + '"),'+
				'"pageSize" : eval("pageSize_'	+ setPara + '")};'+		
				'$.ajax({'+
					'url : "<%=request.getContextPath()%>/ThemeFunnel'+setPara+'",'+			
					'type : "post",'+
					'contentType:"application/json;charset=UTF-8",'+
					'data : JSON.stringify(jsonDate),'+
					'success : function(msg) {'+
						'console.log(msg);'+
						'eval("fillTable_'+ setPara +' (msg)");'+			
					'}});};'	
		);
		eval(setPara+"();");
	};
	
	
	/*=========================================预报读咨询=========================================*/
	/*-----------------------------------------网院-----------------------------------------*/	
	var setPara_FReadColleges = ""; 	
	var pageSize_FReadColleges = 10;//每页行数 
	var currentCount_FReadColleges = 0;//当前条数 	
	
	//填充表格数据 预报读咨询 网院 
	function fillTable_FReadColleges(msg) {
		var str = '[{"Title1": "网院", "Title2": "预报读咨询单数"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_COLLEGES+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].FORECAST_READ_COUNT+'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_FReadColleges,str,eval("currentCount_" + setPara_FReadColleges),eval("pageSize_" + setPara_FReadColleges),totalCount);		
	};
	/*-----------------------------------------学习中心-----------------------------------------*/
	var setPara_FReadLearnCenter = "";
	var pageSize_FReadLearnCenter = 10;//每页行数 
	var currentCount_FReadLearnCenter = 0;//当前条数 	
	
	//填充表格数据 预报读咨询 学习中心 
	function fillTable_FReadLearnCenter(msg) {
		var str = '[{"Title1": "学习中心", "Title2": "预报读咨询单数"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_LEARNCENTER+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].FORECAST_READ_COUNT+'"},';	
			}	
		}		
		str = (str.substring(0,str.length-1))+']';		
		fillData(setPara_FReadLearnCenter,str,eval("currentCount_" + setPara_FReadLearnCenter),eval("pageSize_" + setPara_FReadLearnCenter),totalCount);
	};		
	
	/*-----------------------------------------客户-----------------------------------------*/
	var setPara_FReadCompany = "";
	var pageSize_FReadCompany = 10;
	var currentCount_FReadCompany = 0;	
	//填充表格数据 预报读咨询 学习中心 
	function fillTable_FReadCompany(msg) {
		var str = '[{"Title1": "客户", "Title2": "预报读咨询单数"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_COMPANY+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].FORECAST_READ_COUNT+'"},';	
			}	
		}		
		str = (str.substring(0,str.length-1))+']';		
		fillData(setPara_FReadCompany,str,eval("currentCount_" + setPara_FReadCompany),eval("pageSize_" + setPara_FReadCompany),totalCount);				
	};			
	
	/*-----------------------------------------招生顾问-----------------------------------------*/
	var setPara_FReadSaleman = "";
	var pageSize_FReadSaleman = 10;
	var currentCount_FReadSaleman = 0;	
	//填充表格数据 预报读咨询 学习中心 
	function fillTable_FReadSaleman(msg) {
		var str = '[{"Title1": "招生顾问", "Title2": "预报读咨询单数"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {	
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_SALEMAN+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].FORECAST_READ_COUNT+'"},';	
			}	
		}		
		str = (str.substring(0,str.length-1))+']';	
		fillData(setPara_FReadSaleman,str,eval("currentCount_" + setPara_FReadSaleman),eval("pageSize_" + setPara_FReadSaleman),totalCount);		
			
	};		
	
	/*=========================================预报读跟踪咨询=========================================*/
	/*-----------------------------------------网院-----------------------------------------*/	
	var setPara_FllowColleges = ""; 	
	var pageSize_FllowColleges = 10;//每页行数 
	var currentCount_FllowColleges = 0;//当前条数 	
	
	//网院 
	function fillTable_FllowColleges(msg) {
		var str = '[{"Title1": "网院", "Title2": "跟踪询单数", "Title3": "跟踪次数", "Title4": "下单数"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_COLLEGES+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].FORECAST_READ_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].FLLOW_COUNT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].FORECAST_READ_ORDER_COUNT+'"},';	
			}	
		}	
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_FllowColleges,str,eval("currentCount_" + setPara_FllowColleges),eval("pageSize_" + setPara_FllowColleges),totalCount);		
	};
	/*-----------------------------------------学习中心-----------------------------------------*/
	var setPara_FllowLearnCenter = "";
	var pageSize_FllowLearnCenter = 10;//每页行数 
	var currentCount_FllowLearnCenter = 0;//当前条数 	
	
	//学习中心 
	function fillTable_FllowLearnCenter(msg) {
		var str = '[{"Title1": "学习中心", "Title2": "跟踪询单数", "Title3": "跟踪次数", "Title4": "下单数"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_LEARNCENTER+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].FORECAST_READ_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].FLLOW_COUNT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].FORECAST_READ_ORDER_COUNT+'"},';	
			}	
		}		
		str = (str.substring(0,str.length-1))+']';		
		fillData(setPara_FllowLearnCenter,str,eval("currentCount_" + setPara_FllowLearnCenter),eval("pageSize_" + setPara_FllowLearnCenter),totalCount);
	};		
	
	/*-----------------------------------------客户-----------------------------------------*/
	var setPara_FllowCompany = "";
	var pageSize_FllowCompany = 10;
	var currentCount_FllowCompany = 0;	
	//客户 
	function fillTable_FllowCompany(msg) {
		var str = '[{"Title1": "客户", "Title2": "跟踪询单数", "Title3": "跟踪次数", "Title4": "下单数"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_COMPANY+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].FORECAST_READ_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].FLLOW_COUNT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].FORECAST_READ_ORDER_COUNT+'"},';	
			}	
		}		
		str = (str.substring(0,str.length-1))+']';		
		fillData(setPara_FllowCompany,str,eval("currentCount_" + setPara_FllowCompany),eval("pageSize_" + setPara_FllowCompany),totalCount);				
	};			
	
	/*-----------------------------------------班主任-----------------------------------------*/
	var setPara_FllowLearnCenterUser = "";
	var pageSize_FllowLearnCenterUser = 10;
	var currentCount_FllowLearnCenterUser = 0;	
	//班主任
	function fillTable_FllowLearnCenterUser(msg) {
		var str = '[{"Title1": "班主任", "Title2": "跟踪询单数", "Title3": "跟踪次数", "Title4": "下单数"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_LEARNCENTER_USER+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].FORECAST_READ_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].FLLOW_COUNT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].FORECAST_READ_ORDER_COUNT+'"},';	
			}	
		}	
		str = (str.substring(0,str.length-1))+']';	
		fillData(setPara_FllowLearnCenterUser,str,eval("currentCount_" + setPara_FllowLearnCenterUser),eval("pageSize_" + setPara_FllowLearnCenterUser),totalCount);		
			
	};			

	
	/*=========================================报读=========================================*/
	/*-----------------------------------------网院-----------------------------------------*/	
	var setPara_ReadColleges = ""; 	
	var pageSize_ReadColleges = 10;//每页行数 
	var currentCount_ReadColleges = 0;//当前条数 	
	
	//网院 
	function fillTable_ReadColleges(msg) {
		var str = '[{"Title1": "网院", "Title2": "下单数", "Title3": "总金额", "Title4": "优惠金额", "Title5": "应收总金额", "Title6": "实收总金额"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_COLLEGES+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].READ_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].SELL_TOTAL_AMT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].SELL_FAV_AMT+'",'+
					'"Column5":"'+msg[key].test.resultSet[o].SELL_RECEIVABLE_AMT+'",'+
					'"Column6":"'+msg[key].test.resultSet[o].SELL_PAY_AMT+'"},';	
			}	
		}	
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_ReadColleges,str,eval("currentCount_" + setPara_ReadColleges),eval("pageSize_" + setPara_ReadColleges),totalCount);		
	};
	/*-----------------------------------------学习中心-----------------------------------------*/
	var setPara_ReadLearnCenter = "";
	var pageSize_ReadLearnCenter = 10;//每页行数 
	var currentCount_ReadLearnCenter = 0;//当前条数 	
	
	//学习中心 
	function fillTable_ReadLearnCenter(msg) {
		var str = '[{"Title1": "学习中心", "Title2": "下单数", "Title3": "总金额", "Title4": "优惠金额", "Title5": "应收总金额", "Title6": "实收总金额"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_LEARNCENTER+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].READ_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].SELL_TOTAL_AMT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].SELL_FAV_AMT+'",'+
					'"Column5":"'+msg[key].test.resultSet[o].SELL_RECEIVABLE_AMT+'",'+
					'"Column6":"'+msg[key].test.resultSet[o].SELL_PAY_AMT+'"},';	
			}	
		}			
		str = (str.substring(0,str.length-1))+']';		
		fillData(setPara_ReadLearnCenter,str,eval("currentCount_" + setPara_ReadLearnCenter),eval("pageSize_" + setPara_ReadLearnCenter),totalCount);
	};		
	
	/*-----------------------------------------客户-----------------------------------------*/
	var setPara_ReadCompany = "";
	var pageSize_ReadCompany = 10;
	var currentCount_ReadCompany = 0;	
	//客户 
	function fillTable_ReadCompany(msg) {
		var str = '[{"Title1": "客户", "Title2": "下单数", "Title3": "总金额", "Title4": "优惠金额", "Title5": "应收总金额", "Title6": "实收总金额"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_COMPANY+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].READ_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].SELL_TOTAL_AMT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].SELL_FAV_AMT+'",'+
					'"Column5":"'+msg[key].test.resultSet[o].SELL_RECEIVABLE_AMT+'",'+
					'"Column6":"'+msg[key].test.resultSet[o].SELL_PAY_AMT+'"},';	
			}	
		}		
		str = (str.substring(0,str.length-1))+']';		
		fillData(setPara_ReadCompany,str,eval("currentCount_" + setPara_ReadCompany),eval("pageSize_" + setPara_ReadCompany),totalCount);				
	};			
	
	/*-----------------------------------------班主任-----------------------------------------*/
	var setPara_ReadLearnCenterUser = "";
	var pageSize_ReadLearnCenterUser = 10;
	var currentCount_ReadLearnCenterUser = 0;	
	//填充表格数据 预报读咨询 学习中心 
	function fillTable_ReadLearnCenterUser(msg) {
		var str = '[{"Title1": "班主任", "Title2": "下单数", "Title3": "总金额", "Title4": "优惠金额", "Title5": "应收总金额", "Title6": "实收总金额"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_LEARNCENTER_USER+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].READ_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].SELL_TOTAL_AMT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].SELL_FAV_AMT+'",'+
					'"Column5":"'+msg[key].test.resultSet[o].SELL_RECEIVABLE_AMT+'",'+
					'"Column6":"'+msg[key].test.resultSet[o].SELL_PAY_AMT+'"},';	
			}	
		}		
		str = (str.substring(0,str.length-1))+']';	
		fillData(setPara_ReadLearnCenterUser,str,eval("currentCount_" + setPara_ReadLearnCenterUser),eval("pageSize_" + setPara_ReadLearnCenterUser),totalCount);		
			
	};			
	
	/*=========================================缴费=========================================*/
	/*-----------------------------------------网院-----------------------------------------*/	
	var setPara_SellColleges = ""; 	
	var pageSize_SellColleges = 10;//每页行数 
	var currentCount_SellColleges = 0;//当前条数 	
	
	//填充表格数据 预报读咨询 网院 
	function fillTable_SellColleges(msg) {
		var str = '[{"Title1": "网院", "Title2": "全额单数", "Title3": "全额金额", "Title4": "首年单数", "Title5": "首年金额", "Title6": "分期付款单数", "Title7": "分期付款金额", "Title8": "退费单数", "Title9": "退单金额"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_COLLEGES+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].ALL_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].ALL_SELL_PAY_AMT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].FIRST_COUNT+'",'+
					'"Column5":"'+msg[key].test.resultSet[o].FIRST_SELL_PAY_AMT+'",'+
					'"Column6":"'+msg[key].test.resultSet[o].PART_COUNT+'",'+
					'"Column7":"'+msg[key].test.resultSet[o].PART_SELL_PAY_AMT+'",'+
					'"Column8":"'+msg[key].test.resultSet[o].REFUND_COUNT+'",'+
					'"Column9":"'+msg[key].test.resultSet[o].REFUND_SELL_PAY_AMT+'"},';	
			}	
		}	
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_SellColleges,str,eval("currentCount_" + setPara_SellColleges),eval("pageSize_" + setPara_SellColleges),totalCount);		
	};
	/*-----------------------------------------学习中心-----------------------------------------*/
	var setPara_SellLearnCenter = "";
	var pageSize_SellLearnCenter = 10;//每页行数 
	var currentCount_SellLearnCenter = 0;//当前条数 	
	
	//填充表格数据 预报读咨询 学习中心 
	function fillTable_SellLearnCenter(msg) {
		var str = '[{"Title1": "学习中心", "Title2": "全额单数", "Title3": "全额金额", "Title4": "首年单数", "Title5": "首年金额", "Title6": "分期付款单数", "Title7": "分期付款金额", "Title8": "退费单数", "Title9": "退单金额"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_LEARNCENTER+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].ALL_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].ALL_SELL_PAY_AMT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].FIRST_COUNT+'",'+
					'"Column5":"'+msg[key].test.resultSet[o].FIRST_SELL_PAY_AMT+'",'+
					'"Column6":"'+msg[key].test.resultSet[o].PART_COUNT+'",'+
					'"Column7":"'+msg[key].test.resultSet[o].PART_SELL_PAY_AMT+'",'+
					'"Column8":"'+msg[key].test.resultSet[o].REFUND_COUNT+'",'+
					'"Column9":"'+msg[key].test.resultSet[o].REFUND_SELL_PAY_AMT+'"},';	
			}	
		}			
		str = (str.substring(0,str.length-1))+']';		
		fillData(setPara_SellLearnCenter,str,eval("currentCount_" + setPara_SellLearnCenter),eval("pageSize_" + setPara_SellLearnCenter),totalCount);
	};		
	
	/*-----------------------------------------客户-----------------------------------------*/
	var setPara_SellCompany = "";
	var pageSize_SellCompany = 10;
	var currentCount_SellCompany = 0;	
	//填充表格数据 预报读咨询 学习中心 
	function fillTable_SellCompany(msg) {
		var str = '[{"Title1": "客户", "Title2": "全额单数", "Title3": "全额金额", "Title4": "首年单数", "Title5": "首年金额", "Title6": "分期付款单数", "Title7": "分期付款金额", "Title8": "退费单数", "Title9": "退单金额"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_COMPANY+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].ALL_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].ALL_SELL_PAY_AMT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].FIRST_COUNT+'",'+
					'"Column5":"'+msg[key].test.resultSet[o].FIRST_SELL_PAY_AMT+'",'+
					'"Column6":"'+msg[key].test.resultSet[o].PART_COUNT+'",'+
					'"Column7":"'+msg[key].test.resultSet[o].PART_SELL_PAY_AMT+'",'+
					'"Column8":"'+msg[key].test.resultSet[o].REFUND_COUNT+'",'+
					'"Column9":"'+msg[key].test.resultSet[o].REFUND_SELL_PAY_AMT+'"},';	
			}	
		}			
		str = (str.substring(0,str.length-1))+']';		
		fillData(setPara_SellCompany,str,eval("currentCount_" + setPara_SellCompany),eval("pageSize_" + setPara_SellCompany),totalCount);				
	};			
	
	/*-----------------------------------------班主任-----------------------------------------*/
	var setPara_SellLearnCenterUser = "";
	var pageSize_SellLearnCenterUser = 10;
	var currentCount_SellLearnCenterUser = 0;	
	//填充表格数据 预报读咨询 学习中心 
	function fillTable_SellLearnCenterUser(msg) {
		var str = '[{"Title1": "班主任", "Title2": "全额单数", "Title3": "全额金额", "Title4": "首年单数", "Title5": "首年金额", "Title6": "分期付款单数", "Title7": "分期付款金额", "Title8": "退费单数", "Title9": "退单金额"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_LEARNCENTER_USER+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].ALL_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].ALL_SELL_PAY_AMT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].FIRST_COUNT+'",'+
					'"Column5":"'+msg[key].test.resultSet[o].FIRST_SELL_PAY_AMT+'",'+
					'"Column6":"'+msg[key].test.resultSet[o].PART_COUNT+'",'+
					'"Column7":"'+msg[key].test.resultSet[o].PART_SELL_PAY_AMT+'",'+
					'"Column8":"'+msg[key].test.resultSet[o].REFUND_COUNT+'",'+
					'"Column9":"'+msg[key].test.resultSet[o].REFUND_SELL_PAY_AMT+'"},';	
			}	
		}			
		str = (str.substring(0,str.length-1))+']';	
		fillData(setPara_SellLearnCenterUser,str,eval("currentCount_" + setPara_SellLearnCenterUser),eval("pageSize_" + setPara_SellLearnCenterUser),totalCount);		
			
	};			
	
		

	/*=========================================学员漏斗主表c=========================================*/		
	/*-----------------------------------------漏斗图-----------------------------------------*/	
	var setPara_Student = "";
	var pageSize_Student = 10;
	var currentCount_Student = 0;	

	//填充表格数据 预报读咨询 学习中心 
	function fillTable_Student(msg) {
		// data: ['预报读','预报读跟踪','报读','缴费']
		var strFunnel = '[';
		var strGauge = '[';
		var strWant = '[';
		var strSuccess = '[';
		var strLost = '[';
		for(var key in msg){	
			for ( var o in msg[key].test.resultSet) {	
				strFunnel +='{"value":"'+msg[key].test.resultSet[o].FUNNEL_FORECAST_READ_COUNT+'","name":"预报读"},'+
					'{"value":"'+msg[key].test.resultSet[o].FUNNEL_FLLOW_COUNT+'","name":"预报读跟踪"},'+
					'{"value":"'+msg[key].test.resultSet[o].FUNNEL_READ_COUNT+'","name":"报读"},'+
					'{"value":"'+msg[key].test.resultSet[o].FUNNEL_SELL_COUNT+'","name":"缴费"}]';	
		
				switch(name){
					case '预报读':
						strGauge += '{"value":"'+msg[key].test.resultSet[o].FUNNEL_FORECAST_READ_PER + '","name":"预报读转化率"}]';
						break;
					case '预报读跟踪':
						strGauge += '{"value":"'+msg[key].test.resultSet[o].FUNNEL_FLLOW_PER + '","name":"预报读跟踪转化率"}]';
						break;
					case '报读':
						strGauge += '{"value":"'+msg[key].test.resultSet[o].FUNNEL_READ_PER + '","name":"报读转化率"}]';
						break;
					case '缴费':
						strGauge += '{"value":"'+msg[key].test.resultSet[o].FUNNEL_SELL_PER + '","name":"缴费转化率"}]';
						break;					
					default:	
						strGauge += '{"value":"'+msg[key].test.resultSet[o].FUNNEL_FORECAST_READ_PER + '","name":"预报读转化率"}]';
				};
				
				strWant += msg[key].test.resultSet[o].FUNNEL_SELL_WANT + 
						',' + msg[key].test.resultSet[o].FUNNEL_READ_WANT + 
						',' + msg[key].test.resultSet[o].FUNNEL_FLLOW_WANT + 
						',' + msg[key].test.resultSet[o].FUNNEL_FORECAST_READ_WANT +']';
				
				strSuccess += msg[key].test.resultSet[o].FUNNEL_SELL_SUCCESS + 
						',' + msg[key].test.resultSet[o].FUNNEL_READ_SUCCESS + 
						',' + msg[key].test.resultSet[o].FUNNEL_FLLOW_SUCCESS + 
						',' + msg[key].test.resultSet[o].FUNNEL_FORECAST_READ_SUCCESS +']';	
						
				strLost += msg[key].test.resultSet[o].FUNNEL_SELL_LOST + 
						',' + msg[key].test.resultSet[o].FUNNEL_READ_LOST + 
						',' + msg[key].test.resultSet[o].FUNNEL_FLLOW_LOST + 
						',' + msg[key].test.resultSet[o].FUNNEL_FORECAST_READ_LOST +']';							
			}	
		}		
	//生成漏斗图
	myChart01.setOption(option = {			
		    tooltip: {
		        trigger: 'item',
		        formatter: "{b} : {c}"
		    },
		    toolbox: {		    			    
		        orient:'vertical',
		        feature: {
		            dataView: {readOnly: false},
		            restore: {},
		            saveAsImage: {}
		        }
		    },
		    legend: {
		        data: ['预报读','预报读跟踪','报读','缴费']
		    },
		    calculable: true,
		    series: [
		        {
		            name:'漏斗图',
		            type:'funnel',
		            left: '1%',
		            top: 60,				     
		            bottom: 60,
		            width: '80%',
		            sort: 'descending',
		            gap: 10,
		            label: {
		                normal: {
		                    show: true,
		                    position: 'inside',
		                    formatter: "{b} : {c}"
		                },
		                emphasis: {
		                    textStyle: {
		                        fontSize: 20
		                    }
		                }
		            },
		            labelLine: {
		                normal: {
		                    length: 10,
		                    lineStyle: {
		                        width: 1,
		                        type: 'solid'
		                    }
		                }
		            },
		            itemStyle: {
		                normal: {
		                    borderColor: '#fff',
		                    borderWidth: 1
		                }
		            },
		            data: eval("("+strFunnel+ ")")
		        }
		    ]
		});
		//生成仪表盘
		myChart02.setOption(option = {
			tooltip : {
		        formatter: "{a} <br/>{b} : {c}%"
		    },
		    toolbox: {		    			    
		        feature: {
		            dataView: {readOnly: false},
		            restore: {},
		            saveAsImage: {}
		        }
		    },
		    series: [
		        {
		            name: '业务指标',
		            type: 'gauge',
		            detail: {formatter:'{value}%'},
		            data: eval("("+strGauge+ ")")
		        }
		    ]
		});	
		//生成条形图
		myChart03.setOption(option = { 
		    tooltip : {
		        trigger: 'axis',
		        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
		            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
		        }
		    },
		    toolbox: {		    			    
		        left:'left',
		        feature: {
		            dataView: {readOnly: false},
		            restore: {},
		            saveAsImage: {}
		        }
		    },		    
		    legend: {
		        data:['意向', '成功', '流失']
		    },
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    xAxis : [
		        {
		            type : 'value'
		        }
		    ],
		    yAxis : [
		        {
		            type : 'category',
		            axisTick : {show: false},
		            data : ['缴费','报读','预报读跟踪','预报读']
		        }
		    ],
		    series : [
		        {
		            name:'成功',
		            type:'bar',
		            label: {
		                normal: {
		                    show: true,
		                    position: 'inside'
		                }
		            },
		            data:eval("("+strSuccess+ ")")
		        },
		        {
		            name:'意向',
		            type:'bar',
		            stack: '总量',
		            label: {
		                normal: {
		                    show: true
		                }
		            },
		            data:eval("("+strWant+ ")")
		        },
		        {
		            name:'流失',
		            type:'bar',
		            stack: '总量',
		            label: {
		                normal: {
		                    show: true,
		                    position: 'left'
		                }
		            },
		            data:eval("("+strLost+ ")")
		        }
		    ]
        });//myChart03.setOption
	};
	</script>
</body>

</html>
