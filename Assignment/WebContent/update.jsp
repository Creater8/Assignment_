<%@page import="com.files.entities.Employee"%>
<%@page import="com.files.entities.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/project.css">
</head>
<body>
<%

 int id=Integer.parseInt(request.getParameter("uid"));

  Employee e= EmployeeDao.getEmployee(id);
  
 %>
 
 <div id="header">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h1 id="logo">Company Name</h1>
                </div>
                <div class="col-md-4">
                    <ul id="menu" class="float-md-right">
                        <li><a href="">Home</a></li>
                        <li><a href="Login.jsp">Login</a></li>
                        <li><a href="Regestration.jsp">Register</a></li>
                        <li><a href="">Products</a></li>
                        <li><a href="">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <main class="main">
        <div class="colo">
        </div>
        <h1 id="regis">Lorem, ipsum.</h1>
        <div id="regisForm">
         <h2 id="form">Update data</h2>
           <form action="UpdateRecord.jsp" method="post">
           <br>
           <h5 style="padding-left:7vw; margin-bottom:-2vh;">Employee Id: <%=e.getId() %></h5>
                <input type="hidden" name="id"  class="data" value=<%=e.getId() %>>
                <br>
                <input type="text" name="name" placeholder=" Name" class="data" value=<%=e.getName() %>>
                <br>
                <input type="text" name="password" placeholder=" Password" class="data" value=<%=e.getPassword() %>>
                <br>
                <input type="number" name="salary" placeholder=" Salary" class="data" value=<%=e.getSalary() %>>
                <br>
                <input type="submit" name="update" value="update" class="inputbtn" >
                </form>
        </div>

    </main>


</body>
</html>
