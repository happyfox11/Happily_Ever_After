<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Happily_Ever_After_Login</title>
</head>
<body>
	<%
		session.invalidate();
		response.sendRedirect("index2.jsp");
	%>
</body>
</html>