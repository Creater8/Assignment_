<%@page import="java.util.List"%>
<%@page import="com.files.entities.EmployeeDao"%>
<%@page import="com.files.entities.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
 
</head>
<body>
<%
  
  
   int total=4;
   int pg=Integer.parseInt(request.getParameter("page"));
   
   int p=pg;
   if(pg==1)
	   pg--;
   else
   
	   pg=(pg-1)*total; 
   
   List<Employee> elist= EmployeeDao.getEmployee(pg,total);
  
%>
<!--  -->


 <table class="table table-dark table-striped" >
        <thead>
          <tr>
            <th scope="col"> User ID</th>
            <th scope="col"> Name</th>
            <th scope="col"> Password</th>
            <th scope="col"> Salary</th>
            <th scope="col"> Update</th>
            <th scope="col"> Delete</th>
          </tr>
        </thead>
        <tbody>
        <%
            for(Employee e:elist)
            {
        %>
        
        <tr>
        <td><%=e.getId() %></td>
        <td><%=e.getName() %></td>
        <td><%=e.getPassword() %></td>
        <td><%=e.getSalary() %></td>
        <td><a href="update.jsp?uid=<%=e.getId() %>">update</a> </td>
        <td><a href="delete.jsp?uid=<%=e.getId() %>">delete </a> </td>
        </tr>
        <%
        
            }        
        %>  
        </tbody>
      </table>
      
      <%
      
       int count=EmployeeDao.countRecords();
      
        int n=count/total;
        int x=n*total;
        if(x<count)
        	n++;
        
       for(int i=1;i<=n;i++)
        {
        %>
        	  <a href="data.jsp?page=<%=i%>"> page <%=i%> </a>|
        	 
        <% 
        }
       %>
      <br><br>
      <h3>Page : <%=p%>/ <%=n %></h3>
     

</body>
</html>