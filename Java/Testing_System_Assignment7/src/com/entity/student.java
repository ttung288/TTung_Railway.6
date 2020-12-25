package com.entity;

public class student {
	public static int moneyGroup = 0;
	public static String college;
	public static int count = 0;
	private int id;
	private String name;
	public student(int id, String name) throws Exception {
		super();
		count++;
		this.id = id;
		this.name = name;
		this.checkstudent();
		
		
	}
	public static String getCollege() {
		return college;
	}
	public static void setCollege(String college) {
		student.college = college;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public student() throws Exception  {
		super();
		count++;
		this.checkstudent();
	}
	void checkstudent() throws Exception {
		if(count >=8) {
			throw new Exception("Quá số lượng cho phép");
		}
	}
	
	
	@Override
	public String toString() {
		return "student [id=" + id + ", name=" + name + ", college=" + college +"]";
	}
	
	
	
	
	
	
	
	
}
