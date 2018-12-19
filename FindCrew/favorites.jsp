<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="FindCrewJava.*" %>
<%@ page errorPage="error_page.jsp"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">

  <head>
	<%@ include file="header.jsp"%>
    <link href="css/favorites.css" rel="stylesheet">
  </head>

  <body id="page-top">

	<%@ include file="navigationmenu_shipowner.jsp"%>

    <header class="header-back text-white">
      <div class="container text-center">

        <h1><b>Saved profiles</b></h1>
        <p class="lead"><b>manage your crew!</b></p>
      </div>
    </header>

   <div class="container">
     <div class="row justify-content-center">
       <div class="col-lg-6 col-xl-6 col-xs-12 col-sm-12 col-md-12">
         <!-- Crew 1 -->`
          <div class="card my-4" id="profil" >
            <div class="row">
              <div class="col-sm-3" align="right">
                <img class="card-img-top" src="images/captain.jpg" alt="Card image cap">
              </div>
              <div class="col-sm-9">
                <h5>Jerry Liam</h5>
                <p>
                  <b>Profession:</b> 
                  Captain
                  <br> 
                  <b>Country:</b> 
                  Spain
                  <br> 
                  <b>Gender:</b> 
                  Man
                  <br>
                  <b>Available from:</b> 
                  20 December 2018
                  <div class="text-right">
                    <a href="individual.html"><button type="button" class="btn btn-primary btn">View Profile</button></a>
                  </div>
                </p>
              </div>
            </div>
          </div>
          <!-- /.row -->
          
          <!-- Crew 2 -->
          <div class="card my-4" id="profil">
            <div class="row">
              <div class="col-sm-3" align="right">
                <img class="card-img-top" src="images/member1.png" alt="Card image cap">
              </div>
              <div class="col-sm-9">
                <h5>Giorgos Kalipetis</h5>
                <p>
                  <b>Profession:</b> 
                  Deckhand
                  <br> 
                  <b>Country:</b> 
                  Greece
                  <br> 
                  <b>Gender:</b> 
                  Man
                  <br>
                  <b>Available from:</b> 
                  3 December 2017
                  <div class="text-right">
                    <button type="button" class="btn btn-primary btn">View Profile</button>
                  </div>
                </p>
              </div>
            </div>
          </div>
          <!-- /.row -->

          <hr>

          <!-- Pagination -->
          <ul class="pagination justify-content-center">
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
                <span class="sr-only">Previous</span>
              </a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
                <span class="sr-only">Next</span>
              </a>
            </li>
          </ul>
        </div>

        
     </div>
    </div>

<%@ include file="footer.jsp"%>	

  </body>

</html>
