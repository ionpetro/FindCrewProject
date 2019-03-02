<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp" %>
<%@ page import="FindCrewJava.*" %>

<%
String name = request.getParameter("subname");
String email = request.getParameter("subemail");

SubscriberDAO sdao = new SubscriberDAO();

try {
	sdao.findSubscriber(email);
	Subscriber sbr = new Subscriber(name, email);
	sdao.saveSubscriber(sbr);
	request.setAttribute("success", "You have successfully subscribed to our newsletter");
} catch (Exception e) {
	request.setAttribute("error", e.getMessage());
}
%>
<jsp:forward page = "profiles.jsp" /> 