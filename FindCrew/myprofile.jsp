<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>
<%@ page import="LoginJava.*" %>


<!DOCTYPE html>
<html lang="en">

  <head>
	<%@ include file="header.jsp"%>


    <link rel="stylesheet" type="text/css" href="css/profile.css">
	    <!-- Custom style for main html -->
    <link href="css/main_css.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/individual.css" rel="stylesheet">


  </head>

  <body id="page-top">

	<%@ include file="navigationmenu_shipowner.jsp"%>

	<% UserLogin user = (UserLogin)session.getAttribute("user-object"); %>

    <header class="header-back text-black">
      <div class="container text-center">
        <h1><b>My profile</b></h1>

      </div>
    </header>
    
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
	<div class="center">
<div class="container">

	<div class="row">
		<div class="col-lg-12 col-sm-18">

            <div class="card hovercard">
                <div class="cardheader">

                </div>
                <div class="avatar">
                    <img alt="" src="images/member1.png">
                </div>
                <div class="info">
                    <div class="title">
                        <%= user.getEmail()%> <%= user.getName()%>
                    </div>
                    <div class="desc">Shipowner</div>
                    <div class="desc">FindCrew Member</div>
                </div>
                <div class="bottom">
                    <a class="btn btn-primary btn-twitter btn-sm" href="https://twitter.com/webmaniac">
                        <i class="fa fa-twitter"></i>
                    </a>
                    <a class="btn btn-danger btn-sm" rel="publisher"
                       href="https://plus.google.com/+ahmshahnuralam">
                        <i class="fa fa-google-plus"></i>
                    </a>
                    <a class="btn btn-primary btn-sm" rel="publisher"
                       href="https://plus.google.com/shahnuralam">
                        <i class="fa fa-facebook"></i>
                    </a>
                    <p><br></p>
                    
                </div>
            </div>

        </div>

	</div>
</div>
</div>



<!-- Footer -->
	<footer class="py-3 bg-dark down">
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

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom JavaScript for this theme -->
    <script src="js/scrolling-nav.js"></script>

  </body>

</html>
