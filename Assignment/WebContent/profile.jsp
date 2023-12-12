<%@page import="com.files.entities.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome to profile page</h1>
<%
Employee e =(Employee)session.getAttribute("emp");
out.print("Welcome "+ e.getName());
%>
<a href="data.jsp?page=1">Data Records</a>



</body>
</html>