<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>包裹实时信息</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.css" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/time-axis.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.min.js"></script>

	</head>
   
	<body>
	    <h3>快递单号:${no2}</h3>
	    <div>包裹已用时:1天6小时5分</div>
		
		
		<label>
		
		<c:forEach items="${list2}" var="l">
		
		<div class="main" style="padding-top:5px; width: auto;margin-left:30px ;"><p>${l.time}  ${l.information}</p></div>
		<div></div>
		</c:forEach>
		</label>
		<div class="main" style="padding-top:50px; width: auto;margin-left:15px ;">
			 
		</div>
	</body>
	
	

</html>