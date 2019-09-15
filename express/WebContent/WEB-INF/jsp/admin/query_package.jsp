<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>用户管理-包裹查询</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.min.css" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap-theme.min.css" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.min.js"></script>
	</head>

	<body>
		<ol class="breadcrumb">
			<li>当前位置:包裹查询<p>${msg}</p></li>
		</ol>
		<div class="container-fluid" style="padding-left: 0px;">
			<div class="well">
				<form action="${pageContext.request.contextPath}/adminselectpackage?account=${account}" method="post">
					<div class="form-group" style="width: 100%">
						<div class="row">
							<div class="col-sm-1">
								<span>包裹状态:</span>
							</div>
							<div class="col-sm-2">
								<select name="state" class="form-control">
									<option disabled>---选择类型---</option>
									<option>无</option>
									<option>未发送</option>
									<option>运输中</option>
									<option>已签收</option>
									<option>已到达</option>							
							    </select>
							</div>
							<div class="col-sm-1">
								<span>包裹单号:</span>
							</div>
							<div class="col-sm-2">
								<input id="no" class="form-control" type="text" name="no" />
							</div>
							<div>
								<input type="submit" class="btn btn-primary" value="包裹查询">
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div id="scrollContent" style="width: 99%">
			<table class="table table-hover table-striped table-bordered">
				<thead>
					<tr class="info">
						<th class="text-center">
							<span>快递单号</span>
						</th>
						<th class="text-center">
							<span>寄件人</span>
						</th>
						<th class="text-center">
							<span>收件人</span>
						</th>
						<th class="text-center">
							<span>包裹状态</span>
						</th>
						<th class="text-center">
							<span>当前节点</span>
						</th>
						<th class="text-center">
							<span>详情</span>
						</th>
					</tr>
				</thead>
				<c:forEach items="${list2}" var="pa">
				<tbody>
					<tr>
						<td>${pa.getNo()}</td>
						<td>${pa.getSenderName()}</td>
						<td>${pa.getAddrName()}</td>
						<td>${pa.getState()}</td>
						<td>${pa.getInformation()}</td>
						<td>
							<a href="${pageContext.request.contextPath}/admin_package_info?no=${pa.getNo()}">详情</a>
							<a href="${pageContext.request.contextPath}/deletepackage?no=${pa.getNo()}">删除</a>
						</td>
					</tr>			
					
				</tbody>
				</c:forEach>
			</table>
		</div>

	</body>

</html>