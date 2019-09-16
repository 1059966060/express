<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>未知错误：</h1><%=exception%>
<h2>错误内容：</h2>
<%
exception.printStackTrace(response.getWriter());
%>
</body>
</html>