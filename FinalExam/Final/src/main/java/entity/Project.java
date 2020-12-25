package entity;

public class Project extends User {

	private int projectId;
	private int teamSize;
	private int idManager;
	private int idEmployees;
	public int getProjectId() {
		return projectId;
	}
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public int getTeamSize() {
		return teamSize;
	}
	public void setTeamSize(int teamSize) {
		this.teamSize = teamSize;
	}
	public int getIdManager() {
		return idManager;
	}
	public void setIdManager(int idManager) {
		this.idManager = idManager;
	}
	public int getIdEmployees() {
		return idEmployees;
	}
	public void setIdEmployees(int idEmployees) {
		this.idEmployees = idEmployees;
	}
	public Project(String fullName, String email, String passWord, int projectId, int teamSize, int idManager,
			int idEmployees) {
		super(fullName, email, passWord);
		this.projectId = projectId;
		this.teamSize = teamSize;
		this.idManager = idManager;
		this.idEmployees = idEmployees;
	}
	public Project(String fullName, String email, String passWord) {
		super(fullName, email, passWord);
	}
	@Override
	public String toString() {
		return "Project [projectId=" + projectId + ", teamSize=" + teamSize + ", idManager=" + idManager
				+ ", idEmployees=" + idEmployees + ", getFullName()=" + getFullName() + ", getEmail()=" + getEmail()
				+ ", getPassWord()=" + getPassWord() + "]";
	}
	
	

}
