<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" >
	<head>

		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="Admin/assets/css/index.css" />

		<link rel="stylesheet" type="text/css"
			href="Admin/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css"
			href="Admin/assets/css/bootstrap-responsive.css" />
		<link rel="stylesheet" type="text/css"
			href="Admin/assets/css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" type="text/css" href="Admin/assets/css/ProductM.css" />
		<script type="text/javascript" src="Admin/assets/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css"
			href="Admin/assets/css/bootstrap-combined.min.css" />
		<link rel="stylesheet" type="text/css" href="Admin/assets/css/ProductM.css" />
		<link rel="stylesheet" type="text/css" href="Admin/assets/css/UserM.css" />
		<script type="text/javascript" src="Admin/assets/js/jquery.min.js" ></script>
		<script type="text/javascript" src="Admin/assets/js/npm.js" ></script>
		

		
		<title>Line friend管理员--用户管理</title>
		<script>
		$(document).ready(function() {

			if (location.hash) {

				$('a[href=' + location.hash + ']').tab('show');

			}

			$(document.body).on("click", "a[data-toggle]", function(event) {

				location.hash = this.getAttribute("href");

			});

		});

		$(window).on(
				'popstate',
				function() {

					var anchor = location.hash
							|| $("a[data-toggle=tab]").first().attr("href");

					$('a[href=' + anchor + ']').tab('show');

				});
	</script>
	</head>
	
<body>
	
