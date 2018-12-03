package FindCrew;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class General_contact_controller extends HttpServlet {
     public void doPost(HttpServletRequest request, HttpServletResponse response)
         throws IOException, ServletException {

         response.setContentType("text/html; charset=ISO-8859-7");
         PrintWriter out = new PrintWriter(response.getWriter(), true);

         String name = request.getParameter("name");
         String surname = request.getParameter("surname");
         String email = request.getParameter("email");
         String comment = request.getParameter("comment");
         String submit[] = request.getParameterValues("submit");


         try{

         	    out.println("<!DOCTYPE html>");
				out.println("<html lang='en'>");
				out.println("");
				out.println("  <head>");
				out.println("");

				RequestDispatcher rd=request.getRequestDispatcher("../header.jsp");
   			    rd.include(request,response);

				out.println("    <!-- Custom styles for this template -->");
				out.println("    <link href='css/contact.css' rel='stylesheet'>");
				out.println("");
				out.println("  </head>");
				out.println("");
				out.println("  <body>");
				out.println("");
				rd=request.getRequestDispatcher("../navbar_after.jsp");
			    rd.include(request,response);


				  out.println("			<div class='page-header'>");
				  out.println("				<h1>"+ name+",your message has been sent!</h1>");
				  out.println("            </div>	");
				  out.println("");




			rd=request.getRequestDispatcher("../footer.jsp");
			rd.include(request,response);
			out.println("");
			out.println("		<script src='js/jquery.min.js'></script>");
			out.println("		<script	src='js/bootstrap.min.js'></script>");
			out.println("	</body>");
			out.println("</html>");


        } catch (Exception ex) {
            out.println("Exception: " + ex.getMessage());
            out.println("</body>");
            out.println("</html>"); }

   }
}