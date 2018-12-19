package FindCrewJava;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * SubscriberDAO provides all the necessary methods related to subscriber data.
 *
 * @author t8150088@aueb.gr
 *
 */

public class SubscriberDAO {

	public Subscriber findSubscriber(String email) throws Exception {

		Connection con = null;

		String sql= "SELECT * FROM subscribers WHERE email=?;";

		DB db = new DB();

		try {

			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString( 1, email );

			ResultSet rs = stmt.executeQuery();

			if( rs.next() ) {

				rs.close();
				stmt.close();

				throw new Exception("Subscriber already exists! Please try another email address.");

			}

			Subscriber subscriber = new Subscriber( rs.getString("fullname"),
									rs.getString("email"));

			rs.close();
			stmt.close();

			return subscriber;
		} catch (Exception e) {
			throw new Exception( e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {
			}
		}

	} //End of findSubscriber

		public void saveSubscriber(Subscriber subscriber) throws Exception {


			Connection con = null;

			//Define the SQL statement (to be executed)
			String sql= "INSERT INTO subscribers (fullname, email) "
	                            + " VALUES (?, ?);";

			DB db = new DB();

			try {
				//open connection and get Connection object
				con = db.getConnection();

				PreparedStatement stmt = con.prepareStatement( sql );

				//set values to all parameters
				stmt.setString(1, subscriber.getFullname());
				stmt.setString(2, subscriber.getEmail());

				//execute the SQL statement (INSERT)
				stmt.executeUpdate();

				//close PreparedStatement to release resources
				stmt.close();

			} catch (Exception e) {

				throw new Exception( "Error while saving subscriber to database: " + e.getMessage() );

			} finally {

				try {
					db.close(); //closing connection
				} catch (Exception e) {

				}

			}


	}

} //end of class
