<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="assets/css/index.css">

<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap-responsive.css">
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap-responsive.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/ProductM.css">
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap-combined.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/ProductM.css">
<link rel="stylesheet" type="text/css" href="assets/css/UserM.css">
<script type="text/javascript" src="assets/js/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/npm.js"></script>
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- TemplateBeginEditable name="doctitle" -->
<title>Line friend管理员--消息通知</title>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" -->
<!-- TemplateEndEditable -->
<script>

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
	<ul class="nav nav-tabs" contenteditable="true">
		<li><a href="#">Line friend后台管理系统</a> </li>
		<li><a href="ProductManage.html">首页</a></li>
		<li class="active"><a href="#">通知</a></li>
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
						 <!-- <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-355567" href="#userM"> -->
						 <a href="UserManage.html" style="margin-left: 15px;margin-right: 50px;">用户管理<img src="assets/homeImages/user.png"></a>
					</div>
					<div id="userM" class="accordion-body collapse">
						<div class="accordion-inner">
							<a href="">用 户 查 询<img src="assets/homeImages/point.png"></a><br>
							<a href="">注 销 用 户<img src="assets/homeImages/point.png"></a>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						 <!-- <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-355567" href="#productM"> -->
						 <a href="productManage.html" style="margin-left: 15px;margin-right: 50px;">商品管理<img src="assets/homeImages/pro.png"></a>
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
						 <a href="ProductManage.html" style="margin-left: 15px;margin-right: 50px;">订单管理<img src="assets/homeImages/order.png"></a>
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
	<div class="navbar-inner" style="margin-top: 65px;">
					<h2 style="color: red;text-align: center;">通知公告</h2>
							<div class="panel-group" id="panel-478535">
								<div class="panel panel-default" style="margin-bottom:30px; ">
									<div class="panel-heading">
										<a class="panel-title" data-toggle="collapse" data-parent="#panel-478535" href="#tz4" contenteditable="true" style="font-size: 22px;">2017年6月25日</a>
									</div>
									<div id="tz4" class="panel-collapse in" style="height: auto;">
										<div class="panel-body" contenteditable="true" style="font-size: 18px;">2017年6月25日--请大家积极工作，共同进步！！！</div>
									</div>
								</div>
								<div class="panel panel-default" style="margin-bottom:30px; ">
									<div class="panel-heading">
										<a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-478535" href="#tz3" contenteditable="true" tyle="font-size: 22px;">2017年6月24日</a>
									</div>
									<div id="tz3" class="panel-collapse collapse" style="height: 0px;">
										<div class="panel-body" contenteditable="true" style="font-size: 18px;">2017年6月24日--请大家积极工作，共同进步！！！</div>
									</div>
								</div>
								<div class="panel panel-default" style="margin-bottom:30px; ">
									<div class="panel-heading">
										<a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-478535" href="#tz3" contenteditable="true" tyle="font-size: 22px;">2017年6月23日</a>
									</div>
									<div id="tz3" class="panel-collapse collapse" style="height: 0px;">
										<div class="panel-body" contenteditable="true" style="font-size: 18px;">2017年6月23日--请大家积极工作，共同进步！！！</div>
									</div>
								</div>
								<div class="panel panel-default" style="margin-bottom:30px; ">
									<div class="panel-heading">
										<a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-478535" href="#tz3" contenteditable="true" tyle="font-size: 22px;">2017年6月22日</a>
									</div>
									<div id="tz3" class="panel-collapse collapse" style="height: 0px;">
										<div class="panel-body" contenteditable="true" style="font-size: 18px;">2017年6月22日--请大家积极工作，共同进步！！！</div>
									</div>
								</div>
								<div class="panel panel-default" style="margin-bottom:30px; ">
									<div class="panel-heading">
										<a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-478535" href="#tz3" contenteditable="true" tyle="font-size: 22px;">2017年6月21日</a>
									</div>
									<div id="tz3" class="panel-collapse collapse" style="height: 0px;">
										<div class="panel-body" contenteditable="true" style="font-size: 18px;">2017年6月21日--请大家积极工作，共同进步！！！</div>
									</div>
								</div>
							</div>	
	</div>

	</div>				
</div>
</body>
</html>