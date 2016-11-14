<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcom</title>
<script type="text/javascript">
	/* window.onload = function(){
		var logout = document.getElementById("logout");
		logout.onclick = function(){
			alert("logout");
			var xmlhttp;
			if(window.XMLHttpRequest){
				xmlhttp = new XMLHttpRequest();
			}else{
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function(){
				if(xmlhttp.readyState==4 && xmlhttp.status==200 ){
					
				}
			};
			xmlhttp.open("GET","login/logout.action",true);
			xmlhttp.send();
		};
	} */
</script>
</head>
<body>
Welcom!欢迎<%=request.getSession().getAttribute("uname") %>进入系统。<br/>
登录成功<br/>
<form action="login/logout.action" method="post">
	<input type="submit" value="退出"/>
</form>
</body>
</html>