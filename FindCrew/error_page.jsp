<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
	
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Example error page</title>		
	</head>
	<body>
			
<% if(exception != null) { %>				
		<p><b>Σφάλμα:</b> <%=exception %></p>						
<% } %>			
		
	</body>
</html>