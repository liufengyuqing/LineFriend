<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<title>Line friend零食铺-我的购物车</title>
		<link rel="stylesheet" href="assets/css/buy.css" charset="utf-8" />
		<link rel="stylesheet" href="assets/css/Header.css" type="text/css" />
		<link rel="stylesheet" href="assets/css/Search.css" type="text/css" />
		<link rel="stylesheet" href="assets/css/BT.css" type="text/css" />
		<link rel="stylesheet" href="assets/css/Footer.css" type="text/css" />
		<link rel="stylesheet" href="assets/css/UserCart.css" type="text/css" />
		<link rel="stylesheet" type="text/css" href="assets/css/cartStyle.css">
		<script language="JavaScript" src="assets/js/cart.js"
			type="text/javascript" charset="utf-8"></script>
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
	</head>
	<body>
		<div id="header">
			<div class="header1">
				n<a rel="sidebar" onclick=
	addToFavorite();
href="#"><img
						style="position: relative; top: 2px;"
						src="assets/homeImages/love2.jpg" height="12" width="12" />&nbsp;&nbsp;收藏LINE
					FRIEND</a>
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
						<a href="UserLogin.jsp">你好！请登录</a>
					</li>
					<li class="nav__menu-item">
						<a href="UserRegister.jsp">免费注册</a>
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
					<!--<li class="nav__menu-item">
						<a href="UserLogin.html">你好！请登录</a>
					</li>
					<li class="nav__menu-item">
						<a href="UserRegister.html">免费注册</a>
					</li>
					<li class="nav__menu-item">
						<a href="UserOrder.html">我的订单</a>
					</li>
					-->
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
								<a href="home.html">网站主页</a>
							</li>
							<li class="nav__menu-item">
								<a href="GoodsSearch.html">商品检索</a>
							</li>
							<li class="nav__menu-item">
								<a href="User.html">用户管理</a>
							</li>
							<li class="nav__menu-item">
								<a href="UserCart.html">购物车</a>
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
		<div class="clearfloat"></div>
		<div id="con">
			<div id="Search">
				<div class="Search1">
					<a href="home.html"><img src="assets/homeImages/logo.png"
							width="195" height="60" />
					</a>
					<div class="welcome">
						<font size="+6" color="#CCCCCC">|</font><font size="+2">购物车</font>
					</div>
				</div>
				<div class="Search2">
					<form action="" method="get">
						<input id="Search21" type="text" name="search"
							placeholder="请输入搜索关键词" size="20" />
						<input id="Search22" type="button" value="搜索" />
					</form>
					<div class="Search3">
						<div class="Search31">
							热门搜索：
							<a href="#">芒果干</a>&nbsp;&nbsp;
							<a href="#">夏威夷果</a>&nbsp;&nbsp;
							<a href="#">蔬菜饼</a>
						</div>
					</div>
				</div>
				<div class="Search4">
					<div class="Search41">
						<img src="assets/homeImages/小人.png" width="20" height="20" />
					</div>
					<div class="Search42" style="width: 135px;">
						<a href="User.html">我的LINEFRIEND</a>
					</div>
				</div>
				<div class="Search5">
					<div class="Search51">
						<img src="assets/homeImages/购物车小图标.png" width="20" height="20" />
					</div>
					<div class="Search52">
						<a href="UserCart.html">结算中......</a>
					</div>
				</div>
			</div>
			<div class="clearfloat"></div>
			<div id="content">
				<div class="content1">
					<div class="bt">
						<ul class="bt0">
							<li class="bt1" style="width: 224px;">
								<a target="_blank" href="#">全部商品分类</a>
								<ul class="bt2">
									<li class="bt3">
										<a href="nut.html"><img src="assets/homeImages/logo/1.png"
												height="30" />&nbsp;&nbsp;&nbsp;坚果炒货</a>
									</li>
									<li class="bt3">
										<a href="fruit.html"><img
												src="assets/homeImages/logo/2.png" height="30" />&nbsp;&nbsp;&nbsp;果干蜜饯</a>
									</li>
									<li class="bt3">
										<a href="meat.html"><img
												src="assets/homeImages/logo/3.png" height="30" />&nbsp;&nbsp;&nbsp;肉类熟食</a>
									</li>
									<li class="bt3">
										<a href="biscuit.html"><img
												src="assets/homeImages/logo/4.png" height="30" />&nbsp;&nbsp;&nbsp;饼干膨化</a>
									</li>
									<li class="bt3">
										<a href="biscuit.html"><img
												src="assets/homeImages/logo/5.png" height="30" />&nbsp;&nbsp;&nbsp;糕点点心</a>
									</li>
									<li class="bt3">
										<a href="fruit.html"><img
												src="assets/homeImages/logo/6.png" height="30" />&nbsp;&nbsp;&nbsp;素食豆类</a>
									</li>
									<li class="bt3">
										<a href="seafood.html"><img
												src="assets/homeImages/logo/7.png" height="30" />&nbsp;&nbsp;&nbsp;鱿鱼海味</a>
									</li>
									<li class="bt3">
										<a href="#"><img src="assets/homeImages/logo/1.png"
												height="30" />&nbsp;&nbsp;&nbsp;其他食品</a>
									</li>
								</ul>
							</li>
							<li class="bt1">
								<a href="home.jsp">首页</a>
							</li>
							<li class="bt1">
								<a href="nut.html">坚果/炒货</a>
							</li>
							<li class="bt1">
								<a href="fruit.html">果干/蜜饯</a>
							</li>
							<li class="bt1">
								<a href="meat.html">肉类/熟食</a>
							</li>
							<li class="bt1">
								<a href="biscuit.html">饼干/膨化</a>
							</li>
							<li class="bt1">
								<a href="biscuit.html">糕点/点心</a>
							</li>
							<li class="bt1">
								<a href="fruit.html">素食/豆类</a>
							</li>
							<li class="bt1">
								<a href="seafood.html">鱿鱼/海味</a>
							</li>
						</ul>
					</div>
				</div>

				<div id="space"></div>
				<div class="catbox">
					<table id="cartTable">
						<thead>
							<tr>
								<th>
									<label>
										<input class="check-all check" type="checkbox" />
										&nbsp;&nbsp;全选
									</label>
								</th>
								<th>
									商品
								</th>
								<th>
									单价
								</th>
								<th>
									数量
								</th>
								<th>
									小计
								</th>
								<th>
									操作
								</th>
							</tr>
						</thead>
						<tbody>
						
						
						<!-- 购物车页面开始加载购物车表中的数据 -->
						
						
						
							<tr>
								<td class="checkbox">
									<input class="check-one check" type="checkbox" />
								</td>
								<td class="goods">
									<img src="assets/homeImages/goods/goods1.jpg" alt="" />
									<span>手撕面包营养早餐食品蛋糕口袋面包糕点点心零食</span>
								</td>
								<td class="price">
									29.90
								</td>
								<td class="count">
									<span class="reduce"></span>
									<input class="count-input" type="text" value="1" />
									<span class="add">+</span>
								</td>
								<td class="subtotal">
									29.90
								</td>
								<td class="operation">
									<span class="delete">删除</span>
								</td>
							</tr>
							
							
							
							
							
							
							
							<tr>
								<td class="checkbox">
									<input class="check-one check" type="checkbox" />
								</td>
								<td class="goods">
									<img src="assets/homeImages/goods/goods2.jpg" alt="" />
									<span>奶油味夏威夷果 奶油口味特产干货干果坚果零食小吃袋装</span>
								</td>
								<td class="price">
									39.90
								</td>
								<td class="count">
									<span class="reduce"></span>
									<input class="count-input" type="text" value="1" />
									<span class="add">+</span>
								</td>
								<td class="subtotal">
									39.90
								</td>
								<td class="operation">
									<span class="delete">删除</span>
								</td>
							</tr>
							<tr>
								<td class="checkbox">
									<input class="check-one check" type="checkbox" />
								</td>
								<td class="goods">
									<img src="assets/homeImages/goods/goods3.jpg" alt="" />
									<span>风琴鱿鱼丝 香辣味手撕鱿鱼片原味即食海鲜零食小吃袋装</span>
								</td>
								<td class="price">
									9.90
								</td>
								<td class="count">
									<span class="reduce"></span>
									<input class="count-input" type="text" value="1" />
									<span class="add">+</span>
								</td>
								<td class="subtotal">
									9.90
								</td>
								<td class="operation">
									<span class="delete">删除</span>
								</td>
							</tr>
							<tr>
								<td class="checkbox">
									<input class="check-one check" type="checkbox" />
								</td>
								<td class="goods">
									<img src="assets/homeImages/goods/goods4.jpg" alt="" />
									<span>靖江猪肉脯 特产零食小吃猪肉干肉脯猪肉铺原味休闲食品</span>
								</td>
								<td class="price">
									15.90
								</td>
								<td class="count">
									<span class="reduce"></span>
									<input class="count-input" type="text" value="1" />
									<span class="add">+</span>
								</td>
								<td class="subtotal">
									15.90
								</td>
								<td class="operation">
									<span class="delete">删除</span>
								</td>
							</tr>
							<tr>
								<td class="checkbox">
									<input class="check-one check" type="checkbox" />
								</td>
								<td class="goods">
									<img src="assets/homeImages/goods/goods5.jpg" alt="" />
									<span>芒果干蜜饯果脯果干零食酸甜水果干芒果片果干类休闲食品</span>
								</td>
								<td class="price">
									22.90
								</td>
								<td class="count">
									<span class="reduce"></span>
									<input class="count-input" type="text" value="1" />
									<span class="add">+</span>
								</td>
								<td class="subtotal">
									22.90
								</td>
								<td class="operation">
									<span class="delete">删除</span>
								</td>
							</tr>
							<tr>
								<td class="checkbox">
									<input class="check-one check" type="checkbox" />
								</td>
								<td class="goods">
									<img src="assets/homeImages/goods/goods6.jpg" alt="" />
									<span>手剥松子 开口东北手拨红松子原味坚果特产零食炒货袋装</span>
								</td>
								<td class="price">
									45.90
								</td>
								<td class="count">
									<span class="reduce"></span>
									<input class="count-input" type="text" value="1" />
									<span class="add">+</span>
								</td>
								<td class="subtotal">
									45.90
								</td>
								<td class="operation">
									<span class="delete">删除</span>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="foot" id="foot">
						<label class="fl select-all">
							<input type="checkbox" class="check-all check" />
							&nbsp;&nbsp;全选
						</label>
						<a class="fl delete" id="deleteAll" href="javascript:;">删除</a>
						<div class="fr closing" onclick=
	getTotal();;
