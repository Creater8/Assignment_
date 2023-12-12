<%@page import="java.io.PrintWriter"%>
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
<jsp:useBean id="emp" class="com.files.entities.Employee"></jsp:useBean>
<jsp:setProperty property="*" name="emp"/>
<%
    int status=EmployeeDao.saveRecords(emp);
         response.setContentType("text/html");
         PrintWriter pw = response.getWriter();
if(status!=0)
{
	 pw.print("record saved successfully!!");
	 request.getRequestDispatcher("Login.jsp").include(request, response);
	 %>
	 <br>
	 <%
    
}
else if(status==0)
	pw.print("record does not saved!!");
%>
<br>
<% 
    request.getRequestDispatcher("Regestration.jsp").include(request, response);
%>
</body>
</html>