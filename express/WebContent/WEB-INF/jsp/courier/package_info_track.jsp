<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>包裹信息实时跟踪</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.css" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/time-axis.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.min.js"></script>

	</head>
   
	<body>
		<p>${msg}</p>
		<form action="${pageContext.request.contextPath}/selectpackagestate" method="post" role="form">
			<div class="form-group">
				<div class="col-md-3">
					<input id=no  type="text" class="form-control" name=no placeholder="请输入快递单号">
				</div>
				<div class="col-md-1">
					<input type="submit" class="btn btn-primary" value="查询" />
				</div>
			</div>
		</form>			
		<div class="main" style="padding-top:50px; width: auto;margin-left:15px ;">
			 <ul class="time-axis"></ul>
		</div>
		
		<label>
		
		<c:forEach items="${list}" var="l">
		
		<div class="main" style="padding-top:5px; width: auto;margin-left:30px ;"><p>${l.time}  ${l.information}</p></div>
		
		</c:forEach>
		</label>
		<div class="main" style="padding-top:50px; width: auto;margin-left:15px ;">
			 
		</div>
		
		<form action="${pageContext.request.contextPath}/addinformation?no=${no}" method="post">	
		<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">网点信息</label>
						<div class="col-sm-6">
							<textarea id="information" class="form-control" name="information" >
						    </textarea>		
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
			
			<div class="modal-footer">
				<button type="submit" class="btn btn-primary" id="submit_button" ><span>添加网点信息</span></button>
			</div>
			
		</form>
		
	</body>
	
	

</html>