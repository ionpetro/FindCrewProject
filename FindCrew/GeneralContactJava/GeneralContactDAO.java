package GeneralContactJava;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class GeneralContactDAO {

   public List<GeneralContact> getContacts() throws Exception {

   		Connection con = null;
   		String sql = "SELECT * FROM generalContacts; ";
   		DB db = new DB();
   		List<GeneralContact> c = new ArrayList<GeneralContact>();
   		try {
   					//open connection and get Connection object
   					con = db.getConnection();

   					PreparedStatement stmt = con.prepareStatement( sql );

   		            // execute the SQL statement (QUERY - SELECT) and get the results in a ResultSet)
   					ResultSet rs = stmt.executeQuery();

   					while (rs.next()) {
   						c.add( new GeneralContact(rs.getString("name"), rs.getString("surname"),
   												   rs.getString("email"),rs.getString("comment") ) );
   					}

   					rs.close(); // closing ResultSet

   					//close everything to release resources
   					stmt.close();
   					db.close();



   			}catch (Exception e) {

   			   		  // throw Exception if any error occurs
   					  throw new Exception("Could not establish connection with the Database Server: "
   					  + e.getMessage());

   			}finally{

   					try {
   						db.close();
   					}catch (Exception e){
   						// throw Exception if any error occurs
   						throw new Exception("Could not establish connection with the Database Server: "
   						+ e.getMessage());
   					 }

   		    }


   		   return c;


   		}

      public void sendRequest(GeneralContact gc) throws Exception {

	  		Connection con = null;
	  		String sql = "INSERT INTO (name, surname, email, comment) "
	  								+ " VALUES (?, ?, ?, ?);";
	  		DB db = new DB();
	  		try {
	  					//open connection and get Connection object
	  				    con = db.getConnection();
	  					PreparedStatement stmt = con.prepareStatement( sql );



	  					 //set values to all parameters
	  					stmt.setString(1, gc.getName());
	  					stmt.setString(2, gc.getSurname());
	  					stmt.setString(3, gc.getEmail());
	  					stmt.setString(4, gc.getComment());

	  					//execute the SQL statement (INSERT)
	  					stmt.executeUpdate();

	  					//close everything to release resources
	  					stmt.close();
	  					db.close();

	  		   } catch (Exception e){

	  				 // throw Exception if any error occurs
	  				throw new Exception("Could not establish connection with the Database Server: "
	  				+ e.getMessage());

	  		  } finally {

	  				try {
	  					db.close();
	  				}catch (Exception e){
	  					// throw Exception if any error occurs
	  					throw new Exception("Could not establish connection with the Database Server: "
	  					+ e.getMessage());
	  		          }

	  	      }



		}

}