<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String basePath = request.getContextPath(); %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="Keywords" content="购物，二手交易">
<meta name="Description" content="这是一个提供二手交易的网站">
<title>校园二手交易网</title>
<link href="../css/basestyle.css" rel="stylesheet" type="text/css">
<link href="../css/information.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div id="header">
		<div class="logo">
			<img src="../img/logo.jpg" />
		</div>
		<div class="title">
			<div class="top">
				<p>校园二手交易网</p>
			</div>
			<div class="bottom">
				<div class="search">
					<input type="text" placeholder="请输入关键字" />
				</div>
				<div class="search">
					<a href="#">搜索</a>
				</div>
			</div>
		</div>
		<div class="user">
			<p>
				<span>${sessionScope.uname }的个人中心&ensp;<a href = "<%=basePath %>/user/user_logout.action">退出</a></span>
			</p>
		</div>
	</div>
	<div id="menu">
		<ul>
			<li><a href="#">首页</a></li>
			<li><a href="#">热销商品</a></li>
			<li><a href="#">推荐商品</a></li>
			<li><a href="#">新品</a></li>
		</ul>
	</div>
	<div id="bodyy">
		<div class="nav">
			<ul>
				<li><a href="<%=basePath %>/user/user_find.action">个人信息</a></li>
				<li><a href="#">我的订单</a></li>
				<li><a href="#">购物车</a></li>
				<li><a href="#">地址管理</a></li>
				<li><a href="<%=basePath%>/product/prod_find.action">我的商品</a></li>
				<li><a href="#">已买宝贝</a></li>
			</ul>
		</div>
		<div class="box"></div>
	</div>
	<div id="footer">
		<div class="f_left">
			<ul>
				<li><a href="#">关于我们</a></li>
				<li>|</li>
				<li><a href="#">联系客服</a></li>
				<li>|</li>
				<li><a href="#">帮助中心</a></li>
				<li>|</li>
				<li><a href="#">免责声明</a></li>
			</ul>
			<ul>
				<li><i>友情链接：</i></li>
				<li><a href="#">西邮</a></li>
				<li>|</li>
				<li><a href="#">淘宝</a></li>
				<li>|</li>
				<li><a href="#">天猫</a></li>
			</ul>
			<p>Copyright © 西安邮电大学 2011-2016 中国西安长安南路563号 陕ICP备040096号</p>
		</div>
		<div class="f_right">
			<p>手机客户端下载</p>
			<img src="../img/c8177f3e6709c93d955ae25f9f3df8dcd00054ea.png">
		</div>
	</div>
</body>
</html>

