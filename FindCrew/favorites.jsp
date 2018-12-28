<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="FavouritesJava.*" %>
<%@ page import="FindCrewJava.*" %>
<%@ page errorPage="error_page.jsp"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%

FavouritesDAO  favourites = new FavouritesDAO();
int sid=1;
int crewid = 1;
favourites.addFavourite(sid,crewid);
List<Crew> crews = favourites.getFavourites(sid);

%>


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
          
          
          <% for (Crew crew : crews) {%>
          <div class="card my-4" id="profil">
            <div class="row">
              <div class="col-sm-3" align="right">
                <img class="card-img-top" src="images/<%=crew.getImage_file() %>" alt="Card image cap">
              </div>
              <div class="col-sm-9">
                <h5><%=crew.getName() %> <%=crew.getSurname() %></h5>
                <p>
                  <b>Profession:</b> 
                  <%=crew.getProfession() %>
                  <br> 
                  <b>Country:</b> 
                  <%=crew.getCountry() %>
                  <br> 
                  <b>Gender:</b> 
                  <%=crew.getGender() %>
                  <br>
                  <b>Available from:</b> 
                  <%=crew.getAvailability() %>
                  <div class="text-right">
                    <a href="individual.jsp?idcrew=<%=crew.getIdcrew() %>"><button type="button" class="btn btn-primary btn">View Profile</button></a>
                  </div>
                </p>
              </div>
            </div>
          </div>
          <% } %>
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
