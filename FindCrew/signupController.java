import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import LoginJava.*;

public class signupController extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException {
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = new PrintWriter(response.getWriter(), true);
		
		String name = request.getParameter("name");
		String surname = request.getParameter("surname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirm = request.getParameter("confirm");
		String email = request.getParameter("email");
		String checkbox = request.getParameter("checkbox");
		int shipownerid = 234;
		
		
		/* General try */
		try {
			out.println("<!DOCTYPE html>");
			out.println("<html lang='en'>");
			out.println("");
			out.println("  <head>");
			out.println("");
			out.println("    <meta charset='utf-8'>");
			out.println("    <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>");
			out.println("    <meta name='description' content=''>");
			out.println("    <meta name='author' content=''>");
			out.println("");
			out.println("    <title>FindCrew</title>");
			out.println("");
			out.println("    <!-- Bootstrap core CSS -->");
			out.println("    <link href='../FindCrew/vendor/bootstrap/css/bootstrap.min.css' rel='stylesheet'>");
			out.println("");
			out.println("    <!-- Custom styles for this template -->");
			out.println("    <link href='../FindCrew/css/login.css' rel='stylesheet'>");
			out.println("");
			out.println("    <!-- Custom style for main html -->");
			out.println("    <link href='../FindCrew/css/signupcontroller.css' rel='stylesheet'>");
			out.println("");
			out.println("    <!-- Font-Awesome icons -->");
			out.println("    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>");
			out.println("");
			out.println("    <link rel='icon' href='../FindCrew/images/favicon.ico'>");
			out.println("");
			out.println("");
			out.println("");
			out.println("    ");
			out.println("");
			out.println("  </head>");
			out.println("");
			out.println("  <body id='page-top'>");
			out.println("");
			out.println("<!-- Navigation -->");
			out.println("    <nav class='navbar navbar-expand-lg navbar-light bg-light fixed-top' id='mainNav'>");
			out.println("      <div class='container'>");
			out.println("        <a class='navbar-brand js-scroll-trigger' href='index.jsp'><img style='max-width:110px; margin-top: -4px;' src='../FindCrew/images/l.png '></a>");
			out.println("        ");
			out.println("        <button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarResponsive' aria-controls='navbarResponsive' aria-expanded='false' aria-label='Toggle navigation'>");
			out.println("          <span class='navbar-toggler-icon'></span>");
			out.println("        </button>");
			out.println("        <div class='collapse navbar-collapse' id='navbarResponsive'>");
			out.println("          <ul class='navbar-nav ml-auto'>");
			out.println("            <li class='nav-item dropdown'>              ");
			out.println("                <a class='nav-link dropdown-toggle' id='navbarDropdownPortfolio' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false' href='#'>About</a>");
			out.println("                <div class='dropdown-menu dropdown-menu-right' aria-labelledby='navbarDropdownPortfolio'>");
			out.println("                  <a href='#about' class='dropdown-item'>About Us</a>");
			out.println("                  <a href='#services' class='dropdown-item'>Services</a>");
			out.println("                  <a href='#team' class='dropdown-item'>Team</a>");
			out.println("                </div>");
			out.println("            </li>");
			out.println("            <li class='nav-item'>");
			out.println("              <a class='nav-link' href='profiles.jsp'>Crew</a>");
			out.println("            </li>");
			out.println("            <li class='nav-item'>");
			out.println("              <a class='nav-link js-scroll-trigger' href='#contact'>Contact</a>");
			out.println("            </li>");
			out.println("            <li class='nav-item'>");
			out.println("              <a class='nav-link js-scroll-trigger' href='login.jsp'>Login</a>");
			out.println("            </li>");
			out.println("          </ul>");
			out.println("        </div>");
			out.println("      </div>");
			out.println("    </nav>");
			out.println("<p><br></p>");
			out.println("<p><br></p>");
			out.println("<p><br></p>");
			out.println("<div class='container text-center'>");
			/* if statements */	
			
			UserLoginDAO user = new UserLoginDAO();
			UserLogin usr = new UserLogin(shipownerid, username, password, email, name, surname);
			
			
			/* check if already exists */
			UserLogin trueusr = user.findUser(username);
			
			if (checkbox == null) {
				out.println("<h1>Registration Failed!</h1>");
				out.println("<div class='alert alert-danger' role='alert'>");
				out.println("  Sorry, you must agree to the terms and conditions in ordfer to register!");
				out.println("</div>");
			} 
			
			else if ((name.length() >= 3) && (surname.length() >= 3) && (username.length() >= 5) && (password.length() >=5) && (password.equals(confirm))) {
				
				user.registerUser(usr);
				
				out.println("<h1>Registration done! Enjoy the ultimate FINDCREW experience!!!</h1>");
				out.println("<div class='alert alert-success' role='alert'>");
				out.println("  <strong>Note:</strong> A verification link has been send to the email: " + email);
				out.println("</div>");
				out.println("<p><strong>Name: </strong>" + name + "</p>");
				out.println("<p><strong>Surname: </strong>" + surname + "</p>");
				out.println("<p><strong>Username: </strong>" + username + "</p>");
				out.println("<p><strong>Email: </strong>" + email + "</p>");
							
			}	else {
				
				out.println("	<div class='page-header'>");
				out.println("				<h1>Registration Form errors</h1>");
				out.println("   </div>");
				out.println("");
				out.println(" <div class='alert alert-danger' role='alert'>");
				int k=1;
				  if (name.length()< 3){
					out.println ("<p>" + k + ".Name must be at least 3 characters long </p>");
						k=k+1;
				  }
				  if (surname.length() < 3) {
					out.println ("<p>" + k + ".Surame must be at least 3 characters long </p>");
						k=k+1;
				  }
				  if (username.length() < 5) {
					 out.println ("<p>" + k + ".Username must be at least 5 characters long</p>");
						k=k+1;
				  }
				  if (password.length() < 5) {
					 out.println ("<p>" + k + ".Password must be at least 5 characters long</p>");
						k=k+1;
				  }
				  if (!password.equals(confirm)) {
					 out.println ("<p>" + k + ".Password and confirmation must be equal</p>");
						k=k+1;
				  }				  
				  if (trueusr != null) {
					  out.println ("<p> " + k + ".Username " + trueusr.getName() + " already exists</p>");
				   }//End of else
				   out.println("</div>");
			}
			
			
			

			out.println("");
			out.println("</div>");
			out.println("    <!-- Footer -->");
			out.println("    <footer class='py-5 bg-dark'>");
			out.println("    <div class='text-center text-white'>");
			out.println("      <h3><b>Contact us</b></h3>");
			out.println("      Athens University of Economics & Business <br>");
			out.println("      28th Oktovriou 76, Athens 104 34 <br>");
			out.println("      P: 6979876987");
			out.println("    </div>");
			out.println("    <br>");
			out.println("    <div class='container'>");
			out.println("      <p class='m-0 text-center text-white'>Copyright &copy; FindCrew 2018</p>");
			out.println("    </div>");
			out.println("    <!-- /.container -->");
			out.println("    </footer>");
			out.println("");
			out.println("");
			out.println("  </body>");
			out.println("");
			out.println("</html>");
			out.println("");

		
			
			
		
			
		} catch (Exception e) {
			
			
		}//try ends
		
		
		} //do Post ends

} //class ends