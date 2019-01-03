package FindCrewJava;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * CrewDAO provides all the necessary methods related to crew data.
 *
 * @author t8150088@aueb.gr
 *
 */
public class CrewDAO {

	public List<Crew> getCrews(String profession, String country) throws Exception {

		Connection con = null;

		// Define the SQL statement (to be executed)
		String sql = "SELECT * FROM crew WHERE profession=? AND country=?;";

		DB db = new DB();
		List<Crew> crews =  new ArrayList<Crew>();

		try {
			// open connection and get Connection object
			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString( 1, profession );
			stmt.setString( 2, country );

			// execute the SQL statement (QUERY - SELECT) and get the results in a ResultSet)
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				Crew cr = new Crew(rs.getInt("idcrew"), rs.getString("name"), rs.getString("surname"), rs.getInt("age"), rs.getString( "image_file"),
										rs.getString("profession"), rs.getString("country"), rs.getString("gender"),
										rs.getDate( "availability"), rs.getString("description"), rs.getString("cv_education"),
										rs.getString("cv_experience"), rs.getString("languages") );
				crews.add( cr );

			}

 			rs.close(); //closing ResultSet
			stmt.close(); //closing PreparedStatement

			return crews;

		} catch (Exception e) {

			throw new Exception("Error while getting crews from database: " + e.getMessage());

		} finally {

			try {
			     db.close(); //closing connection
			} catch (Exception e) {

			}

		}

	} //End of getCrews

 public Crew getIndividual(int id) throws Exception{

	 Connection con = null;

	 String sql = "SELECT * FROM crew WHERE idcrew = ? ;";

	 DB db = new DB();


	 try {
	 		// open connection and get Connection object
	 		con = db.getConnection();

	 		PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setInt(1, id );
	        ResultSet rs = stmt.executeQuery();


             if(!rs.next()){
				 rs.close(); //closing ResultSet
	 	         stmt.close(); //closing PreparedStatement

				 throw new Exception("This crew does not exist..");
			 }
	 		Crew crew = new Crew(rs.getInt("idcrew"), rs.getString("name"), rs.getString("surname"), rs.getInt("age"), rs.getString( "image_file"),
	 										rs.getString("profession"), rs.getString("country"), rs.getString("gender"),
	 				       						rs.getDate( "availability"), rs.getString("description"), rs.getString("cv_education"),
										    rs.getString("cv_experience"), rs.getString("languages") );


	        rs.close(); //closing ResultSet
	 	    stmt.close(); //closing PreparedStatement

            return crew;

	 		} catch (Exception e) {

	 			throw new Exception("Error while getting crews from database: " + e.getMessage());

	 		} finally {

	 			try {
	 			     db.close(); //closing connection
	 			} catch (Exception e) {

	 			}

		}

	 }//end of getIndividual

		public List<Crew> getAllCrews() throws Exception {

		Connection con = null;

		// Define the SQL statement (to be executed)
		String sql = "SELECT * FROM crew;";

		DB db = new DB();
		List<Crew> crews =  new ArrayList<Crew>();

		try {
			// open connection and get Connection object
			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sql);

			// execute the SQL statement (QUERY - SELECT) and get the results in a ResultSet)
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				Crew cr = new Crew(rs.getInt("idcrew"), rs.getString("name"), rs.getString("surname"), rs.getInt("age"), rs.getString( "image_file"),
										rs.getString("profession"), rs.getString("country"), rs.getString("gender"),
										rs.getDate( "availability"), rs.getString("description"), rs.getString("cv_education"),
										rs.getString("cv_experience"), rs.getString("languages") );
				crews.add( cr );

			}

 			rs.close(); //closing ResultSet
			stmt.close(); //closing PreparedStatement

			return crews;

		} catch (Exception e) {

			throw new Exception("Error while getting crews from database: " + e.getMessage());

		} finally {

			try {
			     db.close(); //closing connection
			} catch (Exception e) {

			}

		}

	} //End of getAllCrews
	
	public List<Crew> getFilterCrews(String profession, String country, String gender) throws Exception {

		Connection con = null;

		// Define the SQL statement (to be executed)
		String sql = "SELECT * FROM crew WHERE profession=? AND country=? AND gender=?;";

		DB db = new DB();
		List<Crew> crews =  new ArrayList<Crew>();

		try {
			// open connection and get Connection object
			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString( 1, profession );
			stmt.setString( 2, country );
			stmt.setString( 3, gender );

			// execute the SQL statement (QUERY - SELECT) and get the results in a ResultSet)
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				Crew cr = new Crew(rs.getInt("idcrew"), rs.getString("name"), rs.getString("surname"), rs.getInt("age"), rs.getString( "image_file"),
										rs.getString("profession"), rs.getString("country"), rs.getString("gender"),
										rs.getDate( "availability"), rs.getString("description"), rs.getString("cv_education"),
										rs.getString("cv_experience"), rs.getString("languages") );
				crews.add( cr );

			}

 			rs.close(); //closing ResultSet
			stmt.close(); //closing PreparedStatement

			return crews;

		} catch (Exception e) {

			throw new Exception("Error while getting crews from database: " + e.getMessage());

		} finally {

			try {
			     db.close(); //closing connection
			} catch (Exception e) {

			}

		}

	} //End of getFilterCrews

	public List<Crew> getCrewsByProf(String profession) throws Exception {

		Connection con = null;

		// Define the SQL statement (to be executed)
		String sql = "SELECT * FROM crew WHERE profession=?;";

		DB db = new DB();
		List<Crew> crews =  new ArrayList<Crew>();

		try {
			// open connection and get Connection object
			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString( 1, profession );

			// execute the SQL statement (QUERY - SELECT) and get the results in a ResultSet)
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				Crew cr = new Crew(rs.getInt("idcrew"), rs.getString("name"), rs.getString("surname"), rs.getInt("age"), rs.getString( "image_file"),
										rs.getString("profession"), rs.getString("country"), rs.getString("gender"),
										rs.getDate( "availability"), rs.getString("description"), rs.getString("cv_education"),
										rs.getString("cv_experience"), rs.getString("languages") );
				crews.add( cr );

			}

 			rs.close(); //closing ResultSet
			stmt.close(); //closing PreparedStatement

			return crews;

		} catch (Exception e) {

			throw new Exception("Error while getting crews from database: " + e.getMessage());

		} finally {

			try {
			     db.close(); //closing connection
			} catch (Exception e) {

			}

		}

	} //End of getCrewsByProf

	public List<Crew> getCrewsByCoun(String country) throws Exception {

		Connection con = null;

		// Define the SQL statement (to be executed)
		String sql = "SELECT * FROM crew WHERE country=?;";

		DB db = new DB();
		List<Crew> crews =  new ArrayList<Crew>();

		try {
			// open connection and get Connection object
			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString( 1, country );

			// execute the SQL statement (QUERY - SELECT) and get the results in a ResultSet)
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				Crew cr = new Crew(rs.getInt("idcrew"), rs.getString("name"), rs.getString("surname"), rs.getInt("age"), rs.getString( "image_file"),
										rs.getString("profession"), rs.getString("country"), rs.getString("gender"),
										rs.getDate( "availability"), rs.getString("description"), rs.getString("cv_education"),
										rs.getString("cv_experience"), rs.getString("languages") );
				crews.add( cr );

			}

 			rs.close(); //closing ResultSet
			stmt.close(); //closing PreparedStatement

			return crews;

		} catch (Exception e) {

			throw new Exception("Error while getting crews from database: " + e.getMessage());

		} finally {

			try {
			     db.close(); //closing connection
			} catch (Exception e) {

			}

		}

	} //End of getCrewsByCoun
	
} //end of class
