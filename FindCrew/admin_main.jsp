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

    <%@ include file="navigationmenu_shipowner.jsp"%>

    <div class="container">
	  <h2 class="text-center hidden-xs hidden-sm hidden-md" style="color: #585858">Time to manage FindCrew!</h2>

	</div>	

    <div class="container col-md-2">

 	<p><button type="button" class="btn btn-primary btn-lg btn-block">General Contacts</button></p>
 	<p><button type="button" class="btn btn-primary btn-lg btn-block">Contact Requests</button></p>
 	<p><button type="button" class="btn btn-primary btn-lg btn-block">Cvs</button></p>
 	<p><button type="button" class="btn btn-primary btn-lg btn-block">Subscriptions</button></p>
       
     </div>
	
	<%@ include file = "footer.jsp" %>

  </body>

</html>
