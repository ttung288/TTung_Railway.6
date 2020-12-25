package entitily.ex3;

public class HighSchoolStudent extends Student {

	public HighSchoolStudent(String name) {
		super(name);
		// TODO Auto-generated constructor stub
	}

	private String clazz; 
	private String desiredUniversity;
	public HighSchoolStudent(String name, int id, String clazz, String desiredUniversity) {
		super(name, id);
		this.clazz = clazz;
		this.desiredUniversity = desiredUniversity;
	}
	public HighSchoolStudent(String name, int id) {
		super(name, id);
	}
	@Override
	public String toString() {
		return "HighSchoolStudent [clazz=" + clazz + ", desiredUniversity=" + desiredUniversity 
				 + ", name=" + this.getName() 
				 + ", id=" + this.getId() + "]";
	}

	
	
	
}