>
							<a href="gotoOrder.action">结 算</a>
						</div>
						<input type="hidden" id="cartTotalPrice" />
						<div class="fr total">
							合计：￥
							<span id="priceTotal">0.00</span>
						</div>
						<div class="fr selected" id="selected">
							已选商品
							<span id="selectedTotal">0</span>件
							<span class="arrow up">︽</span><span class="arrow down">︾</span>
						</div>
						<div class="selected-view">
							<div id="selectedViewList" class="clearfix">
								<div>
									<img src="images/1.jpg">
									<span>取消选择</span>
								</div>
							</div>
							<span class="arrow">◆<span>◆</span>
							</span>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfloat"></div>
			
			<div id="ban">
				<img src="assets/homeImages/ban2.jpg" width="1050" height="100"
					alt="间隔图片" />
			</div>
			<div id="foot_server">
				<dl>
					<dt>
						购物指南
					</dt>
					<dd>
						<a target="_blank" href="#">购物流程</a>
					</dd>
					<dd>
						<a target="_blank" href="#">会员介绍</a>
					</dd>
					<dd>
						<a target="_blank" href="#">生活旅行/团购</a>
					</dd>
					<dd>
						<a target="_blank" href="#">常见问题</a>
					</dd>
					<dd>
						<a target="_blank" href="#">联系客服</a>
					</dd>
				</dl>
				<dl>
					<dt>
						配送方式
					</dt>
					<dd>
						<a target="_blank" href="#">上门自提</a>
					</dd>
					<dd>
						<a target="_blank" href="#">211限时送达</a>
					</dd>
					<dd>
						<a target="_blank" href="#">配送服务查询</a>
					</dd>
					<dd>
						<a target="_blank" href="#">配送费收取标准</a>
					</dd>
					<dd>
						<a target="_blank" href="#">海外配送</a>
					</dd>
				</dl>
				<dl>
					<dt>
						支付方式
					</dt>
					<dd>
						<a target="_blank" href="#">货到付款</a>
					</dd>
					<dd>
						<a target="_blank" href="#">在线支付</a>
					</dd>
					<dd>
						<a target="_blank" href="#">分期付款</a>
					</dd>
					<dd>
						<a target="_blank" href="#">邮局汇款</a>
					</dd>
					<dd>
						<a target="_blank" href="#">公司转账</a>
					</dd>
				</dl>
				<dl>
					<dt>
						售后服务
					</dt>
					<dd>
						<a target="_blank" href="#">售后政策</a>
					</dd>
					<dd>
						<a target="_blank" href="#">价格保护</a>
					</dd>
					<dd>
						<a target="_blank" href="#">退款说明</a>
					</dd>
					<dd>
						<a target="_blank" href="#">返修/退换货</a>
					</dd>
					<dd>
						<a target="_blank" href="#">取消订单</a>
					</dd>
				</dl>
				<div>
					<img src="assets/homeImages/foot.png" />
				</div>
			</div>
			
			<div class="clearfloat"></div>
			<div id="footer">
				<hr />
				<br />
				<div class="footer1">
					<a href="ShoppingProcess.html"> 关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					<a href="#">联系我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					<a href="#">广告服务</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					<a href="#">Line friend零食铺</a>
				</div>
				<div class="footer2">
					<div class="copyright">
						Copyright&copy;&nbsp;&nbsp;2016-2017&nbsp;&nbsp;Line
						friend零食铺&nbsp;SC.com&nbsp;&nbsp;版权所有
					</div>
				</div>
			</div>
			<div class="totop" id="totop" onclick=
	bt();
>
				<img src="assets/homeImages/top.png" width="21" height="40" />
			</div>
		</div>
	</body>
</html>
