package Fields;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
<<<<<<< HEAD
import java.util.*;
import java.util.HashSet;
import java.util.Set;
=======
>>>>>>> 6a0bf61b839b19f433dfc2450cb5dd17ef7da7a2

/**
 * UserDAO provides all the necessary methods related to user's.
 * Use JDBC API in order to connect the the database and store/retrieve users etc.
 *
 * @author --your fullname here--
 *
 */
public class indexfieldsDAO {

	/**
	 * This method returns a List with all Users
	 *
	 * @return List<User>
	 */
	public Set<indexfields> getFields() throws Exception {
		
		Connection con = null;

		DB Connect = new DB();

			// Define the SQL statement (to be executed)
			String sql = "SELECT profession, country FROM crew;";

			// create list

			Set<indexfields> fieldslist = new HashSet<indexfields>();
			
		try {

			//open connection and get Connection object	
			con = Connect.getConnection();	

			PreparedStatement stmt = con.prepareStatement(sql);			

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {	

				fieldslist.add(new indexfields(rs.getString("profession"), rs.getString("country")));

			} //End of while

			rs.close(); //closing ResultSet
			stmt.close(); //closing PreparedStatement
			Connect.close(); //closing connection
<<<<<<< HEAD
			
=======

>>>>>>> 6a0bf61b839b19f433dfc2450cb5dd17ef7da7a2
			return fieldslist;
		

		} catch (Exception e) {

			throw new Exception("MySQL Driver error: " + e.getMessage());

		} finally {

			try {
				Connect.close();
			} catch (Exception e) {

			}
		} // End of Try
		
	} //End of getFields	
	
} //End of class
