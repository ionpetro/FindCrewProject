<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>
<%@ page import="FindCrewJava.*" %>

<!--EDO KAPOS FERNO TO ID, PARADEIGMA: -->
<% String x  = request.getParameter("idcrew");

   int id = Integer.parseInt(x);

   CrewDAO cdao = new CrewDAO();
    Crew individual = cdao.getIndividual(id);
 %>

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
	    <%@ include file="navigationmenu_shipowner.jsp"%>
	    <!-- Page Content -->
	    <div class="container">
	    	<div class="row">
	    	    <div class=" col-lg-4 col-md-4">
		            <div class="card">
		            	<img class="card-img-top" src="images/<%=individual.getImage_file()%>" alt="Card image cap"  >
		           		<div class="card-body" style="background-color: white">
		             		 <h2 class="card-title"style="text-align: center"><%=individual.getName()%> <%=individual.getSurname() %></h2>
		              		<h6 class="card-subtitle mb-2 text-muted"style="text-align: center"><%=individual.getProfession() %></h6>
		              		<br>
		                    <ul class="list-group list-group-flush" >
			                	<li class="list-group-item">Availddable: <%=individual.getAvailability() %></li>
			               	    <li class="list-group-item">Gender: <%=individual.getGender() %></li>
			                	<li class="list-group-item">Age:<%=individual.getAge() %></li>
			               	    <li class="list-group-item">Country: <%=individual.getCountry() %></li>
			                </ul>
		                </div>
	                </div>
		        </div>
		       
		        <div class=" col-lg-8 col-md-8  ">
		            <div class="card">
		              <div class="card-header"><b>Personal Information</b></div>
		              <div class="card-body">
		               		<p class="card-text"><%=individual.getDescription() %></p>
		              </div>
		            </div>
                    <p></p>
		            <div class="card" >
		            	<div class="card-header"><b>Experience</b></div>
		             	<div class="card-body">
			                <p><%=individual.getCv_experience() %></p>
			                
		               </div>
		            </div>
                    <p></p>
		            <div class="card">
		            	<div class="card-header"><b>Education</b></div>
		             	<div class="card-body">
		                     <p><%=individual.getCv_education() %></p>
		                    
		               </div>
		            </div>
		            <p></p>
		            <div class="card">
		            	<div class="card-header"><b>Languages</b></div>
		             	<div class="card-body">
		                     <p><%=individual.getLanguages() %></p>
		               </div>
		            </div>
		            <a href="contact_request.jsp" class="btn btn-primary btn-lg" >Contact <%=individual.getName() %></a>
                    <a href="favorites.jsp" class="btn btn-primary btn-lg" > Save for later</a>

		        </div> 
		    </div>
	        <!-- /.row -->
	    </div>
	   <!-- /.container -->

	    <%@ include file = "footer.jsp" %>
 </body>

</html>
