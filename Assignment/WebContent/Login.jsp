<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
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
       <h1 class="head">Lorem, ipsum.</h1>
        <div class="left">


            <h1>Welcome To Login Page</h1>
            <br>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit nisi tempore doloribus 
                ipsum vero ea non rem, in similique rerum natus! Accusamus exercitationem 
                at dolorum ducimus nobis ex eveniet itaque debitis! Voluptas veritatis perspiciatis
                 harum beatae expedita deserunt hic vel in, 
                sunt sapiente id reiciendis, aut fuga mollitia natus et.</p>

        </div>
        <div class="right">
            <h1  class="user"><strong>USER LOGIN</strong></h1>
            <br>
            <form action="Ho" method="post">
                <input type="text" name="nm" placeholder="User Name" class="data">
                <br>
                <input type="password" name="pss" placeholder="Password" class="data">
                <input type="submit" value="submit" class="inputbtn" >
                        
                        <div class="forget">
                            <a href="#" id="new"> forgotten your password?</a>
                      </div>

            </form>

        </div>
    </main>

    
</body>
</html>