package entity;

public class Student {
	
	private int  id ;
	private String name;
	public Student(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public Student() {
		super();
	}
	/**
	 * 
	 * @deprecated phiên bản cũ
	 */
	
	@Deprecated
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	/**
	 * 
	 * @deprecated phiên bản mới V2
	 */
	
	@Deprecated
	public String getIdV2() {
		return "MaSV: " + id;
	}
	
	
	
	

}
