<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>


<!DOCTYPE html>
<html lang="en">

  <head>

    <%@ include file= "header.jsp" %>

    <!-- Custom styles for this template -->
    <link href="css/admin.css" rel="stylesheet">




    

  </head>

  <body id="page-top">

    <%@ include file="navbar_admin_main.jsp"%>

    <div class="container">
	  <h2 class="text-center hidden-xs hidden-sm hidden-md" style="color: #585858">Time to manage FindCrew!</h2>

	</div>	

    <div class="container col-md-2">

 	<p><button type="button" class="btn btn-primary btn-lg btn-block">General Contacts</button></p>
 	<p><button type="button" class="btn btn-primary btn-lg btn-block">Contact Requests</button></p>
 	<p><button type="button" class="btn btn-primary btn-lg btn-block">Cvs</button></p>
 	<p><button type="button" class="btn btn-primary btn-lg btn-block">Subscriptions</button></p>
       
     </div> 
  
   
 	
   

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom JavaScript for this theme -->
    <script src="js/scrolling-nav.js"></script>

  </body>

</html>
