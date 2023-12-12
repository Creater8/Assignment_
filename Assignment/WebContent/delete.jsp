<%@page import="com.files.entities.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("uid"));

int status=EmployeeDao.deleteRecords(id);
if(status==1)
{
	%>
	<h1>Record delete Successfully!!!</h1>
	<% 
}
else
{
     %>
	<h1>Record does't saved</h1>
	<% 
}
%>


</body>
</html>