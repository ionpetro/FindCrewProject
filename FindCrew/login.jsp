<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Ionpe">

    <title>Login</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="css/login.css" rel="stylesheet">

    <link href="css/signin.css" rel="stylesheet">
	
	<link href="css/main_css.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="index.jsp"><img style="max-width:110px; margin-top: -4px;" src="images/l.png "></a>
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">              
                <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">About</a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                  <a href="index.jsp#about" class="dropdown-item">About Us</a>
                  <a href="index.jsp#services" class="dropdown-item">Services</a>
                  <a href="index.jsp#team" class="dropdown-item">Team</a>
                </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="profiles.jsp">Crew</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.jsp#contact">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="login.jsp">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->

    <% if(request.getAttribute("message") != null) { %> 
    <p><br></p> 
    <p><br></p> 
     
      <div class="alert alert-danger text-center" role="alert"><%=(String)request.getAttribute("message") %></div>
    <% } %>

    <p><br></p>

    
    
    <div class="login-wrap">
      <form method="post" action="loginController.jsp">
      <div class="login-html">
        <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab"><strong>Sign In</strong></label>
        <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"><strong>Sign Up</strong></label>
        <div class="login-form">
          <div class="sign-in-htm">
            <div class="group">
              <label for="user" class="label"><strong>Username</strong></label>
              <input id="user" type="text" name="username" class="input" required>
            </div>
            <div class="group">
              <label for="pass" class="label"><strong>Password</strong></label>
              <input id="pass" type="password" name="password" class="input" data-type="password" required>
            </div>
            <div class="group">
              <button class="button" name="submit" type="submit">Sign In</button>
            </div>
            <h6>If you dont have an account, sign up!</h6>
            <h4 style="color: white">If you want to sign-in try <p>username: skalipetis | password: 123456 </p></h4>
            </form>
            <div class="hr"></div>
          </div>
          <form method="post" action="../servlet/signupController">
          <div class="sign-up-htm">
            <div class="group">
              <label for="pass" class="label"><strong>Name</strong></label>
              <input id="pass" type="text" name="name" class="input">
            </div>
            <div class="group">
              <label for="pass" class="label"><strong>Surname</strong></label>
              <input id="pass" type="text" name="surname" class="input">
            </div>
            <div class="group">
              <label for="pass" class="label"><strong>Email Address</strong></label>
              <input id="pass" type="text" name="email" class="input">
            </div>
            <div class="group">
              <label for="user" class="label"><strong>Username</strong></label>
              <input id="user" type="text" name="username" class="input">
            </div>
            <div class="group">
              <label for="pass" class="label"><strong>Password</strong></label>
              <input id="pass" type="password" name="password" class="input" data-type="password">
            </div>
            <div class="group">
              <label for="pass" class="label"><strong>Repeat Password</strong></label>
              <input id="pass" type="password" name="confirm" class="input" data-type="password">
            </div>
            <div class="group">
              <label for="pass" class="label"><input id="pass" type="checkbox" name="checkbox"><strong> I agree to the terms and conditions</strong></label>
             </div>
            <div class="group">
              <button name="submit" type="submit" class="button">Sign Up</button>
            </div>
            <div class="hr"></div>
          </div>
        </div>
      </div>
      </form>
    </div>
 




    <p><br></p>
    <!-- Footer -->
    <footer class="py-5 bg-dark">
    <div class="text-center text-white">
      <h3><b>Contact us</b></h3>
      Athens University of Economics & Business <br>
      28th Oktovriou 76, Athens 104 34 <br>
      P: 6979876987
    </div>
    <br>
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; FindCrew 2018</p>
    </div>
    <!-- /.container -->
    </footer>


    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom JavaScript for this theme -->
    <script src="js/scrolling-nav.js"></script>

  </body>

</html>
