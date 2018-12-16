<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>




<%
String username = request.getParameter("username");
String start = request.getParameter("start");
String end = request.getParameter("end");
String departure = request.getParameter("departure");
String description = request.getParameter("description");

ContactRequestDAO cr = new ContactRequestDAO();

try {

 cb.sendRequest(username,start,end,departure,description);



%> <jsp:forward page = "index.jsp" /> <%

}catch(Exception e) {
	
%> <jsp:forward page = "error.jsp" /> <% 


}


%>



