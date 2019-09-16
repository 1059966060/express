<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>用户管理-添加用户</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.min.css" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/datetimepicker/css/bootstrap-datetimepicker.min.css" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/My97DatePicker/skin/WdatePicker.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/datetimepicker/js/bootstrap-datetimepicker.zh-CN.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body>
		<ol class="breadcrumb">
			<li>当前位置:添加快递专员<p>${msg}</p></li>
		</ol>
		<div id="alertMessage">
		</div>
		<div id="scrollContent" style="width: 99%">
			<form action="${pageContext.request.contextPath}/addcourier?account=${account}" method="post">
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">用户姓名</label>
						<div class="col-sm-3">
							<input id="name" class="form-control" type="text" name="name" />
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">工号</label>
						<div class="col-sm-3">
							<input id="no" class="form-control" type="text" name="no" />
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">性别</label>
						<div class="col-sm-3">
							<label><input   type="radio"  name="sex" value="1"  checked="checked"/>男</label>&nbsp;&nbsp;
							<label><input   type="radio"  name="sex" value="2"  />女</label>
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">手机号码</label>
						<div class="col-sm-3">
							<input id="mobile" class="form-control" type="text" name="mobile" />
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">电子邮件</label>
						<div class="col-sm-3">
							<input id="email" class="form-control" type="text" name="email" />
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">身份证号码</label>
						<div class="col-sm-3">
							<input id="IDcard" class="form-control" type="text" name="IDcard" />
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">出生日期</label>
						<div class="col-sm-3">
							<input id="birthday" class="Wdate form-control" style="height:32px" type="text" name="birthday" readonly="" onclick="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd'})" />
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">在职状态</label>
						<div class="col-sm-3">
							<select name="state" class="form-control">
								<option>---选择在职状态---</option>
								<option>已转正</option>
								<option>试用期</option>
								<option>已离职</option>
								<option>实习期</option>
							</select>
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">入职日期</label>
						<div class="col-sm-3">
							<input class="Wdate form-control" type="text" style="height:32px" name="date" readonly="" onclick="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd'})" />
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">薪水</label>
						<div class="col-sm-3">
							<input id="salary" class="form-control" type="text" name="salary" />
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">籍贯</label>
						<div class="col-sm-3">
							<input id="nativePlace" class="form-control" type="text" name="nativePlace" />
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label class="control-label col-md-2" style="text-align: right;">家庭地址</label>
						<div class="col-sm-6">
							<input id="homePlace" class="form-control" type="text" name="homePlace" />
						</div>
						<div class="col-sm-1">
							<span style="color:rgb(255,0,0)">*</span>
						</div>
					</div>
				</div>
			</form>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" id="submit_button" onclick="$('form').first().submit()"><span>添加快递专员</span></button>
			</div>
		</div>

	</body>

</html>