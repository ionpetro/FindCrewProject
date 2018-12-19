<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>




<%
String username = request.getParameter("username");
String period = request.getParameter("period");
String departure = request.getParameter("departure");
String description = request.getParameter("description");


try {
%>
	<jsp:forward page = "index.jsp" />
<%

} catch (Exception e) {
	
%>
<jsp:forward page = "erro.jsp" /> 
<% 
}
%>



