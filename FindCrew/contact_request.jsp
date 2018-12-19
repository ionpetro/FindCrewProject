<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>

<!DOCTYPE html>
<html lang="en">

  <head>
	<%@ include file= "header.jsp" %>

    <!-- Custom styles for this template -->
    <link href="css/contact.css" rel="stylesheet">

  </head>

  <body>

     <% if (session.getAttribute("user-object") == null){
       %>
           <jsp:forward page = "login.jsp" />
           <%
        }
    %>


<%@ include file="navigationmenu_shipowner.jsp"%>
  <div class="container">
    <div align="center">
    <div class=" col-lg-6 col-md-6 col-sm-6">
      <div class="card">
        <div align="left">
        <div class="card-body" >
          <h3 class="card-title">Contact Request</h3>

          <form class="form-horizontal" name="form1" method="post" action="Contact_request_controller.jsp" >

            
                <label for="usr">Username</label>
                <input type="text" class="form-control" id="username" required="textarea" name="username">
          
            
                <label for="usr">Starting Period </label>
                <input type="text" class="form-control" id="start" required="textarea" name="start">

                <label for="usr">Ending Period </label>
                <input type="text" class="form-control" id="end" required="textarea" name="end">
          
                <label for="usr">Departure point</label>
                <input type="text" class="form-control" id="email" required="textarea" name="departure">
            
           
              <label for="comment">Description</label>
              <textarea class="form-control" rows="5" id="desc" required="textarea" name="description"></textarea>


           <p> </p>
           <div class="form-group">
              <label class="checkbox-inline">
                 <input type="checkbox" name="checkbox" required="textarea" value="checkbox">I agree with the terms and conditions
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
  </div> 
  </div>

  

  <%@ include file = "footer.jsp" %>

  </body>

</html>
