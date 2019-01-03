<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="FindCrewJava.*" %>
<%@ page errorPage="error_page.jsp"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashSet" %>
<%@ page import="java.util.Set" %>
<%@ page import="Fields.*" %>


<%
String prof = "null";
String coun = "null";
String gend = "null";
if (request.getParameter("profession") != null){
	prof = request.getParameter("profession");
}
if (request.getParameter("country") != null) {
	coun = request.getParameter("country");
}
if (request.getParameter("gender") != null) {
	gend = request.getParameter("gender");
}


CrewDAO cdao = new CrewDAO();

List<Crew> crews = new ArrayList<Crew>();
crews = cdao.getAllCrews();

if ((!prof.equals("none")) && (!coun.equals("none"))) {
	crews = new ArrayList<Crew>();
	crews = cdao.getCrews(prof, coun);
}

if (((!prof.equals("none")) && (coun.equals("none"))) || ((!prof.equals("none")) && (coun.equals("null")))) {
	crews = new ArrayList<Crew>();
	crews = cdao.getCrewsByProf(prof);
}

if (((prof.equals("none")) && (!coun.equals("none"))) || ((prof.equals("null")) && (!coun.equals("none")))){
	crews = new ArrayList<Crew>();
	crews = cdao.getCrewsByCoun(coun);
}
if( prof == "null" && coun == "null") {
	crews = new ArrayList<Crew>();
	crews = cdao.getAllCrews();
}
if (gend != "null") {
	crews = new ArrayList<Crew>();
	crews = cdao.getFilterCrews(prof, coun, gend);
}

 
/*
if ((!prof.equals(" ")) & (!coun.equals(" ")) & (!gend.equals(" "))) {
	crews = cdao.getFilterCrews(prof, coun, gend);
}
*/

// Instruct the browser not to cache this page
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>

<%
indexfieldsDAO ud = new indexfieldsDAO();
Set<indexfields> fields = ud.getFields();
Set<String> proffield = new HashSet<String>();
Set<String> countfield = new HashSet<String>();

for(indexfields field : fields) {
    proffield.add(field.getProfession());
}
for(indexfields field : fields) {
    countfield.add(field.getCountry());
}
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
			<div class="kap">
				<!-- Page Heading -->
				<h2 class="text-center hidden-xs hidden-sm hidden-md">Find your crew</h2>
				<h6 class="text-center">All profiles have been approved by us</h6>
			</div>
			<hr>
			
			<% if(request.getAttribute("error") != null) { %>		
				<div class="alert alert-danger text-center" role="alert"><%=(String)request.getAttribute("error") %></div>
			<% } %>
			<% if(request.getAttribute("success") != null) { %>		
				<div class="alert alert-success text-center" role="alert"><%=(String)request.getAttribute("success") %></div>
			<% } %>
			<div class="row">
				<div class="col-lg-3 col-xl-3">
					<div class="card my-4">
						<h5 class="card-header" align="center">Search Filters</h5>
						<div class="card-body">
							<form method="post" action="profiles.jsp">
								<input type="hidden" name="filters">
								<div class="form-group">
									<label for=""><b>Profession:</b></label>
									<% for(String profession : proffield) { %>
									<% if (prof.equals(profession)){ %>
									<br>
									<input id="profession" name="profession" type="radio" value="<%=profession%>" checked="checked"> <%=profession%>
									<% } else {%>
									<br>
									<input id="profession" name="profession" type="radio" value="<%=profession%>"> <%=profession%>
									<% } %>
									<% } %>
								</div>
								
								<div class="form-group">
									<label for="" value="none"><b>Country:</b></label>
									<% for(String country : countfield) { %>
									<% if (coun.equals(country)){ %>
									<br>
									<input id="country" name="country" type="radio" value="<%=country %>" checked="checked"> <%=country %>
									<% } else {%>
									<br>
									<input id="country" name="country" type="radio" value="<%=country %>"> <%=country %>
									<% } %>
									<% } %>
								</div>
								
								<div class="form-group">
									<label for=""><b>Gender:</b></label>
									<br>
									<%if (gend.equals("Female")){ %>
									<input id="gender" name="gender" type="radio" value="Female" checked="checked"> Female
									<% } else {%>

									<input id="gender" name="gender" type="radio" value="Female"> Female

									<% } %>

									<br>

									<% if (gend.equals("Male")){ %>

									<input id="gender" name="gender" type="radio" value="Male" checked="checked"> Male

									<%} else {%>

									<input id="gender" name="gender" type="radio" value="Male"> Male

									<% } %>
								</div>
								<div class="text-right">
									<button type="submit" class="btn btn-primary btn-md">Search</button>
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
							<form method="post" action="SubscribeController.jsp">
								<input type="hidden" name="filters">
								<div class="form-group" align="center">
									<input type="text" name="subname" placeholder="Your fullname" required>
								</div>
								<div class="form-group" align="center">
									<input type="email" name="subemail" placeholder="Your email" required>
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-primary btn-md">Subscribe</button>
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
