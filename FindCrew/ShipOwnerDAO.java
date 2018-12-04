import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * UserDAO provides all the necessary methods related to user's.
 * Use JDBC API in order to connect the the database and store/retrieve users etc.
 *
 * @author --your fullname here--
 *
 */
public class ShipOwnerDAO {

  public void saveRequest(Request request) throws Exception {

  	Connection con = null;

  	//Define the SQL statement (to be executed)
  	String sql = "INSERT INTO contact_request(username, name, surname, email, password) "  //??? ti tha dinei sti vasi? afou egw den pernw to id tou shipowner pos tha to cvro?
  						+ " VALUES (?, ?, ?, ?, ?);";

        DB db = new DB();
      try {
  			//open connection and get Connection object
  		    con = db.getConnection();
  			PreparedStatement stmt = con.prepareStatement( sql );



  			 //set values to all parameters
  			stmt.setString(1, user.getUsername());
  			stmt.setString(2, user.getName());
  			stmt.setString(3, user.getSurname());
  			stmt.setString(4, user.getEmail());
  			stmt.setString(5, user.getPassword());

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



	} //End of registerUser