package ContactRequestJava;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ContactRequestDAO {


	public List<ContactRequest> getRequests() throws Exception {

		Connection con = null;
		String sql = "SELECT * FROM contact_request; ";
		DB db = new DB();
		List<ContactRequest> c = new ArrayList<ContactRequest>();
		try {
					//open connection and get Connection object
					con = db.getConnection();

					PreparedStatement stmt = con.prepareStatement( sql );

		            // execute the SQL statement (QUERY - SELECT) and get the results in a ResultSet)
					ResultSet rs = stmt.executeQuery();

					while (rs.next()) {
						c.add( new ContactRequest(rs.getInt("idcrew"), rs.getInt("idshipowner"), rs.getString("starting_period"),
												   rs.getString("ending_period"),rs.getString("departure_point"),
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
		String sql = "INSERT INTO contact_request(idcontact_request,idcrew,idshipowner, starting_period, ending_period, departure_point, description)"+"VALUES (?,?,?,?,?,?,?);";
		DB db = new DB();
		try {
					//open connection and get Connection object
				    con = db.getConnection();
					PreparedStatement stmt = con.prepareStatement( sql );



					//set values to all parameters
                    stmt.setInt(1, cd.getIdcontact_request());
					stmt.setInt(2, cd.getCrew_id());
					stmt.setInt(3, cd.getShipowner_id());
					stmt.setString(4, cd.getStart());
					stmt.setString(5, cd.getEnd());
					stmt.setString(6, cd.getDeparture());
					stmt.setString(7, cd.getDescription());

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

          return;

		}







	}