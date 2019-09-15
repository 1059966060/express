<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>欢迎使用Mis_ren快递后台管理系统</title>
		<link href="css/skin/css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/bootstrap/js/jquery.js"></script>
	</head>

	<body style="background:url(css/skin/images/topbg.gif) repeat-x;">

		<div class="topleft">
			<a href="main.html" target="_parent"><img src="css/skin/images/loginlogo1.png" title="系统首页" /></a>
		</div>
		<div class="topright">
			<ul>
				<li><span><img src="css/skin/images/help.png" title="帮助"  class="helpimg"/></span>
					<a href="#">帮助</a>
				</li>
				<li>
					<a href="#">关于</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/login" target="_parent">退出</a>
				</li>
			</ul>
			<div class="user">
				<span>${expressMan.getName()} ${admit.getName()}</span>
			</div>

		</div>
	

	</body>

</html>