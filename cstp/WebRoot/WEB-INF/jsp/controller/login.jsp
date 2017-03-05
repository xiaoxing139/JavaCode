<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String basePath = request.getContextPath(); %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>后台管理</title>
<link href="../css/admin.css" rel="stylesheet" type="text/css">
</head>
<h1 class="title">校园二手交易网</h1>
<div class="box">
	<form action="<%=basePath %>/controller/manager_login.action" method="post">
		<h3>后台登录</h3>
		<span class="error">${sessionScope.error }</span>
		<div class="text">
			管理员：&ensp;<input type="text" name="name" placeholder="请输入用户名" />
		</div>
		<div class="text">
			密&emsp;码：&ensp;<input type="password" name="password" placeholder="请输入密码" />
		</div>
		<div class="button">
			<input type="submit" value="登录" />
		</div>
	</form>
</div>
<body>
</body>
</html>