<div id="head">
	<ul class="nav nav-tabs" contenteditable="false" style="background-color: #000;">
		<li><a href="#">Line friend后台管理系统</a> </li>
		<li class="active"><a href="#">首页</a></li>
		<li><a href="AdminMsg.html">通知</a></li>
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
						 <a href="UserManage.html" style="margin-left: 15px;margin-right: 50px;">用户管理<img src="Admin/assets/homeImages/user.png"></a>
					</div>
					<div id="userM" class="accordion-body collapse">
						<div class="accordion-inner">
							<a href="">用 户 查 询<img src="Admin/assets/homeImages/point.png"></a><br>
							<a href="">注 销 用 户<img src="Admin/assets/homeImages/point.png"></a>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-355567" href="#productM">商品管理<img src="Admin/assets/homeImages/pro.png"></a>
					</div>
					<div id="productM" class="accordion-body in collapse">
						<div class="accordion-inner">
							<a href="">商 品 上 架&nbsp;&nbsp;&nbsp;&nbsp;<img src="Admin/assets/homeImages/point.png"></a><br>
							<a href="">商 品 下 架&nbsp;&nbsp;&nbsp;&nbsp;<img src="Admin/assets/homeImages/point.png"></a><br>
							<a href="">商品信息修改<img src="Admin/assets/homeImages/point.png"></a><br>
							<a href="">商品库存管理<img src="Admin/assets/homeImages/point.png"></a><br>
							<a href="">商 品 检 索&nbsp;&nbsp;&nbsp;&nbsp;<img src="Admin/assets/homeImages/point.png"></a><br>
							<a href="">商 品 折 扣&nbsp;&nbsp;&nbsp;&nbsp;<img src="Admin/assets/homeImages/point.png"></a><br>
							<a href="">商 品 分 类&nbsp;&nbsp;&nbsp;&nbsp;<img src="Admin/assets/homeImages/point.png"></a><br>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						 <!-- <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-355567" href="#orderM"> -->
						 <a href="OrderManage.html" style="margin-left: 15px;margin-right: 50px;">订单管理<img src="Admin/assets/homeImages/order.png"></a>
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
		<div class="panel panel-default">
    		<div class="panel-body">
       		 <!--页面-->
       		<div class="tabbable" id="tabs-337225"><!-- Only required for left/right tabs -->
			<ul class="nav nav-tabs">
				<li class="active"><a contenteditable="false" data-toggle="tab" href="#panel-Padd">商品上架</a></li>
				<li><a contenteditable="false" data-toggle="tab" href="#panel-Pout">商品下架</a></li>
				<li><a contenteditable="false" data-toggle="tab" href="#panel-Pupdate">商品信息修改</a></li>
				<li><a contenteditable="false" data-toggle="tab" href="#panel-Pnumber">商品库存管理</a></li>
				<li><a contenteditable="false" data-toggle="tab" href="#panel-Pserach">商品检索</a></li>
				<li><a contenteditable="false" data-toggle="tab" href="#panel-Pcheap">商品折扣</a></li>
				<li><a contenteditable="false" data-toggle="tab" href="#panel-Pkind">商品分类</a></li>
			</ul>

			<div class="tab-content">
				<div class="tab-pane active" contenteditable="false" id="panel-Padd">
					<!-- <p>商品上架</p> -->
					<div class="navbar-inner">
						<div class ="view" >
							<form class="form-horizontal" role="form">
										<div class="form-group">
											<label for="id" class="col-sm-2 control-label" >产品编号：</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="id" style="height: 30px;"></div>
										</div><br>
										<div class="form-group">
											<label for="pname" class="col-sm-2 control-label">产品名称：</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="pname" style="height: 30px;"></div>
										</div><br>
										<div class="form-group">
											<label for="pname" class="col-sm-2 control-label">产品描述：</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="pname" style="height: 30px;"></div>
										</div><br>
										<div class="form-group">
											<label for="pnumber" class="col-sm-2 control-label">数量：</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="pname" style="height: 30px;"></div>
										</div><br>
										<div class="form-group">
											<label for="pname" class="col-sm-2 control-label">原价：</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="pname" style="height: 30px;"></div>
										</div><br>
										<div class="form-group">
											<label for="pname" class="col-sm-2 control-label">折后价：</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="pname" style="height: 30px;"></div>
										</div><br>
										<div class="form-group">
											<label for="pname" class="col-sm-2 control-label">分类：</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="pname" style="height: 30px;"></div>
										</div><br>
										
										<div class="form-group" id="seleimg">
											 <label for="exampleInputFile">选择商品图片</label>
											 <input type="file" id="exampleInputFile" accept="image/png,image/jpg,image/gif"/>
										</div><br>

										<div class="form-group" id="sjbotton" >
											
											<div class="col-sm-10">
												<input type="submit" class="form-control" id="pname" value="上架"></div>
										</div><br>
							</form>
						</div>
					</div>		
				</div>

				<div class="tab-pane" contenteditable="false" id="panel-Pout">
					<!-- <p>商品下架</p> -->
					<!-- 搜索框 -->
					<div class="navbar-inner">
                    
                    
                    <form class="navbar-form navbar-left" role="search" id="formSy" action="foodSerch.action">
						<label style="display: inline-block;margin-top: 10px;margin-left: -600px;">请选择查询条件:</label>
						<!-- <span>请选择查询条件:</span> -->
						<select class="selectSy" name="sel">
							<option value="1">全部商品</option>
							<option value="2">商品编号</option>
							<option value="3">类别</option>
							<option value="4">名称</option>
							<option value="5">价格</option>
							<option value="6">上架时间</option>
						</select>
							
				
							<span><input type="text" class="form-control" placeholder="请输入查询内容" id="tiaojian">
										
							<button type="submit" class="btn btn-default" style="margin-top:5px; ">查询</button></span>	
						</form>

						<!-- 查询结果展示表格 -->
						<div id="tbShow">
								<div class="clean"></div>
									<table class="table" contenteditable="false">
											<thead>
												<tr>
													<th style="width: 10%;">图片</th>
													<th style="width: 10%;">编号</th>
													<th style="width: 10%;">名称</th>
													<th style="width: 10%;">描述</th>
													<th style="width: 10%;">数量</th>
													<th style="width: 10%;">类别</th>
													<th style="width: 10%;">折后价</th>
													<th style="width: 10%;">原价</th>
													<th style="width: 10%;">上架日期</th>
													<th style="width: 10%;">操作</th>
												</tr>
											</thead>
											<tbody>
                                            
                                            <c:forEach items="${productList}" var="product" varStatus="status">
												<tr>
													<td><img src="Admin/assets/homeImages/gg4.jpg"></td>
													<td>2003</td>
													<td>蓝莓干</td>
													<td>纯天然，乐自享</td>
													<td>100</td>
													<td>果干</td>
													<td>20.00</td>
													<td>33.00</td>
													<td>2017年6月20日</td>
													<td><a href="">下架</a></td>
												</tr>
                                            </c:forEach>
                                            
											</tbody>
									</table>
						</div>
					</div>
				</div>
				<div class="tab-pane" contenteditable="false" id="panel-Pupdate">
					<div class="navbar-inner">
						<label style="display: inline-block;margin-top: 10px;margin-left: -600px;">请选择查询条件:</label>
						<!-- <span>请选择查询条件:</span> -->
						<select class="selectSy">
							<option>全部商品</option>
							<option>商品编号</option>
							<option>类别</option>
							<option>名称</option>
							<option>价格</option>
							<option>上架时间</option>
						</select>
							
						
						<form class="navbar-form navbar-left" role="search" id="formSy">
							<span><input type="text" class="form-control" placeholder="请输入查询内容" id="tiaojian" name="condition">
										
							<button type="submit" class="btn btn-default" style="margin-top:5px; ">查询</button></span>	
						</form>

						<!-- 查询结果展示表格 -->
						<div id="tbShow">
								<div class="clean"></div>
									<table class="table" contenteditable="false">
											<thead>
												<tr>
													<th style="width: 10%;">图片</th>
													<th style="width: 10%;">编号</th>
													<th style="width: 10%;">名称</th>
													<th style="width: 10%;">描述</th>
													<th style="width: 10%;">数量</th>
													<th style="width: 10%;">类别</th>
													<th style="width: 10%;">折后价</th>
													<th style="width: 10%;">原价</th>
													<th style="width: 10%;">上架日期</th>
													<th style="width: 10%;">操作</th>
												</tr>
											</thead>
											<tbody>
                                            
                                            <c:forEach items="${foodList}" var="food" varStatus="status">
												<tr>
													<td><img src="Admin/assets/homeImages/gg4.jpg"></td>
													<td>2003</td>
													<td>蓝莓干</td>
													<td>纯天然，乐自享</td>
													<td>100</td>
													<td>果干</td>
													<td>20.00</td>
													<td>33.00</td>
													<td>2017年6月20日</td>
													<td><a href="">更新</a></td>
												</tr>
                                            </c:forEach>
                                            
											
											</tbody>
									</table>
						</div>
					</div>
					
				</div>
				<div class="tab-pane" contenteditable="false" id="panel-Pnumber">
					
					<div class="navbar-inner">
						<label style="display: inline-block;margin-top: 10px;margin-left: -600px;">请选择查询条件:</label>
						<!-- <span>请选择查询条件:</span> -->
						<select class="selectSy">
							<option>全部商品</option>
							<option>商品编号</option>
							<option>类别</option>
							<option>名称</option>
							<option>价格</option>
							<option>上架时间</option>
						</select>
							
						
						<form class="navbar-form navbar-left" role="search" id="formSy">
							<span><input type="text" class="form-control" placeholder="请输入查询内容" id="tiaojian">
										
							<button type="submit" class="btn btn-default" style="margin-top:5px; ">查询</button></span>	
						</form>

						<!-- 查询结果展示表格 -->
						<div id="tbShow">
								<div class="clean"></div>
									<table class="table" contenteditable="false">
											<thead>
												<tr>
													<th style="width: 10%;">图片</th>
													<th style="width: 10%;">编号</th>
													<th style="width: 10%;">名称</th>
													<th style="width: 10%;">描述</th>
													<th style="width: 10%;">数量</th>
													<th style="width: 10%;">类别</th>
													<th style="width: 5%;">折后价</th>
													<th style="width: 5%;">原价</th>
													<th style="width: 10%;">上架日期</th>
													<th style="width: 10%;">新到货数量</th>
													<th style="width: 10%;">操作</th>
												</tr>
											</thead>
											<tbody>
                                            
                                            <c:forEach items="${foodList}" var="food" varStatus="status">
												<tr>
													<td><img src="Admin/assets/homeImages/gg4.jpg"></td>
													<td>2003</td>
													<td>蓝莓干</td>
													<td>纯天然，乐自享</td>
													<td>100</td>
													<td>果干</td>
													<td>20.00</td>
													<td>33.00</td>
													<td>2017年6月20日</td>
													<td><input type="text" name="paddNum" style="height: 30px;width: 100px;"></td>
													<td><a href="">更新</a></td>
												</tr>
                                            </c:forEach>
											
											</tbody>
									</table>
						</div>
					</div>
				</div>
				<div class="tab-pane" contenteditable="false" id="panel-Pserach">
					<div class="navbar-inner">
                    <form class="navbar-form navbar-left" role="search" id="formSy" action="foodSearch.action">
						<label style="display: inline-block;margin-top: 10px;margin-left: -600px;">请选择查询条件:</label>
						<!-- <span>请选择查询条件:</span> -->
						<select class="selectSy" name="sel">
							<option value="1">全部商品</option>
							<option value="2">商品编号</option>
							<option value="3">类别</option>
							<option value="4">名称</option>
							<option value="5">价格</option>
							<option value="6">上架时间</option>
						</select>
							
						
							<span><input type="text" class="form-control" placeholder="请输入查询内容" id="tiaojian" name="condition">
										
							<button type="submit" class="btn btn-default" style="margin-top:5px; ">查询</button></span>	
					</form>

						<!-- 查询结果展示表格 -->
						<div id="tbShow">
								<div class="clean"></div>
									<table class="table" contenteditable="false">
											<thead>
												<tr>
													<th style="width: 10%;">图片</th>
													<th style="width: 10%;">编号</th>
													<th style="width: 10%;">名称</th>
													<th style="width: 10%;">描述</th>
													<th style="width: 10%;">数量</th>
													<th style="width: 10%;">类别</th>
													<th style="width: 5%;">折后价</th>
													<th style="width: 5%;">原价</th>
													<th style="width: 10%;">上架日期</th>
												</tr>
											</thead>
											<tbody>
                                            
                                            <c:forEach items="${productList}" var="product" varStatus="status">
												<tr>
													<td><img src="Admin/assets/homeImages/gg4.jpg"></td>
													<td>${product.id}</td>
													<td>${product.product_name}</td>
													<td>${product.description}</td>
													<td>100</td>
													<td>果干</td>
													<td>20.00</td>
													<td>33.00</td>
													<td>2017年6月20日</td>
													
												</tr>
                                            </c:forEach>
												
											</tbody>
									</table>
						</div>
					</div>

				</div>
				<div class="tab-pane" contenteditable="false" id="panel-Pcheap">
					
					<div class="navbar-inner">
						<label style="display: inline-block;margin-top: 10px;margin-left: -600px;">请选择查询条件:</label>
						<!-- <span>请选择查询条件:</span> -->
						<select class="selectSy">
							<option>全部商品</option>
							<option>商品编号</option>
							<option>类别</option>
							<option>名称</option>
							<option>价格</option>
							<option>上架时间</option>
						</select>
							
						
						<form class="navbar-form navbar-left" role="search" id="formSy">
							<span><input type="text" class="form-control" placeholder="请输入查询内容" id="tiaojian">
										
							<button type="submit" class="btn btn-default" style="margin-top:5px; ">查询</button></span>	
						</form>

						<!-- 查询结果展示表格 -->
						<div id="tbShow">
								<div class="clean"></div>
									<table class="table" contenteditable="false">
											<thead>
												<tr>
													<th style="width: 10%;">图片</th>
													<th style="width: 10%;">编号</th>
													<th style="width: 10%;">名称</th>
													<th style="width: 10%;">描述</th>
													<th style="width: 10%;">数量</th>
													<th style="width: 10%;">类别</th>
													<th style="width: 5%;">折后价</th>
													<th style="width: 10%;">新优惠</th>
													<th style="width: 5%;">原价</th>
													<th style="width: 10%;">上架日期</th>
													<th style="width: 10%;">操作</th>
												</tr>
											</thead>
											<tbody>
                                            
                                            <c:forEach items="${foodList}" var="food" varStatus="status">
												<tr>
													<td><img src="Admin/assets/homeImages/gg4.jpg"></td>
													<td>2003</td>
													<td>蓝莓干</td>
													<td>纯天然，乐自享</td>
													<td>100</td>
													
													<td>果干/蜜饯</td>
													<td>20.00</td>
													<td><input type="text" name="newCh" style="height: 30px;width: 80px;"></td>
													<td>33.00</td>
													<td>2017年6月20日</td>
													<td><a href="">确认</a></td>
												</tr>
                                            </c:forEach>
												
											</tbody>
									</table>
						</div>
					</div>
				</div>
				<div class="tab-pane" contenteditable="false" id="panel-Pkind">
					
					<div class="navbar-inner">
						<label style="display: inline-block;margin-top: 10px;margin-left: -600px;">请选择查询条件:</label>
						<!-- <span>请选择查询条件:</span> -->
						<select class="selectSy">
							<option>全部商品</option>
							<option>商品编号</option>
							<option>类别</option>
							<option>名称</option>
							<option>价格</option>
							<option>上架时间</option>
						</select>
							
						
						<form class="navbar-form navbar-left" role="search" id="formSy">
							<span><input type="text" class="form-control" placeholder="请输入查询内容" id="tiaojian">
										
							<button type="submit" class="btn btn-default" style="margin-top:5px; ">查询</button></span>	
						</form>

						<!-- 查询结果展示表格 -->
						<div id="tbShow">
								<div class="clean"></div>
									<table class="table" contenteditable="false">
											<thead>
												<tr>
													<th style="width: 10%;">图片</th>
													<th style="width: 10%;">编号</th>
													<th style="width: 10%;">名称</th>
													<th style="width: 10%;">描述</th>
													<th style="width: 10%;">数量</th>
													<th style="width: 10%;">类别</th>

													<th style="width: 10%;">新增类别标签</th>
													<th style="width: 5%;">折扣</th>
													<th style="width: 5%;">原价</th>
													<th style="width: 10%;">上架日期</th>
													<th style="width: 10%;">操作</th>
												</tr>
											</thead>
											<tbody>
                                            
                                            <c:forEach items="${foodList}" var="food" varStatus="status">
												<tr>
													<td><img src="Admin/assets/homeImages/gg4.jpg"></td>
													<td>2003</td>
													<td>蓝莓干</td>
													<td>纯天然，乐自享</td>
													<td>100</td>
													<td>果干/蜜饯</td>
													<td><select>
															<option>坚果/炒货</option>
															<option>果干/蜜饯</option>
															<option>肉类/熟食</option>
															<option>饼干/膨化</option>
															<option>糕点/点心</option>
															<option>素食/豆类</option>
															<option>鱿鱼/海味</option>
														</select>
													</td>
													<td>20.00</td>
													<td>32.00</td>
													<td>2017年6月20日</td>
													<td><a href="">确认</a></td>
												</tr>
                                            </c:forEach>
												
											</tbody>
									</table>
						</div>
					</div>

				</div>
			</div>
		</div>
    	</div>
		</div>	
	</div>
</div>
</body>
</html>
