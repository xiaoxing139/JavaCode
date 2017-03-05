<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String basePath = request.getContextPath(); %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="Keywords" content="购物，二手交易">
<meta name="Description" content="这是一个提供二手交易的网站">
<title>校园二手交易网</title>
<link href="../css/basestyle.css" rel="stylesheet" type="text/css">
<link href="../css/nav.css" rel="stylesheet" type="text/css">
<link href="../css/index.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="../js/messages_zh.js"></script>
<script type="text/javascript">
	window.onload=function(){
	
	}
</script>
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
				<a href="../login.html">登录</a>/<a href="../register.html">注册</a>&nbsp;&nbsp;&nbsp;&nbsp;Hi!欢迎来访
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
		<div class="b_left">
			<div class="nav">
				<dl>
					<dt>
						<strong>商品分类</strong>
					</dt>
					<c:forEach items="${sessionScope.categoryMap }" var="map">
						<dd>
							<p>
								<a href="#">${map.key }&raquo;</a>
							</p>
							<div id="list">
								<ul>
									<c:forEach var="cate" items="${fn:split(map.value,'/') }">
										<li><a href="#">${cate }</a></li>
									</c:forEach>
								</ul>
							</div>
						</dd>
					</c:forEach>
				</dl>
			</div>
			<div class="ad">
				<p>
					<strong>近期活动&nbsp;&gt;</strong>
				</p>
				<div id="adv">
					<p>
						<a href="#">广告，活动</a>
					</p>
				</div>
			</div>
		</div>
		<div class="b_right">
			<ul>
				<li>
					<p>
					<h3>
						<a href="#">书&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;籍</a>
					</h3>
					</p>
					<hr />
					<ul>
						<li><a href="#"> <img
								src="../img/c8177f3e6709c93d955ae25f9f3df8dcd00054ea.png" />
								<p>物品名</p>
						</a>
							<p>二手价：10¥</p></li>
						<li><a href="#"> <img
								src="../img/c8177f3e6709c93d955ae25f9f3df8dcd00054ea.png" />
								<p>物品名</p>
						</a>
							<p>二手价：10¥</p></li>
						<li><a href="#"> <img
								src="../img/c8177f3e6709c93d955ae25f9f3df8dcd00054ea.png" />
								<p>物品名</p>
						</a>
							<p>二手价：10¥</p></li>
						<li><a href="#"> <img
								src="../img/c8177f3e6709c93d955ae25f9f3df8dcd00054ea.png" />
								<p>物品名</p>
						</a>
							<p>二手价：10¥</p></li>
						<li><a href="#"> <img
								src="../img/c8177f3e6709c93d955ae25f9f3df8dcd00054ea.png" />
								<p>物品名</p>
						</a>
							<p>二手价：10¥</p></li>
					</ul>
				</li>
				<li>
					<p>
					<h3>
						<a href="#">电子产品</a>
					</h3>
					</p>
					<hr />
					<ul>
						<li><a href="#"> <img
								src="../img/c8177f3e6709c93d955ae25f9f3df8dcd00054ea.png" />
								<p>物品名</p>
						</a>
							<p>二手价：10¥</p></li>
						<li><a href="#"> <img
								src="../img/c8177f3e6709c93d955ae25f9f3df8dcd00054ea.png" />
								<p>物品名</p>
						</a>
							<p>二手价：10¥</p></li>
						<li><a href="#"> <img
								src="../img/c8177f3e6709c93d955ae25f9f3df8dcd00054ea.png" />
								<p>物品名</p>
						</a>
							<p>二手价：10¥</p></li>
						<li><a href="#"> <img
								src="../img/c8177f3e6709c93d955ae25f9f3df8dcd00054ea.png" />
								<p>物品名</p>
						</a>
							<p>二手价：10¥</p></li>
						<li><a href="#"> <img
								src="../img/c8177f3e6709c93d955ae25f9f3df8dcd00054ea.png" />
								<p>物品名</p>
						</a>
							<p>二手价：10¥</p></li>
					</ul>
				</li>
				<li>
					<p>
					<h3>
						<a href="#">生活用品</a>
					</h3>
					</p>
					<hr />
					<ul>
						<li><a href="#"> <img
								src="../img/c8177f3e6709c93d955ae25f9f3df8dcd00054ea.png" />
								<p>物品名</p>
						</a>
							<p>二手价：10¥</p></li>
						<li><a href="#"> <img
								src="../img/c8177f3e6709c93d955ae25f9f3df8dcd00054ea.png" />
								<p>物品名</p>
						</a>
							<p>二手价：10¥</p></li>
						<li><a href="#"> <img
								src="../img/c8177f3e6709c93d955ae25f9f3df8dcd00054ea.png" />
								<p>物品名</p>
						</a>
							<p>二手价：10¥</p></li>
						<li><a href="#"> <img
								src="../img/c8177f3e6709c93d955ae25f9f3df8dcd00054ea.png" />
								<p>物品名</p>
						</a>
							<p>二手价：10¥</p></li>
						<li><a href="#"> <img
								src="../img/c8177f3e6709c93d955ae25f9f3df8dcd00054ea.png" />
								<p>物品名</p>
						</a>
							<p>二手价：10¥</p></li>
					</ul>
				</li>
			</ul>
		</div>
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
