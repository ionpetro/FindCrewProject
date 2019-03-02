package LoginJava;

public class UserLogin {
	
	private String username;
	private String password;
	private String email;
	private String name;
	private String surname;
	private int id;
	private int id_ship;
	
		
	/**
	 * Constructor
	 *  
	 * @param name
	 * @param surname
	 * @param email
	 * @param username
	 * @param password
	 */
	public UserLogin(String username, String password, String email, String name, String surname) {
				
		this.username = username;
		this.password = password;
		this.email = email;
		this.name = name;
		this.surname = surname;	
		
	}
	public UserLogin(int id, String username, String password, String email, String name, String surname) {
		
		this.username = username;
		this.password = password;
		this.email = email;
		this.name = name;
		this.surname = surname;
		this.id = id;
		
	}
		

	/* Getters & Setters */
	/**
	 * @return the username
	 */
	 
	
	public int getID() {
		return id;
	}

	/**
	 * @param username the username to set
	 */
	public void setID(int id) {
		this.id = id;
	}
	
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
	
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the surname
	 */
	public String getSurname() {
		return surname;
	}

	/**
	 * @param surname the surname to set
	 */
	public void setSurname(String surname) {
		this.surname = surname;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "User [username=" + username + ", name=" + name + ", surname=" + surname + ", email=" + email + "]";
	}	
	
} //End of class
