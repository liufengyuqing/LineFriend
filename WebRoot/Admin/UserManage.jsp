<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/birthday.js"></script>
<script type="text/javascript" src="assets/js/dialog.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="assets/css/index.css" />
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/ProductM.css" />

<link rel="stylesheet" type="text/css" href="assets/css/bootstrap-combined.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/ProductM.css" />
<link rel="stylesheet" type="text/css" href="assets/css/UserM.css" />

<!--从前台获取查询参数并转到后台处理-->
<script>
<!--信息查询-->
		function SearchUser(){
			//获取输入框和下拉框狂的值
			//alert(1);
			//var tiaojian=document.formSy.getElementsByName("condtion").value;
			//var sel2=document.formSy.getElementsByName("sel2").value;
			//var condtion=document.formSy.condtion.value;
			//var select=document.formSy.select.value;
			
			var select=document.getElementById("select").value;
			alert("select:"+select);
			var condtion=document.getElementById("condtion").value;
			alert("condtion:"+condtion);
			if(select==1){
				alert("将搜索所有用户信息！");
				window.location.href="userSearch.action?"+"condtion="+condtion+"&select="+select;
			}
			else if(select==2){
				var Regex = /^(?:\w+\.?)*\w+@(?:\w+\.)*\w+$/;
				if(Regex.test(condtion)){
					alert("邮箱格式正确，正在查询!");
					window.location.href="userSearch.action?"+"condtion="+condtion+"&select="+select;
				}else{
					alert("邮箱格式不正确，请重新输入!");
				}
				//alert("查询全部信息1");
			}
			else if(select==3){
				if(condtion!="男" &&condtion!="女"){
					alert("请输入男或者女");
				}else{
					alert("正在查询！请等待！");
					window.location.href="userSearch.action?"+"condtion="+condtion+"&select="+select;
				}
					//alert("查询全部信息3");
			}
			else if(select==4){
				alert("用户ID");
				window.location.href="userSearch.action?"+"condtion="+condtion+"&select="+select;
			}
			else if(select==5){
				alert("按用户昵称查询，正在查询");
				window.location.href="userSearch.action?"+"condtion="+condtion+"&select="+select;
			}
			else if(select==6){
				alert("按年龄查询！");
				window.location.href="userSearch.action?"+"condtion="+condtion+"&select="+select;
			}

			//window.location.href="userSearch.action?"+"condtion="+condtion+"&select="+select;
			
		}
	
</script>

 <script type="text/javascript">
function gotoUpdate(r){
	//var i=r.parentNode.parentNode.rowIndex;
	//alert("行号为="+i);
	alert("jajd");
	var rownum=r.parentNode.parentNode.rowIndex;
	alert("hanghao="+rownum);
	var tab=document.getElementById("tab");
	var id=tab.rows[rownum].cells[0].innerHTML;
	
	
	alert("user="+id);
	window.location.href="Updateuser.action?id="+id+"#panel-Update";
	alert(成功);
}
</script>
<!-- 从页面获取userID并传到后台进行action处理之后返回 #panel-Udelect-->
<script type="text/javascript">
	<!--信息修改数据提交
	function trueUpdateUser(){
		var id=document.getElementById("id").value;
		var NnickName=document.getElementById("NewnickName").value;
		var NtrueName=document.getElementById("NewtrueName").value;
		var Nsex=document.getElementById("Newsex").value;
		var NcardId=document.getElementById("NewcardId").value;
		var Nyear=document.getElementById("selYear").value;
		var Nmouth=document.getElementById("selMonth").value;
		var Nday=document.getElementById("selDay").value;
		alert("更新信息："+id+"-"+NnickName+"-"+NtrueName+"-"+Nsex+"-"+NcardId+"-"+Nyear+"-"+Nmouth+"-"+Nday);
		var reg=/^[1-9]{1}[0-9]{14}$|^[1-9]{1}[0-9]{16}([0-9]|[xX])$/;
		if(reg.test(NcardId)){
			alert("输入的是身份证号");
			window.location.href="UpdateUserInfo.action?id="+id+"&nickName="+NnickName+"&trueName="+NtrueName+"&sex="+Nsex+"&cardId="+NcardId+"&year="+Nyear+"&mouth="+Nmouth+"&day="+Nday;
			alert("该用户信息已修改!");
			
		}
		else{
			alert("请输入正确的身份证号");
		}
		
	}
</script>

	
<!-- TemplateBeginEditable name="doctitle" -->
<title>Line friend管理员--用户管理</title>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" -->
<!-- TemplateEndEditable -->
<script >

