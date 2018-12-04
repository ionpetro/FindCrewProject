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

	    <form>
			<div class="container">
				<div class="horizontal-center">
	    		   <div class=" col-lg-8 col-md-8">	
	    		   	<h2 style="color: #598881">Fill out the form and become a FindCrewer!</h2>  
	    		   		<div class="card">
			              <div class="card-header"><b>General Information</b></div>
			              <div class="card-body form-inline center">
			               		 <div class="form-group">
								    <label for="name">Name : </label>
								    <input type="name" class="form-control" id="name">
								    &nbsp; &nbsp;
								  </div>
								  <div class="form-group">
								    <label for="surname">Surname : </label>
								    <input type="surname" class="form-control" id="surname">
								  </div> 
			              </div>
			              <div class="card-body form-inline center">
			               		<div class="form-group form-inline center">
							    	<label for="Profession">Profession : </label>
							    	<input type="Profession" class="form-control" id="Profession">
								</div>
								    &nbsp; &nbsp;
								<div class="form-group">
								    <label for="country">Country : </label>
								    <input type="country" class="form-control" id="country">
								</div> 
			              </div>
			              <div class="card-body form-inline center">
			               		<div class="form-group form-inline center">
							    	<label for="availability">Availability : </label>
							    	<input type="availability" class="form-control" id="availability">
								</div>
								    &nbsp; &nbsp;
								<div class="form-group">
								    <label for="age">Age : </label>
								    <input type="age" class="form-control" id="age">
								</div> 
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
								    <input type="Describe" class="form-control" id="Describe">
								  </div>
			              </div>
			            </div>

			            <div class="card" >
			            	<div class="card-header"><b>Experience</b></div>
			             	<div class="card-body">
				                <div class="form-group">
							    	<label for="experience">Your working experience: </label>
							    	<textarea rows="3" type="experience" class="form-control" id="experience">Please include the period</textarea>
							  	</div>
			               </div>
			            </div>

			            <div class="card">
			            	<div class="card-header"><b>Education</b></div>
			             	<div class="card-body">
			                     <div class="form-group">
							    	<label for="education">Your education: </label>
							    	<textarea rows="3" type="education" class="form-control" id="education">Please include the period</textarea>
							  	</div>
			               </div>
			            </div>
			            <div class="card">
			            	<div class="card-header"><b>Languages</b></div>
			             	<div class="card-body">
								<input type="language" class="form-control" id="language"> 
			               </div>
			            </div>
			            <div>
			           <br>
			           <input type="checkbox" name="vehicle2" value="Car" required> I consent to send my data to the admin of the platform<br>
			           <p>
			            <small>*After you apply, your application will be evaluated by the admin and he will contact with you asap</small></p>
			
					  </div>
					 <div class="inline-block">
			              <a href=""><button type="submit" class="btn btn-primary btn-md" style="background:#598881;color:white;">Submit</button></a>
			              <button type="reset" value="Reset" class="btn btn-primary btn-md" style="background:#c06666;color:white;">Reset</button>
			         </div>
		        	</div> 

				</div>
			</div>
		</form>

		

	    <%@ include file = "footer.jsp" %>

	   

	    <!-- Bootstrap core JavaScript -->
	    <script src="vendor/jquery/jquery.min.js"></script>
	    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

 </body>

</html>
