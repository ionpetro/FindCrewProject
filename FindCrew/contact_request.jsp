<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>

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
  <div class="container">
    <div class=" col-lg-12 col-md-12 col-sm-12">
      <div class="card">
        <img class="card-img-top" src="images/background.jpg" alt="Card image cap" style="width: width:100px;height:350px;">
        <div class="card-body" >
          <h3 class="card-title">Contact Request</h3>

          <form class="form-horizontal" name="form1" method="post" action="servlet/Contact_request_controller" >

            
                <label for="usr">Username</label>
                <input type="text" class="form-control" id="username" required="textarea" name="name">
          
            
                <label for="usr">Period (Start - End)</label>
                <input type="text" class="form-control" id="surname" required="textarea" name="surname">
          
                <label for="usr">Departure point</label>
                <input type="text" class="form-control" id="email" required="textarea" name="email">
            
           
              <label for="comment">Description</label>
              <textarea class="form-control" rows="5" id="desc" name="description"></textarea>


           <p> </p>
           <div class="form-group">
              <label class="checkbox-inline">
                 <input type="checkbox" name="checkbox"value="checkbox">I agree with the terms and conditions
              </label>  
          </div>

           
           <div class="container col-md-6">
           <button type="submit" name="submit" class="btn btn-primary btn-block">Send</button> 
           </div> 

         </form> 

       </div>
      </div>
    </div>
  </div>

  

  <%@ include file = "footer.jsp" %>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
