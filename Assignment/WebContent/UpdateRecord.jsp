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
<jsp:useBean id="emp" class="com.files.entities.Employee" ></jsp:useBean>
<jsp:setProperty property="*" name="emp"/>
<% 
int status=EmployeeDao.updateRecords(emp);
if(status==1)
{
	%>
	<h1>Record updated successfully!!</h1>
	<%
}
else if(status==0)
{
	%>
	<h1>Record does not updated successfully!!</h1>
	<%
}

%>

</body>
</html>