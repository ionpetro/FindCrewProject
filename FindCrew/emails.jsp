<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java_pac.*" %>



<!DOCTYPE html>
<html lang="en">

  <head>
<%@ include file="header.jsp"%>

    <!-- Custom styles for this template -->
    <link href="css/contact.css" rel="stylesheet">

  </head>

  <body>
    <%
    Crew crew = (Crew)session.getAttribute("crew_1");
    %>
<%@ include file="navigationmenu_shipowner.jsp"%>

<p> Name:  <%=user.getName()%> </p>

<%@ include file="footer.jsp"%>	
</body>
</html>