$(document).ready(function() {

if(location.hash) {

$('a[href=' + location.hash + ']').tab('show');

}

$(document.body).on("click", "a[data-toggle]", function(event) {

location.hash = this.getAttribute("href");

});

});

$(window).on('popstate', function() {

var anchor = location.hash || $("a[data-toggle=tab]").first().attr("href");

$('a[href=' + anchor + ']').tab('show');

});

</script>
	</head>
<body>
	
<div id="head">
	<ul class="nav nav-tabs" contenteditable="false" style="background-color: #000;">
		<li><a href="#">Line friend后台管理系统</a> </li>
		<li class="active"><a href="#">首页</a></li>
		<li><a href="AdminMsg.jsp">通知</a></li>
		<li class="dropdown pull-right"><a class="dropdown-toggle" data-toggle="dropdown" href="#">菜单</a>
		<ul class="dropdown-menu">
			<li><a href="#">Line friend主页</a></li>
			<li class="divider">&nbsp;</li>
			<li><a href="#">退出</a></li>
		</ul>
		</li>
	</ul>

</div>

<div id="width">
	<div id="left">
		<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="accordion" id="accordion-355567">
				<div class="accordion-group">
					<div class="accordion-heading">
						 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-355567" href="#userM">
						 用户管理<img src="assets/homeImages/user.png"></a>
					</div>
					<div id="userM" class="accordion-body  in collapse">
						<div class="accordion-inner">
							<a href="#panel-Userach">用 户 查 询<img src="assets/homeImages/point.png"></a><br>
							<a href="#panel-Udelect">用户信息更新<img src="assets/homeImages/point.png"></a>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						 <a href="ProductManage.jsp" style="margin-left: 15px;margin-right: 50px;">商品管理<img src="assets/homeImages/pro.png"></a>
					</div>
					<div id="productM" class="accordion-body collapse">
						<div class="accordion-inner">
							<a href="">商 品 上 架&nbsp;&nbsp;&nbsp;&nbsp;<img src="assets/homeImages/point.png"></a><br>
							<a href="">商 品 下 架&nbsp;&nbsp;&nbsp;&nbsp;<img src="assets/homeImages/point.png"></a><br>
							<a href="">商品信息修改<img src="assets/homeImages/point.png"></a><br>
							<a href="">商品库存管理<img src="assets/homeImages/point.png"></a><br>
							<a href="">商 品 检 索&nbsp;&nbsp;&nbsp;&nbsp;<img src="assets/homeImages/point.png"></a><br>
							<a href="">商 品 折 扣&nbsp;&nbsp;&nbsp;&nbsp;<img src="assets/homeImages/point.png"></a><br>
							<a href="">商 品 分 类&nbsp;&nbsp;&nbsp;&nbsp;<img src="assets/homeImages/point.png"></a><br>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						 <!-- <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-355567" href="#orderM"> -->
						 <a href="OrderManage.jsp" style="margin-left: 15px;margin-right: 50px;">订单管理<img src="assets/homeImages/order.png"></a>
					</div>
					<div id="orderM" class="accordion-body collapse">
						<div class="accordion-inner">
							<a href="">订 单 检 索</a><br>
							<a href="">订 单 状 态 修 改</a><br>
							<a href="">作 废 订 单</a><br>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
	<div id="right">
		<div class="tabbable" id="tabs-219574">
				<ul class="nav nav-tabs">
					<li class="active">
						<a contenteditable="false" data-toggle="tab" href="#panel-Userach">用户查询</a>
					</li>
					<li>
						<a contenteditable="false" data-toggle="tab" href="#panel-Update">用户信息修改</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-Userach">
						<form class="navbar-form navbar-left" role="search" id="formSy">
							<label style="display: inline-block;margin-top:10px;">&nbsp;&nbsp;&nbsp;&nbsp;请输入查询内容:</label>			
							
								<select class="selectSy" name="select" id="select" style="margin-top: 5px;">
											<option value="1">
												全部用户
											</option>
											<option value="2">
												用户邮箱
											</option>
											<option value="3">
												性别
											</option>
											<option value="4">
												用户ID
											</option>
											
											<option value="5">
												用户昵称
											</option>
											<option value="6">
												年龄
											</option>
								</select>	
								<input type="text" class="form-control"  style="margin-top: -2px;" placeholder="请输入查询内容" id="condtion" name="condtion" >	
								<input type="button"  class="btn" value="查询"  onclick="SearchUser();" style="margin-top: -2px;height: 30px;width: 100px;">
						</form>
						<div id="tbShow">
								<div class="clean"></div>
									<table class="table" contenteditable="false" id="tab">
											<thead>
												<tr>
													<th style="width: 10%;">用户ID</th>
													<th style="width: 10%;">注册邮箱</th>
													<th style="width: 10%;">昵称</th>
													<th style="width: 10%;">真实姓名</th>
													<th style="width: 10%;">最后一次登录时间</th>
													<th style="width: 10%;">最后一次登录IP</th>
													<th style="width: 5%;">性别</th>
													<th style="width: 10%;">身份证号</th>
													<th style="width: 10%;">出生日期</th>
													<th style="width: 15%;">操作</th>
												</tr>
											</thead>
											<tbody>
											<!--  动态加载-->
											<c:forEach items="${userList}" var="user" varStatus="status">
										
												<tr>
													<td>${user.id}</td>
													<td>${user.email}</td>
													<td>${user.nickName}</td>
													<td>${user.trueName}</td>
													<td>${user.last_login_time}</td>
													<td>${user.last_login_ip}</td>
													<td>${user.sex}</td>
													<td>${user.cardId}</td>
													<td>${user.year}/${user.mouth}/${user.day}</td>
													
													<td><a href="UserDelect.action?id=${user.id}"><input type="button"  class="btn" value="注销" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
																									
													<!-- <a href="Updateuser.action?id=${user.id}"><input type="button"  class="btn" value="修改" /></a> -->
													<input type="button"  class="btn" onclick="gotoUpdate(this)" value="修改" />
													</td>
													
												</tr>
								
											</c:forEach></tbody>
									</table>
						</div>

					</div><!--面板一-->


					<div class="tab-pane" id="panel-Update">
					<div id="UpdatePanl">
						<form class="navbar-form">
						
							<div class="inputDiv"><label class="labelSy">用&nbsp;&nbsp;户&nbsp;&nbsp;ID：</label>
							<input  type="text" id="id" value=${user.id} onfocus=this.blur() style="height: 40px;width: 250px;margin-top: -10px;">
							</div>
						
							<div class="inputDiv"><label class="labelSy">昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：</label><input  type="text" id="NewnickName" value="${user.nickName}"   style="height: 40px;width: 250px;margin-top: -10px;"></div>
						
							<div class="inputDiv"><label class="labelSy">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</label>
							<select id="Newsex"  style="height: 40px;width: 250px;margin-top: -10px;">
								<option value="男">男</option>
								<option value="女">女</option>
							</select>
							<!-- <span class="spanSy" id="sex">${user.sex}</span> --></div>

							<div class="inputDiv"><label class="labelSy">真实姓名：</label><input type="text" id="NewtrueName" value="${user.trueName}"   style="height: 40px;width: 250px;margin-top: -10px;"></div>
							
							
							<div class="inputDiv"><label class="labelSy">身份证号：</label><input type="text" id="NewcardId" value="${user.cardId}"   style="height: 40px;width: 250px;margin-top: -10px;"></div>

							<div class="inputDiv"><label class="labelSy">出生日期：</label><!-- <input  type="text" name="Newyear" style="height: 30px;width: 70px;margin-top: -5px;">&nbsp;&nbsp;年
														  		 				  <input type="text" name="Newmouth" style="height: 30px;width: 70px;margin-top: -5px;">&nbsp;&nbsp;月
																 				  <input type="text" name="Newday" style="height: 30px;width: 70px;margin-top: -5px;">&nbsp;&nbsp;日</div> -->
																 				<select id="selYear" style="width: 120px;margin-top: -5px;height: 40px"></select>年
																				<select id="selMonth" style="width: 120px;margin-top: -5px; height: 40px;"></select>月
																				<select id="selDay"  style="width: 120px;margin-top: -5px;height: 40px;"></select>日
																				
							<div class="inputDiv"><input type="button"  class="btn" value="确认"  onclick="trueUpdateUser()" style="height: 40px;width: 150px;margin-left:500px;margin-top: 30px;"></div>		
						
						</form>
					</div>
					</div>
				</div>
			</div>
		</div>
	
	</div>

<script type="text/javascript">
var selYear = window.document.getElementById("selYear");
var selMonth = window.document.getElementById("selMonth");
var selDay = window.document.getElementById("selDay");
// 新建一个DateSelector类的实例，将三个select对象传进去
new DateSelector(selYear, selMonth, selDay, 1995, 1, 17);
// 也可以试试下边的代码
// var dt = new Date(2004, 1, 29);
// new DateSelector(selYear, selMonth ,selDay, dt);
</script>

</body>
	
</html>
