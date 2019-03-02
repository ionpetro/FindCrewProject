<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex2_8160107.jsp"%>

<%
session.invalidate();
%>
-
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		
		<!-- automatically will redirect to index_ex2_8160107.jsp after 2 seconds -->
		<meta http-equiv="refresh" content="2;url=index.jsp" />
		
		<meta name="description" content="2η Ατομική Άσκηση - Sign out page">
		<meta name="author" content="your email here">
		<link rel="icon" href="images/favicon.ico">
		
		<title>Sign out page</title>
		
	   <!-- Bootstrap core CSS -->
	    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	    <link href='css/signupcontroller.css' rel='stylesheet'>


	
	</head>
	<body>

		<!-- Fixed navbar -->
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

	    <p><br></p>
	    <p><br></p>
		<div class="container theme-showcase" role="main">

			<div class="alert alert-success text-center" role="alert">You have successfully logged out!</div>		

		</div>
		<!-- /container -->

		<footer class="py-3 bg-dark">
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
		</footer>
	</body>
</html>
