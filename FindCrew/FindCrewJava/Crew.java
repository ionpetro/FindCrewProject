package FindCrewJava;

import java.sql.*;

public class Crew {

	private int idcrew;
	private String name;
	private String surname;
	private int age;
	private String image_file;
	private String profession;
	private String country;
	private String gender;
	private Date availability;
	private String description;
	private String cv_education;
	private String cv_experience;
	private String languages;

	/**
	 * Constructor
	 *
	 * @param idcrew
	 * @param name
	 * @param surname
	 * @param age
	 * @param image_file
	 * @param profession
	 * @param country
	 * @param gender
	 * @param availability
	 * @param description
	 * @param cv_education
	 * @param cv_experience
	 * @param cv_languages
	 */
	public Crew(int idcrew, String name, String surname, int age, String image_file, String profession, String country, String gender,
					Date availability, String description, String cv_education, String cv_experience, String languages) {

		this.idcrew = idcrew;
		this.name = name;
		this.surname = surname;
		this.age = age;
		this.image_file = image_file;
		this.profession = profession;
		this.country = country;
		this.gender = gender;
		this.availability = availability;
		this.description = description;
		this.cv_education = cv_education;
		this.cv_experience = cv_experience;
		this.languages = languages;
	}

	/* Getters & Setters */
	/**
	* @return the idcrew
	*/
	public int getIdcrew() {
		return idcrew;
	}

	/**
	* @param idcrew the idcrew to set
	 */
	public void setIdcrew(int idcrew) {
		this.idcrew = idcrew;
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
	 * @return the age
	 */
	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	/**
	 * @return the image_file
	 */
	public String getImage_file() {
		return image_file;
	}

	public void setImage_file(String image_file) {
		this.image_file = image_file;
	}

	/**
	 * @return the profession
	 */
	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	/**
	 * @return the country
	 */
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	/**
	 * @return the availability
	 */
	public Date getAvailability() {
		return availability;
	}

	public void setAvailability(Date availability) {
		this.availability = availability;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the description
	 */
	public String getCv_education() {
		return cv_education;
	}

	public void setCv_education(String cv_education) {
		this.cv_education = cv_education;
	}

	/**
	 * @return the cv_experience
	 */
	public String getCv_experience() {
		return cv_experience;
	}

	public void setCv_experience(String cv_experience) {
		this.cv_experience = cv_experience;
	}

	/**
	 * @return the languages
	 */
	public String getLanguages() {
		return languages;
	}

	public void setLanguages(String languages) {
		this.languages = languages;
	}

	@Override
	public String toString() {
		return "Crew [idcrew=" + idcrew + ", name=" + name + ", surname=" + surname + ", profession=" + profession + ", country=" + country + "]";
	}

} //End of class
