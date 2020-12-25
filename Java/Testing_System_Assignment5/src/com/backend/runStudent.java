package com.backend;

import com.entity.Student;

public class runStudent {

     Student st1 = new Student(1, "Minh", 1);
	 Student st2 = new Student(2, "Minh", 1);
	 Student st3 = new Student(3, "Trang", 1);
	 Student st4 = new Student(4, "Hien", 2);
	 Student st5 = new Student(5, "Hieu", 2);
	 Student st6 = new Student(6, "Manh", 2);
	 Student st7 = new Student(7, "Vinh", 3);
	 Student st8 = new Student(8, "Linh", 3);
	 Student st9 = new Student(9, "Lanh", 3);
	 Student st10 = new Student(10, "Dung", 3); 
	  
	
	Student[] students = {st1, st2, st3, st4, st5, st6, st7, st8,st9};
	

	public void diemDanh() {
		int i;
		for(i = 0; i < 9; i++) {
			students[i].diemDanh();
		}
	}
	
	public void hocbai() {
		int i;
		for(i = 0; i < 9; i++) {
			if(students[i].getGroup() == 1) {
				students[i].hocBai();
			}
		}
	}
	public void didonVeSinh() {
		int i;
		for(i = 0; i < 9; i++) {
			if(students[i].getGroup() == 3) {
				students[i].didonVeSinh();
		 	}
		
		}
		
	
	}
	
}
