<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>快递专员-我的信息</title>
	</head>
	<style>
		.col-center-block {
			float: none;
			display: block;
			margin-left: auto;
			margin-right: auto;
		}
	</style>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.min.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap-theme.min.css" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.min.js"></script>

	<body>
		<ol class="breadcrumb">
			<li>当前位置:我的信息</li>
		</ol>
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-center-block col-md-offset-3">
					<ul class="list-group">
						<li class="list-group-item"><label class="control-label col-md-3">员工姓名</label><p>${expressMan.getName()}</p></li>
						<li class="list-group-item"><label class="control-label col-md-3">员工编号</label> <p>${expressMan.getNo()}</p></li>
						<li class="list-group-item"><label class="control-label col-md-3">性别</label> <p><c:if test="${expressMan.getSex()=='1'}">男</c:if><c:if test="${expressMan.getSex()=='2'}">女</c:if></p></li>
						<li class="list-group-item"><label class="control-label col-md-3">身份证号码</label> <p>${expressMan.getIDcard()}</p></li>
						<li class="list-group-item"><label class="control-label col-md-3">手机号码</label> <p>${expressMan.getMobile()}</p></li>
						<li class="list-group-item"><label class="control-label col-md-3">电子邮件</label> <p>${expressMan.getEmail()}</p></li>
						<li class="list-group-item"><label class="control-label col-md-3">用户类型</label> <p><c:if test="${expressMan.getType()=='1'}">专递人员</c:if></p></li>
						<li class="list-group-item"><label class="control-label col-md-3">在职状态</label> <p>${expressMan.getState()}</p></li>
						<li class="list-group-item"><label class="control-label col-md-3">入职时间</label><p> ${expressMan.getDate()}</p></li>
						<li class="list-group-item"><label class="control-label col-md-3">家庭住址</label> <p>${expressMan.getHomePlace()}</p></li>
					</ul>
				</div>
			</div>
		</div>
	</body>

</html>