package entity;

public class Employee extends User {

	private int	projectId;
	private String proSkill;
	public int getProjectId() {
		return projectId;
	}
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public String getProSkill() {
		return proSkill;
	}
	public void setProSkill(String proSkill) {
		this.proSkill = proSkill;
	}
	public Employee(String fullName, String email, String passWord, int projectId, String proSkill) {
		super(fullName, email, passWord);
		this.projectId = projectId;
		this.proSkill = proSkill;
	}
	public Employee(String fullName, String email, String passWord) {
		super(fullName, email, passWord);
	}
	@Override
	public String toString() {
		return "Employee [projectId=" + projectId + ", proSkill=" + proSkill + ", getFullName()=" + getFullName()
				+ ", getEmail()=" + getEmail() + ", getPassWord()=" + getPassWord() + "]";
	}
	
	
	
	
	
}
