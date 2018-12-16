<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>

<%
String name = request.getParameter("name");
String surname = request.getParameter("surname");
String email = request.getParameter("email");
String comment = request.getParameter("comment");

GeneralContactDAO gc = new GeneralContactDAO();
try {

 gc.sendRequest(name,surname,email,comment);

 
%> <jsp:forward page = "index.jsp" /> <%

}catch(Exception e) {
	
%> <jsp:forward page = "error.jsp" /> <% 


}


%>

