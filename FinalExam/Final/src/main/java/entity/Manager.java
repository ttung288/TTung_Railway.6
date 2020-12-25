package entity;

public class Manager extends User {
	private int ExplnYear;

	public int getExplnYear() {
		return ExplnYear;
	}

	public void setExplnYear(int explnYear) {
		ExplnYear = explnYear;
	}

	public Manager(String fullName, String email, String passWord, int explnYear) {
		super(fullName, email, passWord);
		ExplnYear = explnYear;
	}

	public Manager(String fullName, String email, String passWord) {
		super(fullName, email, passWord);
	}

	public Manager() {
		// TODO Auto-generated constructor stub
	}

	
	@Override
	public String toString() {
		return "Manager [ExplnYear=" + ExplnYear + ", getFullName()=" + getFullName() + ", getEmail()=" + getEmail()
				+ ", getPassWord()=" + getPassWord() + "]";
	}

	
	
	

	
	
	
}
