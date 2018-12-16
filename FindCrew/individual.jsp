<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>

<!DOCTYPE html>
<html lang="en">

  <head>

	    <%@ include file ="header.jsp" %>


	    <!-- Custom style for main html -->
	    <link href="css/main_css.css" rel="stylesheet">

	    <!-- Custom styles for this template -->
	    <link href="css/individual.css" rel="stylesheet">
 </head>

 <body>
         <!-- Here should be an "if" in order to see if the user has loged in or not -->
	    <%@ include file = "navbar_before.jsp" %>

	    <!-- Page Content -->

	    <div class="container">
	    	<div class="row">
	    	    <div class=" col-lg-4 col-md-4">
		            <div class="card">
		            	<img class="card-img-top" src="images/captain.jpg" alt="Card image cap" >
		           		<div class="card-body" style="background-color: white">
		             		 <h2 class="card-title"style="text-align: center">Jerry Liam</h2>
		              		<h6 class="card-subtitle mb-2 text-muted"style="text-align: center">Captain</h6>
		              		<br>
		                    <ul class="list-group list-group-flush" >
			                	<li class="list-group-item">Available: 20.12.2018</li>
			               	    <li class="list-group-item">Gender: Male</li>
			                	<li class="list-group-item">Age: 55</li>
			               	    <li class="list-group-item">Country: Spain</li>
			                </ul>
		                </div>
	                </div>
		        </div>
		       
		        <div class=" col-lg-8 col-md-8  ">
		            <div class="card">
		              <div class="card-header"><b>Personal Information</b></div>
		              <div class="card-body">
		               		<p class="card-text">Jerry is an experienced captain who lives in Spain. He is energetic and problem-oriented.</p>
		              </div>
		            </div>
                    <p></p>
		            <div class="card" >
		            	<div class="card-header"><b>Experience</b></div>
		             	<div class="card-body">
			                <p>2010 - 2017: Captain for private boats</p>
			                <p>1997 - 2010: Oceangold Tankers</p>
			                <p>1985 - 1997: British Tanker company </p>
		               </div>
		            </div>
                    <p></p>
		            <div class="card">
		            	<div class="card-header"><b>Education</b></div>
		             	<div class="card-body">
		                     <p>1981 - 1985: University of Spain, Ship management</p>
		                     <p>1963 - 1981: Educación Secundaria Obligatoria</p>
		               </div>
		            </div>
		            <p></p>
		            <div class="card">
		            	<div class="card-header"><b>Languages</b></div>
		             	<div class="card-body">
		                     <p>English, Spanish</p>
		               </div>
		            </div>
		            <a href="contact_request.html" class="btn btn-primary btn-lg" >Contact Jerry</a>
                    <a href="favorites.html" class="btn btn-primary btn-lg" > Save for later</a>

		        </div> 
		    </div>
	        <!-- /.row -->
	    </div>
	   <!-- /.container -->

	    <%@ include file = "footer.jsp" %>

	   

	    <!-- Bootstrap core JavaScript -->
	    <script src="vendor/jquery/jquery.min.js"></script>
	    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

 </body>

</html>
