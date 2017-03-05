<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%String basePath = request.getContextPath(); %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>后台管理</title>
<link href="../css/home.css" rel="stylesheet" type="text/css">
</head>
<div class="header">
	<div class="title"><p>欢迎&ensp;<span>${sessionScope.uname }</span>&ensp;<a href="<%=basePath %>/controller/manager_logout.action">退出</a></p></div>
	<div class="head"><h1>校园二手交易网</h1></div>
</div>
<div class="line"></div>
<div class="bd">
	<div class="bd_left">
    	<ul>
        	<li>
            	<p>订单管理</p>
                <ul class="detail">
              		<li><a href="#">查询订单</a></li>
                    <li><a href="#">修改订单</a></li>
                </ul>
            </li>
            <li>
            	<p>商品类别管理</p>
                <ul class="detail">
              		<li><a href="#">查询类别</a></li>
                    <li><a href="<%=basePath %>/product/cate_find.action">添加类别</a></li>
                    <li><a href="#">修改类别</a></li>
                </ul>
            </li>
            <li>
            	<p>访问量统计</p>
                <ul class="detail">
              		<li><a href="#">查看访问量</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <div class="bd_right">
    	<div class="path"><p><a href="disp_home.action">主页</a></p></div>
        <hr/>
        <div class="box">
        
        </div>
    </div>
</div>
<div class="footer">
	<ul>
        <li><a href="#">关于我们</a></li>
        <li>|</li>
        <li><a href="#">联系客服</a></li>
        <li>|</li>
        <li><a href="#">帮助中心</a></li>
        <li>|</li>
        <li><a href="#">免责声明</a></li>
    </ul>
	<p>Copyright © 西安邮电大学 2011-2016 中国西安长安南路563号 陕ICP备040096号</p>
</div>
<body>
</body>
</html>
