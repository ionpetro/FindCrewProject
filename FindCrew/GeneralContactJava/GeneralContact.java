package GeneralContactJava;

public class GeneralContact {

	private String name;
	private String surname;
	private String email;
	private String comment;

	public GeneralContact(String name, String surname, String email, String comment) {

			this.name = name;
			this.surname = surname;
			this.email = email;
			this.comment = comment;
	}

   public String getName() {
		return name;
	}


   public void setName(String name) {
		this.name = name;
	}


	public String getSurname() {
		return surname;
	}


	public void setSurname(String surname) {
		this.surname = surname;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getComment() {
		return comment;
	}


	public void setComment(String comment) {
		this.comment = comment;
	}



	@Override
	public String toString() {
		return "User [Name=" + name + ", surname=" + surname  + ", email=" + email + ", comment=" + comment + "]";
	}



}