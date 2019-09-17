<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>快递员信息</title>
		<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.min.css" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap-theme.min.css" type="text/css" />
		<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>  
	<body>	
	
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span> <span class="sr-only">Close</span>
				</button>
					<h4 class="modal-title">快递员详细信息</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">用户姓名</label>							
							<div class="col-sm-8">
								<span>${expressman.getName()}</span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">用户编号</label>
							<div class="col-sm-8">
								<span>${expressman.getNo()}</span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">性别</label>
							<div class="col-sm-8">
								<span>${expressman.getSex()}</span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">身份证号码</label>
							<div class="col-sm-8">
								<span>${expressman.getIDcard()}</span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">手机号码</label>
							<div class="col-sm-8">
								<span>${expressman.getMobile()}</span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
						 	<label class="col-sm-3 control-label">电子邮箱</label>
							<div class="col-sm-8">
								<span>${expressman.getEmail()}</span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<label  class="col-sm-3 control-label">用户类型</label>
							<div class="col-sm-8">
								<span>${expressman.getType()}</span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">在职状态</label>
							<div class="col-sm-8">
								<span>${expressman.getState()}</span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">入职时间</label>
							<div class="col-sm-8">
								<span>${expressman.getDate()}</span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">家庭住址</label>
							<div class="col-sm-8">
								<span>${expressman.getHomePlace()}</span>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="btn btn-default" data-dismiss="modal" id="dialogng">关闭</div>
				</div>
			</div>
		</div>
	
	</body>

</html>