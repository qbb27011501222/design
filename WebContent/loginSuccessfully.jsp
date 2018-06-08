<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.util.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>欢迎</title>
<style type="text/css">


.item {
	position: absolute;
	top: 500px;
	left: 500px;
	top:300px;
	width:720px;
	height:200px;
	text-align:left;
	padding-top:50px;
	padding-left: 25px;
	z-index: 1000;
}
body {
	font-family:"Microsoft Yahei";
	font-size:12px;
	margin:0;
    background: #fff url("contains//1.png") 50% 0 repeat;}

</style>
</head>



<%
	String accountNumber = (String) session.getAttribute("accountNumber");
%>
<body>

	<div class="item">
		<font face="KaiTi" size="10" color="green">欢迎</font> <br><br>
		<font face="KaiTi" size="10" color="green"><%=accountNumber%></font> <br>	
			<br> <br> <br> <input
				style='height: 40px; width: 100px; background: none; border-radius: 10px;  outline: none;'
				type="button" value="修改密码"
				onclick="javascrtpt:window.location.href='changePassword.html'">
			<input
				style='height: 40px; width: 100px; background: none; border-radius: 10px; outline: none;'
				type="button" value="注销登陆"
				onclick="javascrtpt:window.location.href='logout.jsp'">
		
	</div>

</body>
</html>