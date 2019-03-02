package Apply;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import LoginJava.*;

/**
 * UserDAO provides all the necessary methods related to user's.
 * Use JDBC API in order to connect the the database and store/retrieve users etc.
 *
 * @author --your fullname here--
 *
 */
public class ApplicationDAO {
	
	public static int finduserid(UserLogin user) throws Exception {
		Connection con = null;
				
		DB Connect = new DB();

		//Define SQL Statement (to be executed)
		String sql = "SELECT userid FROM user WHERE username=?;";
		int number = 0;
		try {
			//open connection and get Connection object	
			con = Connect.getConnection();	

			PreparedStatement stmt = con.prepareStatement(sql);

			
			stmt.setString(1, user.getUsername());
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				number = rs.getInt("userid");
				return number;
			}	
			
			rs.close();
			stmt.close();
			Connect.close();
			throw new Exception("GIa pame ligo");

		} catch(Exception e) {
			Connect.close();
			throw new Exception(e.getMessage());

		} finally {

			try {
				Connect.close();
			} catch (Exception e) {

			}
		} // End of Try
		
		
	}
	
	public static void insertApplication(Application apply, UserLogin user) throws Exception {
		
		Connection con = null;
		
		DB Connect = new DB();
		
		//Define SQL Statement (to be executed)
		String sql = "INSERT INTO application (applicationid, userid_app, name, surname, profession, availability, age, country, gender, personal_information, cv_education, cv_experience, languages)" + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
		
		try {
			
			con = Connect.getConnection();

			PreparedStatement stmt = con.prepareStatement(sql);
			
			int number = finduserid(user);
			
			//setvalues
			stmt.setInt(1, apply.getID());
			stmt.setInt(2, number);
			stmt.setString(3, apply.getName());
			stmt.setString(4, apply.getSurname());
			stmt.setString(5, apply.getProfession());
			stmt.setString(6, apply.getAvailability());
			stmt.setInt(7, apply.getAge());
			stmt.setString(8, apply.getCountry());
			stmt.setString(9, apply.getGender());
			stmt.setString(10, apply.getDescribe());
			stmt.setString(11, apply.getEducation());
			stmt.setString(12, apply.getExperience());
			stmt.setString(13, apply.getLanguages());
			
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
			
		
	} //End of insertApplication
	
	
	
} //End of class
