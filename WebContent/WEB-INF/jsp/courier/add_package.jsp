<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>用户管理-新建包裹</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.min.css" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/datetimepicker/css/bootstrap-datetimepicker.min.css" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/My97DatePicker/skin/WdatePicker.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/datetimepicker/js/bootstrap-datetimepicker.zh-CN.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
		
		
	</head>

	<body>
		<ol class="breadcrumb">
			<li>当前位置:新建包裹<p>${msg}</p></li>
		</ol>
		<div id="alertMessage">
		</div>
		<div id="scrollContent" style="width: 99%">
			<form action="${pageContext.request.contextPath}/doinsert" method="post">
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">寄件人姓名</label>
						<div class="col-sm-3">
							<input id="sendername" name="sendername" class="form-control" type="text" />
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">寄件人手机号码</label>
						<div class="col-sm-3">
							<input id="sendermobile" name="sendermobile" class="form-control" type="text" />
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">寄件人地址</label>
						<div class="col-sm-3">
							<input id="senderplace" name="senderplace" class="form-control" type="text" name="address" />
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">收件人姓名</label>
						<div class="col-sm-3">
							<input id="addrname" name="addrname" class="form-control" type="text" />
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">收件人手机号码</label>
						<div class="col-sm-3">
							<input id="addrmobile" name="addrmobile" class="form-control" type="text" />
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">收件人地址</label>
						<div class="col-sm-3">
							<input id="addrplace" name="addrplace" class="form-control" type="text" />
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">详细信息</label>
						<div class="col-sm-6">
							<textarea id="information" name="information" class="form-control">
						    </textarea>
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="modal-footer">
				<input type="submit" class="btn btn-primary" value="添加包裹" />
			</div>
			</form>
			
		</div>

	</body>

</html>