<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
     <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/project.css">

</head>
<body>
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
         <h2 id="form">Registration Form</h2>
           <form action="RegistrationSecondWay.jsp" method="post">
                <input type="text" name="id" placeholder="User Id" class="data">
                <br>
                <input type="text" name="name" placeholder=" Name" class="data">
                <br>
                <input type="text" name="password" placeholder=" Password" class="data">
                <br>
                <input type="number" name="salary" placeholder=" Salary" class="data">
                <br>
                <input type="submit" value="submit" class="inputbtn" >
                </form>
        </div>

    </main>
</body>
</html>
