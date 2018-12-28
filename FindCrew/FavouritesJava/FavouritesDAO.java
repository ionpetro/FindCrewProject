package FavouritesJava;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import FindCrewJava.*;

/**
 * CrewDAO provides all the necessary methods related to crew data.
 *
 * @author Marietta Lazana t8160057
 *
 */
public class FavouritesDAO {

	public void addFavourite(int sid, int cid) throws Exception{

		Connection con = null;

		String sql = "INSERT INTO favourites(idshipowner,idcrew) "
						+ " VALUES (?, ?);";
		DB db = new DB();
        try {
			//open connection and get Connection object
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement( sql );



			 //set values to all parameters
			stmt.setInt(1, sid);
			stmt.setInt(2, cid);

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


   public List<Crew> getFavourites(int sid) throws Exception {

   		Connection con = null;

   		// Define the SQL statement (to be executed)
   		String sql1 = "SELECT * FROM favourites WHERE idshipowner = ?; ";

   		String sql2 = "SELECT * FROM crew WHERE idcrew = ?;";

   		DB db = new DB();
   		List<Integer> crewids = new  ArrayList<Integer>();
   		List<Crew> crews =  new ArrayList<Crew>();

   		try {
   			// open connection and get Connection object
   			con = db.getConnection();

   			PreparedStatement stmt1 = con.prepareStatement(sql1);

   			stmt1.setInt( 1, sid );

   			// execute the SQL statement (QUERY - SELECT) and get the results in a ResultSet)
   			ResultSet rs1 = stmt1.executeQuery();

   			while (rs1.next()) {

   				int id = rs1.getInt("");

   				crewids.add( id );

   			}

            for(int i=0; i<(crewids.size()); i++){

            PreparedStatement stmt2 = con.prepareStatement(sql2);

			stmt2.setInt( 1, crewids.get(i) );

   			ResultSet rs2 = stmt1.executeQuery();

    	    while (rs2.next()) {

			Crew cr = new Crew(rs2.getInt("idcrew"), rs2.getString("name"), rs2.getString("surname"), rs2.getInt("age"), rs2.getString("image_file"),
									rs2.getString("profession"), rs2.getString("country"), rs2.getString("gender"),
									rs2.getDate( "availability"), rs2.getString("description"), rs2.getString("cv_education"),
									rs2.getString("cv_experience"), rs2.getString("languages") );
			crews.add( cr );

			}

           rs2.close();//closing ResultSet
           stmt2.close();//closing PreparedStatement

		}

    	    rs1.close();


   			stmt1.close();

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









	}
