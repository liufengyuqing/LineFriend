<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<link rel="stylesheet" href="assets/css/SC.css" type="text/css" />
		<link rel="stylesheet" href="assets/css/Header.css" type="text/css" />
		<link rel="stylesheet" href="assets/css/Search.css" type="text/css" />
		<link rel="stylesheet" href="assets/css/BT.css" type="text/css" />
		<link rel="stylesheet" href="assets/css/Footer.css" type="text/css" />

		<!-- ......................................... -->
		<!-- layer,jquery-1.8.3 这两个js有顺序的 必须先引入jquery1.8.3 -->
		<script src="assets/js/jquery-1.8.3.min.js"></script>
		<script src="assets/js/layer.js"></script>
		<!-- 调用浮动窗口 -->
		<script type="text/javascript" src="assets/js/IMChat.js"></script>
		<!-- ....................................... -->
		<style>
body {
	cursor: url('assets/picture/cursor.ico'), auto;
}
</style>
		<script language="JavaScript" src="assets/js/jquery-1.11.3.min.js"
			type="text/javascript" charset="utf-8"></script>
		<script language="JavaScript" src="assets/js/cbl.js"
			type="text/javascript" charset="utf-8"></script>
		<script language="JavaScript" src="assets/js/addToFavorite.js"
			type="text/javascript" charset="utf-8"></script>
		<script language="JavaScript" src="assets/js/AdminEmail.js"
			type="text/javascript" charset="utf-8"></script>
		<script language="JavaScript" src="assets/js/jquery-1.5.1.min.js"
			type="text/javascript" charset="utf-8"></script>
		<script language="JavaScript" src="assets/js/btdw.js"
			type="text/javascript" charset="utf-8"></script>
		<script language="JavaScript" src="assets/js/tplz.js"
			type="text/javascript" charset="utf-8"></script>
		<script language="JavaScript" src="assets/js/jquery-1.2.6.js.js"
			type="text/javascript" charset="utf-8"></script>


		<script language="JavaScript" type="text/javascript" charset="utf-8">
			
			
			window.onload=function (){
				$.ajax({
					"url":"loadProduct.action",
					"type":"post",
					"dataType":"json",
					"success":function(data){
					   var html = '';	
					  var result = eval(data);
					  var len =result.length;
					
					  for(var i = 0;i<len;i++){
			
					  	html+='<div id="pics"><a href="showProductdetail.action?id='+result[i].id+'"><img src="'+result[i].product_pic+'" /><div id="detail">'+result[i].product_name+'<br><span>折扣价：'+result[i].dangqian_price+'</span></div> </a></div>'
					  }
					    $("#P1").html(html);
					}
				});
			};
	  </script>

		<link
			href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
			rel="stylesheet">
	</head>
	<body>
		<div class="cbl1">
			<p class="img_a" onmouseover=hide_show_2(this);
				onmouseout=hide_show_1(this);>
				<a href="UserCart.html"><img
						src="assets/homeImages/shopping.png" /> </a>
				<div class="hide_show" style="top: 0px;">
					<a href="gotoCart.action">购物车</a>
				</div>
			</p>
			<p class="img_a" onmouseover=hide_show_2(this);
				onmouseout=hide_show_1(this);>
				<a href="javascript:IMChat();"> <img
						src="assets/homeImages/heart.png" /> </a>
				<div class="hide_show" style="top: 33px;">
					实时吐槽
				</div>
			</p>
			<p class="img_a" onmouseover=hide_show_2(this);
				onmouseout=hide_show_1(this);>
				<a href="http://wpa.qq.com/msgrd?v=3&uin=804194244&site=qq&menu=yes"><img
						src="assets/homeImages/service.png" /> </a>
				<div class="hide_show" style="top: 66px;">
					联系客服
				</div>
			</p>
		</div>
		<div class="cbl2">
			<p class="img_a" onmouseover=hide_show_2(this);
				onmouseout=hide_show_1(this);>
				<a href="#header"><img src="assets/homeImages/top.png" /> </a>
				<div class="Search4">
					<div class="Search41">
						<img src="assets/homeImages/小人.png" width="20" height="20" />
					</div>
					<div class="Search42" style="width: 135px;">
						<a href="userOrder.action">我的LINE FRIEND</a>
					</div>
				</div>
				<p class="img_a" onmouseover=hide_show_2(this);
					onmouseout=hide_show_1(this);>
					<div class="hide_show" style="top: 0px;">
						回到顶部
					</div>
				</p>
				<p class="img_a" onmouseover=hide_show_2(th
	is);;
