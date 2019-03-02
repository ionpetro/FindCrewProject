package LoginJava;

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
public class UserLoginDAO {

	/**
	 * This method returns a List with all Users
	 *
	 * @return List<User>
	 */
	public List<UserLogin> getUsers() throws Exception {
		
		Connection con = null;

		DB Connect = new DB();

			// Define the SQL statement (to be executed)
			String sql = "SELECT * FROM user;";

			// create list
			List<UserLogin> userlist = new ArrayList<UserLogin>();

		try {

			//open connection and get Connection object	
			con = Connect.getConnection();	

			PreparedStatement stmt = con.prepareStatement(sql);			

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				userlist.add(new UserLogin(rs.getInt("userid"), rs.getString("username"), rs.getString("password"), rs.getString("name"), rs.getString("surname"), rs.getString("email")) );

			} //End of while

			rs.close(); //closing ResultSet
			stmt.close(); //closing PreparedStatement
			Connect.close(); //closing connection

			return userlist;


		} catch (Exception e) {

			throw new Exception("MySQL Driver error: " + e.getMessage());

		} finally {

			try {
				Connect.close();
			} catch (Exception e) {

			}
		} // End of Try
		
	} //End of getUsers

	/**
	 * Search user by username
	 *
	 * @param username, String
	 * @return User, the User object
	 * @throws Exception, if user not found
	 */
	public UserLogin findUser(String username) throws Exception {
		
		Connection con = null;
						
		DB Connect = new DB();

		// Define the SQL statement (to be executed)
		String sql1 = "SELECT * FROM user WHERE username=?;";

		try { 
			//open connection and get Connection object	
			con = Connect.getConnection();	

			PreparedStatement stmt1 = con.prepareStatement(sql1);
			stmt1.setString(1, username);
			ResultSet rs = stmt1.executeQuery();


			while (rs.next()) {

			UserLogin user = new UserLogin(rs.getInt("userid"), rs.getString("username"), rs.getString("password"), rs.getString("name"), rs.getString("surname"), rs.getString("email"));
			return user;	
			} 
			rs.close();
			stmt1.close();
			Connect.close();
			return null;
		
		} catch (Exception e) {

					throw new Exception("MySQL Driver error: " + e.getMessage());

				} finally {

					try {
						Connect.close();
					} catch (Exception e) {

					}
		} // End of Try

	} //End of findUser

	/**
	 * Checks if the credentials are valid.
	 *
	 * @param username, String
	 * @param password, String
	 * @throws Exception, if the credentials are not valid
	 */
	public void authenticate(String username, String password) throws Exception {

		Connection con = null;
		
		

		// Define the SQL statement (to be executed)
		String sql2 = "SELECT * FROM user WHERE username =? AND password=?;";
		
		DB connect = new DB();

		try {
			//open connection and get Connection object	
			con = connect.getConnection();	

			PreparedStatement stmt2 = con.prepareStatement(sql2);
			
			
			stmt2.setString(1, username);
			stmt2.setString(2, password);

			ResultSet rs = stmt2.executeQuery();

			if (rs.next() != false) {
				connect.close();
				rs.close();
				stmt2.close();
				return; //the credentials are valid so do nothing
			} 			
			throw new Exception(" Wrong Username or Password");
						
		} catch(Exception e) {
                    connect.close();
					throw new Exception(e.getMessage());

		} finally {

			try {
				connect.close();
			} catch (Exception e) {

			}
		} // End of Try


	} //End of authenticate
	
	/* registerUser
	*@param user 
	*@exception
	*/
	
	public void registerUser(UserLogin user) throws Exception {
		
		Connection con = null;
		
		DB Connect = new DB();
		
		//Define SQL Statement (to be executed)
		String sql3 = "INSERT INTO user(userid, name, surname, username, password, email)" + "VALUES (?, ?, ?, ?, ?, ?);";
		
		try {
			
			con = Connect.getConnection();

			PreparedStatement stmt = con.prepareStatement(sql3);

			//setvalues
			stmt.setInt(1, user.getID());
			stmt.setString(2, user.getName());
			stmt.setString(3, user.getSurname());
			stmt.setString(4, user.getUsername());
			stmt.setString(5, user.getPassword());
			stmt.setString(6, user.getEmail());
			
			stmt.executeUpdate();
			

			stmt.close();
			Connect.close();
			
		} catch (Exception e) {
			throw new Exception("MySQL Driver error: " + e.getMessage());
			
		} finally {
			
			try {
				
				Connect.close();
				
			} catch (Exception e) {
				
			}
						
		} // End of Try
			
		
	} //End of registerUser
	
	public void updateShipowner() throws Exception {
			
			Connection con = null;
			
			DB Connect = new DB();
			
			//Define SQL Statement (to be executed)
			String sql="SELECT userid FROM user ORDER BY userid DESC LIMIT 1;";
			String sql1="SELECT idshipowner FROM shipowner ORDER BY idshipowner DESC LIMIT 1;";
			String sql2= "INSERT INTO shipowner(idshipowner, userid)" + "VALUES (?, ?);";
			
			try {
				
				con = Connect.getConnection();
				
					
				PreparedStatement stmt = con.prepareStatement(sql);
				PreparedStatement stmt1 = con.prepareStatement(sql1);
				ResultSet rs = stmt.executeQuery();
				ResultSet rs1 = stmt1.executeQuery();

				PreparedStatement stmt2 = con.prepareStatement(sql2);
				rs.next();
				rs1.next();
				int userid = rs.getInt("userid");
				int shipid = rs1.getInt("idshipowner")+1;
	
				//setvalues				
				stmt2.setInt(1, shipid);
				stmt2.setInt(2, userid);
	
				stmt2.executeUpdate();
	
				stmt.close();
				stmt1.close();
				stmt2.close();
				rs.close();
				rs1.close();
				Connect.close();
				
			} catch (Exception e) {
				throw new Exception("MySQL Driver error: " + e.getMessage());
				
			} finally {
				
				try {
					
					Connect.close();
					
				} catch (Exception e) {
					
				}
							
			} // End of Try
				
			
	} //End of registerUser
	
	
} //End of class
