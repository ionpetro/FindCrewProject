package ContactRequestJava;

public class ContactRequest {

	private String username;
	private String start;
	private String end;
	private String departure;
	private String description;

	public ContactRequest(String username, String start, String end, String departure, String description) {

			this.username = username;
			this.start = start;
			this.end = end;
			this.departure = departure;
			this.description = description;
	}

   public String getUsername() {
		return username;
	}


   public void setUsername(String username) {
		this.username = username;
	}


	public String getStart() {
		return start;
	}


	public void setStart(String start) {
		this.start = start;
	}


	public String getEnd() {
		return end;
	}


	public void setEnd(String end) {
		this.end = end;
	}


	public String getDeparture() {
		return departure;
	}


	public void setDeparture(String departure) {
		this.departure = departure;
	}

	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", start=" + start  + ", end=" + end + ", departure=" + departure +", description="+description + "]";
	}



}