out=hide_show_1(this);>
					<a
						href="http://wpa.qq.com/msgrd?v=3&uin=804194244&site=qq&menu=yes"><img
							src="assets/homeImages/manager.png" /> </a>
					<div class="hide_show" style="top: 33px;">
						反馈
					</div>
				</p>
		</div>
		<div id="header">
			<div class="header1">
				<b></b><a 
	
ck="addToFavorite();" href=""><img
						style="position: relative; top: 2px;"
						src="assets/homeImages/love2.jpg" height="12" width="12" />&nbsp;&nbsp;收藏LINE
					FRIEND</a>
				<i class="fa fa-optin-monster"></i>&nbsp;
				<a rel="sidebar" href="javascript:IMChat();">实时聊天吐槽墙</a>
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
								<a href="GoodsSearch.jsp">商品检索</a>
							</li>
							<li class="nav__menu-item">
								<a href="User.html">用户管理</a>
							</li>
							<li class="nav__menu-item">
								<a href="gotoCart.action">购物车</a>
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




		<center>
			<img src="assets/homeImages/ban2.jpg" width="1200" height="100" />
			<!--  <form action="${pageContext.request.contextPath}/toSure.do" method="post"> -->
			<form action="toSure.action" method="get">
				<br />
				<br />
				<br />
				<table width="60%">
					<tr>
						<td bgcolor="#F7FEFF" colspan="4">
							<!-- 订单号：<INPUT TYPE="text" NAME="ordernum" value="201608080000002"> 
				支付金额：<INPUT TYPE="text" NAME="money" size="6" value="0.01">元 -->


							订单编号:${orderId} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							支付金额:${totalPrice}元 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							收货人:${username} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 收货地址:${address}
							<br />
							<br />
							其他(电话之类)....(省略
							<后期自己补充>
							)

							<input type="hidden" name="orderId" value="${orderId}  " />
							<input type="hidden" name="totalPrice" value="${totalPrice}" />
						</td>
					</tr>
					<tr>
						<td>
							<br />
						</td>
					</tr>
					<tr>
						<td>
							请您选择在线支付银行
						</td>
					</tr>
					<tr>
						<td>
							<INPUT TYPE="radio" NAME="pd_FrpId" value="BOC-NET">
							中国银行
						</td>
						<td>
							<INPUT TYPE="radio" NAME="pd_FrpId" value="ICBC-NET">
							工商银行
						</td>
						<td>
							<INPUT TYPE="radio" NAME="pd_FrpId" value="ABC-NET">
							农业银行
						</td>
						<td>
							<INPUT TYPE="radio" NAME="pd_FrpId" value="CCB-NET">
							建设银行
						</td>
					</tr>
					<tr>
						<td>
							<INPUT TYPE="radio" NAME="pd_FrpId" value="CMBC-NET">
							中国民生银行总行
						</td>
						<td>
							<INPUT TYPE="radio" NAME="pd_FrpId" value="CEB-NET">
							光大银行
						</td>
						<td>
							<INPUT TYPE="radio" NAME="pd_FrpId" value="BOCO-NET">
							交通银行
						</td>
						<td>
							<INPUT TYPE="radio" NAME="pd_FrpId" value="SDB-NET">
							深圳发展银行
						</td>
					</tr>
					<tr>
						<td>
							<INPUT TYPE="radio" NAME="pd_FrpId" value="BCCB-NET">
							北京银行
						</td>
						<td>
							<INPUT TYPE="radio" NAME="pd_FrpId" value="CIB-NET">
							兴业银行
						</td>
						<td>
							<INPUT TYPE="radio" NAME="pd_FrpId" value="SPDB-NET">
							上海浦东发展银行
						</td>
						<td>
							<INPUT TYPE="radio" NAME="pd_FrpId" value="ECITIC-NET">
							中信银行
						</td>
					</tr>
					<tr>
						<td>
							<br />
						</td>
					</tr>
					<tr>
						<td>
							<INPUT TYPE="submit" value="确定支付">
						</td>
					</tr>
				</table>
			</form>

		</center>

	</body>
</html>
