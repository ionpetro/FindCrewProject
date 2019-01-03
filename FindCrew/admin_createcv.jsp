<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="FindCrewJava.*" %>
<%@ page errorPage="error_page.jsp"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Apply.*" %>

<%
ApplicationDAO adao = new ApplicationDAO();
List<Application> applications = adao.getApplications();
%>


<!DOCTYPE html>
<html lang="en">

	<head>
		<%@ include file="header.jsp"%>
		<link href="css/subscribers.css" rel="stylesheet">
	</head>

	<body id="page-top">

		<%@ include file="navigationmenu_shipowner.jsp"%>

		<header class="header-back text-white">
			<div class="container text-center">
				<h1><b>Manage your applications!</b></h1>
			</div>
		</header>
		
		<br>

		<div class="container">
			<div class="row justify-content-center">
				<table>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Surname</th>
							<th>Profession</th>
							<th>Availability</th>
							<th>Age</th>
							<th>Country</th>
							<th>Gender</th>
							<th>Personal Information</th>
							<th>Education</th>
							<th>Experience</th>
							<th>Languages</th>
						</tr>
					<%
						for (Application appl : applications) {
					%>
								<tr>
								<td><%=appl.getID() %></td>
								<td><%=appl.getName() %></td>
								<td><%=appl.getSurname() %></td>
								<td><%=appl.getProfession() %></td>
								<td><%=appl.getAvailability() %></td>
								<td><%=appl.getAge() %></td>
								<td><%=appl.getCountry() %></td>
								<td><%=appl.getGender() %></td>
								<td><%=appl.getDescribe() %></td>
								<td><%=appl.getEducation() %></td>
								<td><%=appl.getExperience() %></td>
								<td><%=appl.getLanguages() %></td>
								</tr>
					<% } %>
				</table>
			</div>
			<br>
			
			<div class="text-center">
				<a href="admin_main.jsp">
					<button type="button" class="btn btn-primary btn-md"><span class="glyphicon glyphicon-menu-left">Back to menu</button>
				</a>
			</div>
			<br>
		</div>

		<%@ include file="footer.jsp"%>	
	</body>
</html>
