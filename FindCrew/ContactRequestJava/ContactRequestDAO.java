package ContactRequestJava;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ContactRequestDAO {


	public List<ContactRequest> getRequests() throws Exception {

		Connection con = null;
		String sql = "SELECT * FROM contactRequests; ";
		DB db = new DB();
		List<ContactRequest> c = new ArrayList<ContactRequest>();
		try {
					//open connection and get Connection object
					con = db.getConnection();

					PreparedStatement stmt = con.prepareStatement( sql );

		            // execute the SQL statement (QUERY - SELECT) and get the results in a ResultSet)
					ResultSet rs = stmt.executeQuery();

					while (rs.next()) {
						c.add( new ContactRequest(rs.getInt("Crew_id"), rs.getInt("Shipowner_id"), rs.getString("start"),
												   rs.getString("end"),rs.getString("departure"),
												   rs.getString("description")) );
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

	public void sendRequest(ContactRequest cd) throws Exception {

		Connection con = null;
		String sql = "INSERT INTO contact_request(idcrew,idshipowner, starting_period, ending_period, departure_point, description) "
								+ " VALUES (?,?, ?, ?, ?, ?);";
		DB db = new DB();
		try {
					//open connection and get Connection object
				    con = db.getConnection();
					PreparedStatement stmt = con.prepareStatement( sql );



					 //set values to all parameters
					stmt.setInt(1, cd.getCrew_id());
					stmt.setInt(1, cd.getShipowner_id());
					stmt.setString(2, cd.getStart());
					stmt.setString(3, cd.getEnd());
					stmt.setString(4, cd.getDeparture());
					stmt.setString(5, cd.getDescription());

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