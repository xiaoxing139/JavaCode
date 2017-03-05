<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String basePath = request.getContextPath(); %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>后台管理</title>
<link href="../css/home.css" rel="stylesheet" type="text/css">
<link href="../css/addcategory.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="../js/messages_zh.js"></script>
<script type="text/javascript">
	$(function(){
		
		$("#save").click(function(){
			operation(this);
		});
		$("#del").click(function(){
			operation(this);
		});
		function operation(bt){
			alert(bt.id);
			var pcategory = document.getElementById("pcategory");
			var category = document.getElementById("category");
			var regex1 = /^[\u4E00-\u9FA5]+$/;
			var regex2 = /^[\u4E00-\u9FA5]+(\/[\u4E00-\u9FA5]+)*$/;
			if(!regex1.test(pcategory.value)){
				var error_p = document.getElementById("error_p");
				error_p.innerHTML="必填且须为中文";
				pcategory.focus();
			}else if(!regex2.test(category.value)){
				var error_c = document.getElementById("error_c");
				error_c.innerHTML="必填,中文且要符合格式";
				category.focus();
			}else{
				 $.ajax({
					type:"POST",
					url:"<%=basePath%>/product/cate_"+bt.id+".action",
					data:{
						pcategory:pcategory.value,
						category:category.value,
					},
					dataType:"json",
					success:function(data){
						alert("添加成功!");
					},
					error:function(){
						alert("该二级菜单已存在!");
					}
				});
			}
			
		};
	});
</script>

</head>
<div class="header">
	<div class="title"><p>欢迎<span>${sessionScope.uname }</span>&ensp;<a href="<%=basePath %>/controller/manager_logout.action">退出</a></p></div>
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
                    <li><a href="#">添加类别</a></li>
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
    	<div class="path"><p><a href="#">主页</a>&gt;<a href="#">类别管理</a></p></div>
        <hr/>
        <div class="box">
        	<div class="box_top">
            	<p>已有类别：</p>
                <table border="1" cellspacing="0">
                	<tr>
                    	<th>一级菜单</th>
                        <th>二级菜单</th>
                    </tr>
                    <tbody>
                        <c:forEach items="${sessionScope.categoryMap }" var="category">
                        	<tr>
                        		<td>${category.key }</td>
                        		<td>${category.value }</td>
                        	</tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="box_bottom">
            	<p>添加或修改已有类别：</p>
                一级菜单：<input type="text" id="pcategory" name="pcategory"/>&ensp;<span id="error_p"></span>
                二级菜单：<input type="text" id="category" name="category" placeholder="例如：语文/数学/英语"/>&ensp;<span id="error_c"></span><br/>
                <input type="button" id="save" value="添加"/>
                <input type="button" id="del" value="删除"/>
            </div>
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
