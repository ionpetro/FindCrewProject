<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="FindCrewJava.*" %>
<%@ page errorPage="error_page.jsp"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>


<%

String prof = request.getParameter("profession");
String coun = request.getParameter("country");

//UserLogin user = (UserLogin)session.getAttribute("user-object");

CrewDAO cdao = new CrewDAO();

/*
if (profession.equals("") & (country.equals("")){
	List<Crew> crews = cdao.getAllCrew();
} else {
	List<Crew> crews = cdao.getCrews(prof, coun);
}
*/

List<Crew> crews = cdao.getCrews(prof, coun);


// Instruct the browser not to cache this page
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);



%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<%@ include file="header.jsp"%>
		<link href="css/profiles.css" rel="stylesheet">
	</head>

	<body>
		
	<%@ include file="navigationmenu_shipowner.jsp"%>

		<!-- Page Content -->
		<div class="container">
		
			<!-- Page Heading -->
			<h2 class="text-center hidden-xs hidden-sm hidden-md">Find your crew</h2>
			<h6 class="text-center" style="color:#387B7A">All profiles have been approved by us</h6>
			
			<hr>
			<div class="row">
				<div class="col-lg-3 col-xl-3">
					<div class="card my-4">
						<h5 class="card-header" align="center">Search Filters</h5>
						<div class="card-body">
							<form>
								<input type="hidden" name="filters">
								<div class="form-group">
									<label for=""><b>Profession:</b></label>
									<br>
									<input id="profession0" name="profession" type="checkbox" value="Captain"> Captain
									<p>
									<input id="profession1" name="profession" type="checkbox" value="Sailor"> Sailor
									<br>
									<input id="profession2" name="profession" type="checkbox" value="Cleaner"> Cleaner
									<br>
									<input id="profession3" name="profession" type="checkbox" value="Cooker"> Cooker
									</p>
								</div>
								
								<div class="form-group">
									<label for=""><b>Country:</b></label>
									<br>
									<input id="country0" name="country" type="checkbox" value="greece"> Greece
									<p>
									<input id="country1" name="country" type="checkbox" value="germany"> Germany
									<br>
									<input id="country2" name="country" type="checkbox" value="cyprus"> Cyprus
									<br>
									<input id="country3" name="country" type="checkbox" value="spain"> Spain
									</p>
								</div>
								
								<div class="form-group">
									<label for=""><b>Gender:</b></label>
									<br>
									<input id="gender0" name="gender" type="checkbox" value="female"> Female
									<p>
									<input id="gender1" name="gender" type="checkbox" value="male"> Male
									</p>
								</div>
								
								<div class="text-right">
									<button type="button" class="btn btn-primary btn-md">Search</button>
									<button type="reset" value="Reset" class="btn btn-primary btn-md">Reset</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				
				<div class="col-lg-6 col-xl-6 col-xs-12 col-sm-12 col-md-12">
					
					<!-- Crew 1 -->
					<% for (Crew crew : crews) {%>
					<div class="card my-4" id="profil">
						<div class="row">
							<div class="col-sm-3" align="right">
								<img class="card-img-top" src="images/<%=crew.getImage_file() %>" alt="Card image cap">
							</div>
							<div class="col-sm-9">
								<h5><%=crew.getName() %> <%=crew.getSurname() %></h5>
								<p>
									<b>Profession:</b> 
									<%=crew.getProfession() %>
									<br> 
									<b>Country:</b> 
									<%=crew.getCountry() %>
									<br> 
									<b>Gender:</b> 
									<%=crew.getGender() %>
									<br>
									<b>Available from:</b> 
									<%=crew.getAvailability() %>
									<div class="text-right">
										<a href="individual.jsp?idcrew=<%=crew.getIdcrew() %>"><button type="button" class="btn btn-primary btn">View Profile</button></a>
									</div>
								</p>
							</div>
						</div>
					</div>
					<% } %>
					<!-- /.row -->

					<hr>

					<!-- Pagination -->
					<ul class="pagination justify-content-center">
						<li class="page-item">
							<a class="page-link" href="#" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Previous</span>
							</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#">1</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
								<span class="sr-only">Next</span>
							</a>
						</li>
					</ul>
				</div>
				
				<div class="col-lg-3 col-xl-3">
					<div class="card my-4">
						<h5 class="card-header" align="center">Join our community!</h5>
						<div class="card-body">
							<p align="center">Do you want to hear more from us? <br> Subscribe to our mailing list to receive our updates!</p>
							<form>
								<input type="hidden" name="filters">
								<div class="form-group">
									<input type="text" name="subname" placeholder="Your full name" required>
									<br>
									<input type="email" name="subemail" placeholder="Your email" required>
								</div>
								<div class="text-center">
									<button type="button" class="btn btn-primary btn-md">Subscribe</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.container -->

		<%@ include file="footer.jsp"%>	
	</body>
</html>
