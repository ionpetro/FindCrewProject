package Fields;

public class indexfields {
	
	private String profession;
	private String country;
		
	/**
	 * Constructor
	 *  
	 * @param name
	 * @param surname
	 * @param email
	 * @param username
	 * @param password
	 */
	public indexfields(String profession, String country) {
				
		this.profession = profession;
		this.country = country;
			
	}
	/* Getters & Setters */
	/**
	 * @return the username
	 */
	public String getProfession() {
		return profession;
	}

	/**
	 * @param username the username to set
	 */
	public void setProfession (String profession) {
		this.profession = profession;
	}
	
	/**
	 * @return the username
	 */
	public String getCountry() {
		return country;
	}
	
	/**
	 * @param username the username to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}
	
	@Override
	public String toString() {
		return "Fields [profession=" + profession + ", country=" + country + "]";
	}	
	
} //End of class
