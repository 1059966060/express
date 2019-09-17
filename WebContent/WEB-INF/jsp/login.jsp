<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>欢迎使用Mis_ren快递后台管理系统</title>
		<style>
			body {
				background-color: #1c77ac;
				background-image: url(css/skin/images/light.png);
				background-repeat: no-repeat;
				background-position: center top;
				overflow: hidden;
			}
		</style>
		<link rel="stylesheet" href="css/skin/css/style.css" type="text/css" />

	</head>

	<body>
		<div id="mainBody">
			<div id="cloud1" class="cloud"></div>
			<div id="cloud2" class="cloud"></div>
		</div>
		<div class="logintop">
			<span>欢迎使用Mis_ren快递后台管理系统</span>
			<ul> 
				<li>
					<a href="#" >联系我们</a>
				</li>
				<li>
					<a href="#">帮助</a>
				</li>
				<li>
					<a href="#">关于我们</a>
				</li>
			</ul>
		</div>
		<div class="loginbody">
			<form action="${pageContext.request.contextPath}/dologin" method="post">
				<div class="loginbox">
					<ul>
						<li><input id="name" name="account" type="text" class="loginuser"/></li>
						<li><input id="password" name="password" type="password" class="loginpwd"/><p>${msg}</p></li>
						<li><input type="submit" class="loginbtn" value="登录" /></li>
					</ul>
				</div>
			</form>
		</div>
		<div class="loginbm">版权所有&nbsp;&nbsp;&nbsp;&nbsp;Mis_ren</div>
	</body>

</html>