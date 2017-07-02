<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<base href="<%=basePath%>">
	<title>Line friend零食铺——确认订单</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<link rel="stylesheet" href="assets/css/buy.css" charset="utf-8"/>
<link rel="stylesheet" href="assets/css/Header.css" type="text/css" />
<link rel="stylesheet" href="assets/css/order_css.css" type="text/css" />
<script language="JavaScript" src="assets/js/backTop.js"
	type="text/javascript" charset="utf-8"></script>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script language="JavaScript" src="assets/js/addToFavorite.js"
	type="text/javascript" charset="utf-8"></script>
<script language="JavaScript" src="assets/js/choosechange.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="assets/js/cart.js" language="javascript"></script>

		<!-- ......................................... -->
		<!-- layer,jquery-1.8.3 这两个js有顺序的 必须先引入jquery1.8.3 -->
		<script src="assets/js/jquery-1.8.3.min.js"></script>
		<script src="assets/js/layer.js"></script>
		<!-- 调用浮动窗口 -->
		<script type="text/javascript" src="assets/js/IMChat.js"></script>
		<!-- ....................................... -->

</head>
<body>
	<div id="header">
  <div class="header1"> <br /><a rel="sidebar" onClick="addToFavorite()" href="#"><img
				style="position: relative; top: 2px;" src="assets/homeImages/love2.jpg"
				height="12" width="12" />&nbsp;&nbsp;收藏LINE FRIEND</a> 
	&nbsp;<a rel="sidebar" href="javascript:IMChat();">实时聊天吐槽墙</a>			
				
				</div>
  <div class="header2">
    <nav class="nav">
      <ul class="nav__menu">
      				<%
					
						//String email = request.getParameter("email");
						String email=(String)session.getAttribute("email");
						if (email == null) {
					%>
					<li class="nav__menu-item">
						<a href="page/UserLogin.html">你好！请登录</a>
					</li>
					<li class="nav__menu-item">
						<a href="page/UserRegister.jsp">免费注册</a>
					</li>
					<%
						}else {
							%>
					<li class="nav__menu-item">
						你好！${email}
					</li>
					<li class="nav__menu-item">
						<a href="logout.action">退出登录</a>
					</li>
					<li class="nav__menu-item">
						<a href="myorderlist">我的订单</a>
					</li>
					<% 
					}
					%>
<!--<li class="nav__menu-item"><a href="UserLogin.html">你好！请登录</a></li>
        <li class="nav__menu-item"><a href="UserRegister.html">免费注册</a></li>
        <li class="nav__menu-item"><a href="UserOrder.html">我的订单</a></li>
-->
        	<li class="nav__menu-item">客户服务^
          <ul class="nav__submenu">
            <li class="nav__submenu-item"><a href="UserQuestion.html">常见问题</a></li>
            <li class="nav__submenu-item"><a href="javascript:AdminEmail()">客服邮箱</a></li>
          </ul>
        </li>
        <li class="nav__menu-item">网站导航^
          <ul class="nav__submenu">
            <li class="nav__menu-item"><a href="home.jsp">网站主页</a></li>
            <li class="nav__menu-item"><a href="GoodsSearch.html">商品检索</a></li>
            <li class="nav__menu-item"><a href="User.html">用户管理</a></li>
            <li class="nav__menu-item"><a href="userCart.html">购物车</a></li>
            <li class="nav__menu-item"><a href="UserOrder.html">我的订单</a></li>
            <li class="nav__menu-item"><a href="UserFavorite.html">我的收藏</a></li>
          </ul>
        </li>
      </ul>
    </nav>
  </div>
</div>
<!--head列表-->
<!--详细订单信息-->
<!---->
<div id="hdpay">
	<img src="assets/homeImages/logo.png" id="logoimg">
	<ul>
		<li>1.选择商品</li>
		<li id="li-sy">2.确认订单</li>
		<li>3.支付到支付宝</li>
		<li>4.确认收货</li>
	</ul>
</div>
<div id="tableform">
	<form>
	<span>确认收货地址</span>
		<div id="alladd"><hr>
			<!--<div>
				<input type="radio" name="address" value="add1">
				陕西省咸阳市杨陵区李台街道 西北农林科技大学南校区(张志忠 收) 185XXXX2326
			</div>
			
			<div>
				<input type="radio" name="address" value="add2">
				陕西省咸阳市杨陵区李台街道 西北农林科技大学北校区(王苏杰 收) 185XXXX8888
			</div>

			<div>
				<input type="radio" name="address" value="add3">
				陕西省咸阳市杨陵区李台街道 西北农林科技大学北校区信息工程学院(马学倩 收)  185XXXX6666
			</div>-->
			
			
			
			<!-- 动态页面代码 -->
			
			
			<c:forEach items="${addList}" var="item" varStatus="status">
				<div>
					<input type="radio" name="address" value="add1">
					(${item.receive_name}&nbsp;收)&nbsp;${item.province}省&nbsp;${item.city}市&nbsp;${item.district}区&nbsp;${item.full_address}&nbsp;${item.phone}
				</div>
			</c:forEach>
			
			

			<hr>
		</div>
	<div id="orderinfo"><span>确认订单信息</span><hr>
		<table id="tb">
			<tr id="tbhead">
				<th id="th1">商品信息</th>
				<th id="th2">单价</th>
				<th id="th3">数量</th>
				<th id="th4">小计</th>
			</tr>
			
			
			
			
			<tr class="trwidth">
				<td><div class="goods_show"><a href="Goods.html"><img src="assets/homeImages/goods/goods1.jpg" id="goodsimg"></a>
		      <p> 泰国芒果干 来自泰国友人的问候</p></a></div></td>
				<td>32.00</td>
				<td>1</td>
				<td>32.00</td>
			</tr>
			
			
			
			
			<!--
			<tr class="trwidth">
				<td><div class="goods_show"><a href="Goods.html"><img src="assets/homeImages/goods/goods6.jpg" id="goodsimg"><p>夏威夷果奶油味坚果零食</p></a></div></td>
				<td>52.50</td>
				<td>2</td>
				<td>105.00</td>
			</tr><!--静态页面代码-->
			<!-- 动态页面代码 -->
			</table><hr>
	</div>
	<div id="summ">共137.00¥</div>
	<div id="ordershow">
		<div id="sure">
			订单金额:137.00¥<br>
			寄送至：西北农林科技大学北校区信息工程学院<br>
			收货人:马学倩 185XXXX6666<br>
		</div>
		
	  <!-- <input type="submit" name="sum" value="" id="inputs"> -->
	  <a href="pay_success.html" id="submit"><img src="assets/homeImages/submit.jpg"></a>
	</div>
	</form>
	<div id="cp">Copyright&reg 2016-2017 Line friend零食铺</div>
</div>
	
</body>
</html>