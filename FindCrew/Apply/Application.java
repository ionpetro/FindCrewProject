package Apply;

public class Application {
	
	private String name;
	private String surname;
	private String profession;
	private String availability;
	private int age;
	private String country;
	private String gender;
	private String describe;
	private String experience;
	private String education;
	private String languages;
	private int id;
	private int userid;
	
		
	/**
	 * Constructor
	 *  
	 * @param name
	 * @param surname
	 * @param email
	 * @param username
	 * @param password
	 */
	public Application(String name, String surname, String profession, String availability, int age, String country, String gender, String describe, String experience, String education, String languages) {
				
		this.name = name;
		this.surname = surname;
		this.profession = profession;
		this.availability = availability;
		this.age = age;
		this.country = country;
		this.gender = gender;
		this.describe = describe;
		this.experience = experience;
		this.education = education;
		this.languages = languages;
		this.userid = userid;
		
	}
	public Application(int id, int userid, String name, String surname, String profession, String availability, int age, String country, String gender, String describe, String experience, String education, String languages) {
		
		this.name = name;
		this.surname = surname;
		this.profession = profession;
		this.availability = availability;
		this.age = age;
		this.country = country;
		this.gender = gender;
		this.describe = describe;
		this.experience = experience;
		this.education = education;
		this.languages = languages;
		this.id = id;
		this.userid = userid;
		
	}
		

	/* Getters & Setters */
	/**
	 * @return the username
	 */
	 
	public int getUserid() {
		return userid;
	}

	/**
	 * @param username the username to set
	 */
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
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
	public String getName() {
		return name;
	}
	
	/**
	 * @param username the username to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	
	/**
	 * @return the password
	 */
	public String getSurname() {
		return surname;
	}
	
	/**
	 * @param password the password to set
	 */
	public void setSurname(String surname) {
		this.surname = surname;
	}
	
	/**
	 * @return the name
	 */
	public String getProfession() {
		return profession;
	}
	
	/**
	 * @param name the name to set
	 */
	public void setProfession(String profession) {
		this.profession = profession;
	}

	/**
	 * @return the surname
	 */
	public String getAvailability() {
		return availability;
	}

	/**
	 * @param surname the surname to set
	 */
	public void setAvailability(String availability) {
		this.availability = availability;
	}

	/**
	 * @return the email
	 */
	public int getAge() {
		return age;
	}

	/**
	 * @param email the email to set
	 */
	public void setAge(int age) {
		this.age = age;
	}
	/**
	 * @return the email
	 */
	public String getCountry() {
		return country;
	}

	/**
	 * @param email the email to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}
	/**
	 * @return the surname
	 */
	public String getGender() {
		return gender;
	}

	/**
	 * @param surname the surname to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}
	/**
	 * @return the surname
	 */
	public String getDescribe() {
		return describe;
	}

	/**
	 * @param surname the surname to set
	 */
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	/**
	 * @return the surname
	 */
	public String getExperience() {
		return experience;
	}

	/**
	 * @param surname the surname to set
	 */
	public void setExperience(String experience) {
		this.experience = experience;
	}
	/**
	 * @return the surname
	 */
	public String getEducation() {
		return education;
	}

	/**
	 * @param surname the surname to set
	 */
	public void setEducation(String education) {
		this.education = education;
	}
	/**
	 * @education
	 */
	public String getLanguages() {
			return languages;
		}
	
		/**
		 * @param surname the surname to set
		 */
		public void setLanguages(String languages) {
			this.languages = languages;
	}
	
	
	@Override
	public String toString() {
		return "Application [name=" + name + ", surname=" + surname + ", profession=" + profession + ", availability=" + availability + ", age=" + age
		+ ", country=" + country + ", gender=" + gender + ", describe=" + describe + ", education=" + education + ", experience=" + experience + ", languages=" + languages + "]";
	}	
	
} //End of class
