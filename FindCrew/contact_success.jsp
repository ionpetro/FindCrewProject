<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>


<!DOCTYPE html>
<html lang="en">
	<head>
		<%@ include file="header.jsp"%>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	
	
		<!-- automatically will redirect to index_ex2_8160107.jsp after 2 seconds -->
		<meta http-equiv="refresh" content="3;url=index.jsp" />

	    <link href="css/login.css" rel="stylesheet">

	    <link href="css/signin.css" rel="stylesheet">
	
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

	    <p><br></p>
	    <p><br></p>
	    <p><br></p>
		<div class="container theme-showcase" role="main">

			<div class="alert alert-success text-center" role="alert"><h3>Υour message was sent successfully! We will contact you soon..</h3></div>		

		</div>
		<!-- /container -->
	</body>
</html>
