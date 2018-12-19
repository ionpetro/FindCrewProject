<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>

<%@ page import="LoginJava.*"%>

<%
//get parameter from request
String username = request.getParameter("username");
String password = request.getParameter("password");


UserLoginDAO ud = new UserLoginDAO();

try {
	ud.authenticate(username, password);
} catch (Exception e) {
	request.setAttribute("message", e.getMessage());
%>
<jsp:forward page = "login.jsp"/> 
<% 
}



UserLogin usr = ud.findUser(username);
session.setAttribute("user-object", usr);
%>
<jsp:forward page = "index.jsp"/>

	

