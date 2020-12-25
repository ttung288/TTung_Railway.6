package entity;

public class User {

	private String fullName;
	private String email;
	private String passWord;
	
	
	
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public User(String fullName, String email, String passWord) {
		super();
		this.fullName = fullName;
		this.email = email;
		this.passWord = passWord;
	}
	public User() {
		super();
	}
	@Override
	public String toString() {
		return "User [fullName=" + fullName + ", email=" + email + ", passWord=" + passWord + "]";
	}
 
	
		
	
	
	
	
	
}
