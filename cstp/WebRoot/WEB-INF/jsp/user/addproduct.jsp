<%@page import="java.util.Map"%>
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
<link href="../css/addproduct.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">

	$(function(){
		var map = "${sessionScope.categoryMap }";
		var item = map.replace("{","").replace("}","").split(",");
	 	for(var i in item){
			var arry = item[i].split("=");
			alert(arry[0]);
			$("#parent").append("<option>"+arry[0]+"</option>");
			/* var child = arry[1].split("/");
			var options="";
			for(var j in child){
				options+="<option>"+child[j]+"</option>";
			}
			$("#category").empty();
			$("#category").append(options); */
			
			/* if($("#parent").options[i].selected){
			//	$("#category").append(options);
				alert(i);
			}
			$("#parent").change(function(){
				var child = arry[1].split("/");
				var options="";
				for(var j in child){
					options+="<option>"+child[j]+"</option>";
				}
				$("#category").empty();
				$("#category").append(options);
				
			});  */
		    
		}
		$("#addbt").click(function(){
			$("#name,#price,#inventory").val(null);
		 	$(".p_modal").css("visibility","visible");
		});
		$("#p_close").click(function(){
			$(".p_modal").css("visibility","hidden");
		});
		
		$("#updatebt").click(function(){
			$(".p_modal").css("visibility","visible");
			var number = $(this).parent().prev().prev();
			var price = number.prev();
			var name = price.prev();
			$("#name").val(name.text());
			$("#price").val(price.text());
			$("#inventory").val(number.text());
		});

		$("#p_fm").submit(function(e) {
            var size = this.image.files[0].size;
			if(size > 1024*1024*2){
				$("#image").parent().next().text("文件须小于2M")
				return false;
			}
        });
	});
</script>
</head>

<body>
<div id="header">
	<div class="logo"><img src="../img/logo.jpg"/></div>
    <div class="title">
    	<div class="top"><p>校园二手交易网</p></div>
    	<div class="bottom">
        	<div class="search"><input type="text" placeholder="请输入关键字"/></div>
            <div class="search"><a href="#">搜索</a></div>
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
	<div class="box">
    	<p>已添加物品</p>
        <hr/>
        <div class="tb_product">
        	<table border="1" cellspacing="0">
            	<tr>
                	<th>商品名</th>
                    <th>价格</th>
                    <th>库存量</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
                <tbody>
                	<tr>
                    	<td style="display:none;"></td>
                    	<td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                        <td><a href="#">删除</a>&ensp;|&ensp;<a href="#" id="updatebt">修改</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="page">
        	<p><a href="#">首页</a><a href="#">上一页</a>
            	<a href="#">下一页</a><a href="#">尾页</a></p>
        </div> 
        <div>
        	<a href="#" id="addbt"><img src="../img/828847333840038834.jpg" width="20" height="20"/>添加商品</a>
           	<div class="p_modal">
            	<div class="bt_close"><a href="javascript:void(0);" id="p_close">×</a></div>
            	<div class="p_modal_container">
                	<div class="p_title"><p>添加商品信息</p></div>
                	<div>
                        <form id="p_fm" action="<%=basePath %>/product/prod_add.action" method="post" enctype="multipart/form-data">
                        	<div class="p_list">
                            	<div class="p_key">类&emsp;别：</div>
                                <div class="p_value">
                                	<select required="" name="parent" id="parent">
                                		<option>父类</option>
                                    </select>
                                    <script type="text/javascript">
                                    	var map = "${sessionScope.categoryMap }";
                            			var item = map.replace("{","").replace("}","").split(",");
                            		//	var it = item;
                                    	$("#parent").change(function(){
                                    		var arr = item[this.selectedIndex-1].split("=");
                                    		var child = arr[1].split("/");
                                			var options="";
                                			for(var j in child){
                                				options+="<option>"+child[j]+"</option>";
                                			}
                                			$("#category").empty();
                                			$("#category").append(options); 
                                    	});
                                    </script>
                                    <select required="" name="category" id="category">
                                    	<option>子类</option>
                                    </select>
                                </div>
                                <span class="p_error">*</span>
                            </div>
                            <div class="p_list">
                            	<div class="p_key">商品名：</div>
                                <div class="p_value"><input type="text" id="name" name="name" required=""/></div>
                                <span class="p_error">*</span>
                            </div>
                            <div class="p_list">
                            	<div class="p_key">价&emsp;格：</div>
                                <div class="p_value"><input type="number" id="price" name="price" step="0.1" min="0"required=""/></div>
                                <span class="p_error">*</span>
                            </div>
                            <div class="p_list">
                            	<div class="p_key">库存量：</div>
                                <div class="p_value"><input type="number" id="inventory" name="inventory" min="1" required=""/></div>
                                <span class="p_error">*</span>
                            </div>
                            <div class="p_list">
                            	<div class="p_key">图&emsp;片：</div>
                                <div class="p_value"><input type="file" id="image" name="image" accept=".jpg,.png" max="10" required=""/>(支持格式.jpg/.png)</div>
                                <span class="p_error">*</span>
                            </div>
                            <div class="p_bt_sub">
                            	<input type="submit" id="add" value="添加"/>
                            	<input type="reset" value="重置"/>    
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
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

