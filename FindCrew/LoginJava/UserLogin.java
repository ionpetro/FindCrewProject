package LoginJava;

public class UserLogin {
	
	private String username;
	private String password;
		
	/**
	 * Constructor
	 *  
	 * @param name
	 * @param surname
	 * @param email
	 * @param username
	 * @param password
	 */
	public UserLogin(String username, String password) {
				
		this.username = username;
		this.password = password;
	}
	
	/* Getters & Setters */
	
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}	
	
} //End of class
