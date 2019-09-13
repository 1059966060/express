<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>用户管理-用户查询</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.min.css" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/res/bootstrap/css/bootstrap-theme.min.css" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.min.js"></script>
	</head>

	<body>
		<ol class="breadcrumb">
			<li>当前位置:用户查询<p>${msg}</p></li>
		</ol>
		<div class="container-fluid" style="padding-left: 0px;">
			<div class="well">
				<form action="${pageContext.request.contextPath}/selectcourier?account=${account}" method="post">
					<div class="form-group" style="width: 100%">
						<div class="row">
							<div class="col-sm-1">
								<span>工号:</span>
							</div>
							<div class="col-sm-2">
								<input id="no" class="form-control" type="text" name="no" />
							</div>
							<div>
								<input type="submit" class="btn btn-primary" value="快递员查询">
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
							<span>用户姓名</span>
						</th>
						<th class="text-center">
							<span>用户编号</span>
						</th>
						<th class="text-center">
							<span>性别</span>
						</th>
						<th class="text-center">
							<span>手机号码</span>
						</th>
						<th class="text-center">
							<span>操作</span>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${expressman.getName()}</td>
						<td>${expressman.getNo()}</td>
						<td>${expressman.getSex()}</td>
						<td>${expressman.getMobile()}</td>				
						<td>						 
							<a href="${pageContext.request.contextPath}/courier_info">详情</a>
							
							<a href="${pageContext.request.contextPath}/updatepassword?no=${expressman.getNo()}">重置密码</a>
							
							<a href="${pageContext.request.contextPath}/dodelete?no=${expressman.getNo()}">删除</a>
							
						</td>
					</tr>
					
				</tbody>
			</table>
		</div>

	</body>

</html>