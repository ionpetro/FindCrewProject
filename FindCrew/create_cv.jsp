<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>
<%@ page import="LoginJava.*" %>

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

	    <%
			if (session.getAttribute("user-object") == null) {
		%>
	        <p><br></p>
	        <p><br></p>
			<div class='container text-center'>
			<h1>Oups! No authorization</h1>
			<div class='alert alert-danger' role='alert'>Sorry, you have to register in order to create an application!</div>
			 <div style="align-self: center;">
	              <a href="login.jsp"><button type="button" class="btn btn-default btn-md" style="background:#598881;color:white;">Go to Register!</button></a>
	         </div>
	     </div>


	        <% } else { %>
	         
	    <form method="post" action="applicationController.jsp">
			<div class="container">
				<div class="horizontal-center">
	    		   <div class=" col-lg-12 col-md-12">	
	    		   	<h2 style="color: #598881">Fill out the form and become a FindCrewer!</h2>  
	    		   		<div class="card">
			              <div class="card-header"><b>General Information</b></div>
			              <div class="card-body">
			              	 <div class="row">
							    <div class="col">
							    	<label for="name">Name : </label>
							      	<input type="text" name="name" class="form-control" placeholder="ex. George">
							    </div>
							    <div class="col">
							    	<label for="surname">Surname : </label>
							      	<input type="text" name="surname" class="form-control" placeholder="ex. Papadopoulos">
							    </div>
							  </div><br>
							  <div class="row">
							    <div class="col">
							    	<label for="name">Profession : </label>
							      	<input type="text" name="profession" class="form-control" placeholder="ex. Captain">
							    </div>
							    <div class="col">
							    	<label for="surname">Availability : </label>
							      	<input type="text" name="availability" class="form-control" placeholder="ex. 01/06/2018 - 01/06/2019">
							    </div>
							 	</div><br>
							 	<div class="row">
							    <div class="col">
							    	<label for="name">Age : </label>
							      	<input type="number" name="age" class="form-control" placeholder="ex. 25" required>
							    </div>
							    <div class="col">
							    	<label for="surname">Country : </label>
							      	<input type="text" name="country" class="form-control" placeholder="ex. Greece">
							    </div>
							 	</div><br>
			             	 </div>
			          
			             	<div class="form-group center">
							    <label for="age">Gender : </label>
							    <input type="radio" name="gender" value="male" checked> Male
  								<input type="radio" name="gender" value="female"> Female
							</div>

						</div>
			              

			            <div class="card">
			              <div class="card-header"><b>Personal Information</b></div>
			              <div class="card-body">
			               		  <div class="form-group">
								    <label for="brief">Describe yourself briefly:</label>
								    <input type="Describe" name="describe" class="form-control" id="Describe" placeholder="Describe your personal traits">
								  </div>
			              </div>
			            </div>

			            <div class="card" >
			            	<div class="card-header"><b>Education</b></div>
			             	<div class="card-body">
				                <div class="form-group">
							    	<label for="experience">Your education: </label>
							    	<textarea rows="3" name="education" type="education" class="form-control" id="education" placeholder="Please include the period"></textarea>
							  	</div>
			               </div>
			            </div>

			            <div class="card">
			            	<div class="card-header"><b>Experience</b></div>
			             	<div class="card-body">
			                     <div class="form-group">
							    	<label for="education">Your working experience: </label>
							    	<textarea rows="3" name="experience" type="experience" class="form-control" id="experience" placeholder="Please include the period"></textarea>
							  	</div>
			               </div>
			            </div>
			            <div class="card">
			            	<div class="card-header"><b>Languages</b></div>
			             	<div class="card-body">
								<input type="language" name="languages" class="form-control" id="language" placeholder="ex. english, spanish, french"> 
			               </div>
			            </div>
			            <div>
			           <br>
			           <input type="checkbox" name="checkbox" value="consent" required> I consent to send my data to the admin of the platform<br>
			           <p>
			            <small>*After you apply, your application will be evaluated by the admin and he will contact with you asap</small></p>
			
					  </div>
					 <div class="inline-block">
			              <a href=""><button type="submit" name="submit" class="btn btn-primary btn-md" style="background:#598881;color:white;">Submit</button></a>
			              <button type="reset" value="Reset" class="btn btn-primary btn-md" style="background:#c06666;color:white;">Reset</button>
			         </div>
		        	</div> 

				</div>
			</div>
		</form>

		<% } %>
		<% if (session.getAttribute("user-object") != null) { %>
		<!-- Footer -->
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
	    <% } %>
	   		
	    <!-- Bootstrap core JavaScript -->
	    <script src="vendor/jquery/jquery.min.js"></script>
	    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

 </body>

</html>
