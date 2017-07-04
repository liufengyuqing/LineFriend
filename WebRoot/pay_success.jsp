<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Line friend零食铺-支付成功</title>
		<link rel="stylesheet" href="assets/css/buy.css" charset="utf-8" />
		<link rel="stylesheet" href="assets/css/Header.css" type="text/css" />
		<link rel="stylesheet" href="assets/css/Search.css" type="text/css" />
		<link rel="stylesheet" href="assets/css/BT.css" type="text/css" />
		<link rel="stylesheet" href="assets/css/Footer.css" type="text/css" />
		<link rel="stylesheet" href="assets/css/UserCart.css" type="text/css" />
		<link rel="stylesheet" type="text/css" href="assets/css/pay.css">
		<script language="JavaScript" src="assets/js/backTop.js"
			type="text/javascript" charset="utf-8"></script>
		<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
		<script language="JavaScript" src="assets/js/addToFavorite.js"
			type="text/javascript" charset="utf-8"></script>
		<script language="JavaScript" src="assets/js/AdminEmail.js"
			type="text/javascript" charset="utf-8"></script>
		<script language="JavaScript" src="assets/js/choosechange.js"
			type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript"
			src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
		<script type="text/javascript" src="assets/js/cart.js"
			language="javascript"></script>
	</head>
	<body>
		<div id="header">
			<div class="header1">
				<b></b><a rel="sidebar" onclick="addToFavorite()" href="#"><img
						style="position: relative; top: 2px;"
						src="assets/homeImages/love2.jpg" height="12" width="12" />&nbsp;&nbsp;收藏LINE
					FRIEND</a>
			</div>
			<div class="header2">
				<nav class="nav">
				<ul class="nav__menu">
				
					<%
						String email = (String) session.getAttribute("email");
						if (email == null) {
					%>
					<li class="nav__menu-item">
						<a href="UserLogin.jsp">你好！请登录</a>
					</li>
					<li class="nav__menu-item">
						<a href="UserRegister.jsp">免费注册</a>
					</li>
					<%
						} else {
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
					
					
					<li class="nav__menu-item">
						客户服务^
						<ul class="nav__submenu">
							<li class="nav__submenu-item">
								<a href="UserQuestion.html">常见问题</a>
							</li>
							<li class="nav__submenu-item">
								<a href="javascript:AdminEmail()">客服邮箱</a>
							</li>
						</ul>
					</li>
					<li class="nav__menu-item">
						网站导航^
						<ul class="nav__submenu">
							<li class="nav__menu-item">
								<a href="home.jsp">网站主页</a>
							</li>
							<li class="nav__menu-item">
								<a href="GoodsSearch.html">商品检索</a>
							</li>
							<li class="nav__menu-item">
								<a href="User.html">用户管理</a>
							</li>
							<li class="nav__menu-item">
								<a href="userCart.html">购物车</a>
							</li>
							<li class="nav__menu-item">
								<a href="UserOrder.html">我的订单</a>
							</li>
							<li class="nav__menu-item">
								<a href="UserFavorite.html">我的收藏</a>
							</li>
						</ul>
					</li>
				</ul>
				</nav>
			</div>
		</div>


		<!--支付成功-->
		<div id="headpay">
			<img src="assets/homeImages/logo.png">
			<div>
				支付结果
			</div>
		</div>

		<div id="pay_re">
			<div>
				本次交易成功！感谢您对Line friend零食铺的支持！
			</div>
			<img src="assets/homeImages/rig.png">
		</div>
		<div id="imga">
			<a href="userCart.html"><img src="assets/homeImages/bkcart.png"
					width="180px" height="120px">
			</a>
			<a href="home.jsp"><img src="assets/homeImages/logo.png"
					width="250px" height="120px">
			</a>
		</div>
		<p align="center" id="cr">
			Copyright&copy;&nbsp;&nbsp;2016-2017&nbsp;&nbsp;Line
			friend零食铺&nbsp;SC.com&nbsp;&nbsp;版权所有
		</p>
		<!--bottom-->
	</body>
</html>