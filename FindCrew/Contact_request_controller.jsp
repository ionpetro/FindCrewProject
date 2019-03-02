<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp" %>
<%@ page import="ContactRequestJava.*" %>
<%@ page import="FindCrewJava.*" %>
<%@ page import="LoginJava.*" %>




<%

String start = request.getParameter("start");
String end = request.getParameter("end");
String departure = request.getParameter("departure");
String description = request.getParameter("description");

UserLogin user = (UserLogin)session.getAttribute("user-object");
int shipowner_id = user.getShipownerid();

int crew_id = 1;



ContactRequest cr = new ContactRequest(crew_id, shipowner_id, start, end, departure, description);
ContactRequestDAO cdao = new ContactRequestDAO();

try{

    cdao.sendRequest(cr); 
%>  
    
	<jsp:forward page = "contact_success.jsp" />
<%
}catch(Exception e) {
	
%> <jsp:forward page = "error_page.jsp" /> <% 


}


%>


