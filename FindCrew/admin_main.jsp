<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>


<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>FindCrew</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/admin_button.css" rel="stylesheet">
  </head>

<body id="page-top">

    <%@ include file="navigationmenu_shipowner.jsp"%>

    <div class="container">
      <p></p>
	  <h2 class="text-center hidden-xs hidden-sm hidden-md" style="color:#598881"><b>Time to manage FindCrew!</b></h2>

	</div>	
    <p></p>
    <div class="container col-md-2">

 	<p><button class="button">General Contacts</button></p>
 	<p><a href="admin_contact_request.jsp"><button class="button">Contact Requests</button></a></p>
 	<p><button class="button">Cvs</button></p>
 	<p><button class="button">Subscriptions</button></p>
       
     </div>
	


  </body>

</html>
