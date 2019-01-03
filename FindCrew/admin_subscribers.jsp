<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="FindCrewJava.*" %>
<%@ page errorPage="error_page.jsp"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
SubscriberDAO sdao = new SubscriberDAO();
List<Subscriber> subscribers = sdao.getSubscriber();
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
				<h1><b>Manage your subscribers!</b></h1>
			</div>
		</header>
		
		<br>

		<div class="container">
			<div class="row justify-content-center">
				<table>
						<tr>
							<th>#</th>
							<th>Fullname</th>
							<th>Email</th>
						</tr>
					<%
						int i = 0;
						for (Subscriber subscriber : subscribers) {
							i = i +1;
					%>
								<tr>
								<td><%=i %></td>
								<td><%=subscriber.getFullname() %></td>
								<td><%=subscriber.getEmail() %></td>
								</tr>
					<% } %>
				</table>
			</div>
			<br>
			
			<div class="text-center">
				<button type="button" class="btn btn-primary btn-md"><span class="glyphicon glyphicon-menu-left">Back to menu</button>
			</div>
			<br>
		</div>

		<%@ include file="footer.jsp"%>	
	</body>
</html>
