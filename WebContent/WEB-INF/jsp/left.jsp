<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html PUBLIC>
	

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/skin/css/style.css" type="text/css" />
		<script type="text/javascript" src="js/bootstrap/js/jquery.js"></script>
		<script type="text/javascript">
			$(function() {
				//导航切换
				$(".menuson li").click(function() {
					$(".menuson li.active").removeClass("active");
					$(this).addClass("active");
				});

				$('.title').click(function() {
					var $ul = $(this).next('ul');
					$('dd').find('ul').slideUp();
					if($ul.is(':visible')) {
						$(this).next('ul').slideUp();
					} else {
						$(this).next('ul').slideDown();
					}
				});

				$("a[target='rightFrame'").each(function(i) {
					$(this).click(function() {
						var href = $(this).attr("href");
						var name = $(this).text();
						var id="menu_"+(i+1);
                        window.parent.rightFrame.addTab(id, name, href);
                        return false;
					});

				});
				
				
			});
		</script>
	</head>

	<body style="background:#f0f9fd;">
	
		<div class="lefttop"><span></span>功能菜单</div>
		<dl class="leftmenu">
			<dd>
				<div class="title"><span><img src="css/skin/images/leftico03.png"/></span>快递专员</div>
				<ul class="menuson">
					<li><cite></cite>
						<a href="${pageContext.request.contextPath}/add_package"  target="rightFrame">新建包裹</a><i></i></li>
					<li><cite></cite>
						<a href="${pageContext.request.contextPath}/package_info_track" target="rightFrame">包裹跟踪</a><i></i></li>
					<li><cite></cite>
						<a href="${pageContext.request.contextPath}/courier_query_package" target="rightFrame">包裹查询</a><i></i></li>	
				   <li><cite></cite>
						<a href="${pageContext.request.contextPath}/my_info" target="rightFrame">个人信息</a><i></i></li>
				</ul>
			</dd>
			<dd>
				<div class="title"><span><img src="css/skin/images/leftico02.png"/></span>系统管理员</div>
				<ul class="menuson">
					<li></li>
					<li><cite></cite>
						<a href="${pageContext.request.contextPath}/add_courier" target="rightFrame">添加快递员</a><i></i></li>
					<li><cite></cite>
						<a href="${pageContext.request.contextPath}/query_courier" target="rightFrame">快递员查询</a><i></i></li>
					<li><cite></cite>
						<a href="${pageContext.request.contextPath}/admin_query_package" target="rightFrame">包裹查询</a><i></i></li>
				</ul>
			</dd>
		</dl>
	</body>

</html>