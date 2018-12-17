<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>
<%@ page import="LoginJava.*" %>

<!-- Navigation -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" id="mainNav">
		  <div class="container">
			<a class="navbar-brand js-scroll-trigger" href="index.jsp"><img style="max-width:110px; margin-top: -4px;" src="images/l.png "></a>
			
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
			  <span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
			  <ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown">              
					<a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">About</a>
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
					  <a href="index.jsp#about" class="dropdown-item">About Us</a>
					  <a href="index.jsp#services" class="dropdown-item">Services</a>
					  <a href="index.jsp#team" class="dropdown-item">Team</a>
					</div>
				</li>
				<li class="nav-item">
				  <a class="nav-link" href="profiles.jsp">Crew</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link js-scroll-trigger" href="index.jsp#contact">Contact</a>
				</li>
				<%
					if (session.getAttribute("user-object") == null){
				%>
				<li class="nav-item">
				  <a class="nav-link js-scroll-trigger" href="login.jsp">Login</a>
				</li>
				<%
					} else {
						UserLogin user = (UserLogin)session.getAttribute("user-object");
				%>
				<li class="nav-item">
				  <a class="nav-link js-scroll-trigger" href="logout.jsp">Logout</a>
				</li>
				<li class="nav-item dropdown">              
					<a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#"><i><b><%=user.getUsername()%></b></i></a>
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
					  <a href="favorites.jsp" class="dropdown-item">My favorites</a>
					</div>
				</li>
				<%
					}
				%>
			  </ul>
			</div>
		  </div>
		</nav>