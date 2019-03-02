<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>

<%@ page import="Apply.*"%>
<%@ page import="LoginJava.*"%>

<%
//get parameter from request
String name = request.getParameter("name");
String surname = request.getParameter("surname");
String profession = request.getParameter("profession");
String availability = request.getParameter("availability");
String ageString = request.getParameter("age");
String country = request.getParameter("country");
String gender = request.getParameter("gender");
String describe = request.getParameter("describe");
String experience = request.getParameter("experience");
String education = request.getParameter("education");
String languages = request.getParameter("languages");
String checkbox = request.getParameter("checkbox");

int age = Integer.parseInt(ageString);


UserLogin user1 = (UserLogin)session.getAttribute("user-object");
ApplicationDAO app = new ApplicationDAO();
Application apply1 = new Application(name, surname, profession, availability, age, country, gender, describe, experience, education, languages);


app.insertApplication(apply1, user1); %>


<!DOCTYPE html>
<html lang="en">

  <head>
	<%@ include file="header.jsp"%>

	<meta http-equiv="refresh" content="5;url=index.jsp" />

    <!-- Custom styles for this template -->
    <link href="css/mainpage.css" rel="stylesheet">

    <!-- Custom style for main html -->
    <link href="css/main_css.css" rel="stylesheet">

    <link href='css/signupcontroller.css' rel='stylesheet'>
  </head>

  <body id="page-top">

    <%@ include file="navigationmenu_shipowner.jsp"%>

    <p><br></p>
    <p><br></p>

    <div class="container theme-showcase" role="main">

		<div class="alert alert-success text-center" role="alert">You have successfully created an application! Now, the admins will be able to evaluate your CV.</div>	


		<p style="text-align: center;"> Transfering to FINDCREW HOME PAGE! <span id="countdowntimer">5 </span> Seconds</p>	

	</div>
	<footer class="py-3 bg-dark">
			<div class="text-center text-white">
				<h3><b>Contact us</b></h3>
				Athens University of Economics & Business <br>
				28th Oktovriou 76, Athens 104 34 <br>
				P: 6979876987
			</div>
			<br>
			<div class="container">
				<p class="m-0 text-center text-white">Copyright &copy; FindCrew 2018</p>
			</div>
	</footer>

		<script type="text/javascript">
	    var timeleft = 5;
	    var downloadTimer = setInterval(function(){
	    timeleft--;
	    document.getElementById("countdowntimer").textContent = timeleft;
	    if(timeleft <= 0)
	        clearInterval(downloadTimer);
	    },1000);
	</script>

</body>
</html>









