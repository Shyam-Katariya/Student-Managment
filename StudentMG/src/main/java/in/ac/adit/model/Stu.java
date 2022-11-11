package in.ac.adit.model;

public class Stu {
	private String name;
	private String email;
	private String password;
	private String city;
	private int DOB;
	
	public String getname() {
		return name;
	}
	
	public void setname(String fullname) {
		this.name = fullname;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getcity() {
		return city;
	}
	
	public void setcity(String city) {
		this.city = city;
	}
	
	public int getDOB() {
		return DOB;
	}
	
	public void setDOB(int dob) {
		this.DOB = dob;
	}
}