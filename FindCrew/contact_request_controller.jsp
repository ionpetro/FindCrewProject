<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
String name = request.getParameter("name");
String password = request.getParameter("password");
%>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Crew page</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="css/contact.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" >
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="index.html"><img style="max-width:110px; margin-top: -4px;" src="images/l.png "></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.html">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="profiles.html">Crew</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.html #contact">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="login.html">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

<p> NAme:  <%=request.getParameter("name")%> </p>

</body>
</html>