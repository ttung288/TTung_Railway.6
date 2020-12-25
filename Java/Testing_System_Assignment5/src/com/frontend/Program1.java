package com.frontend;

import com.backend.IStudent;
import com.backend.runStudent;
import com.entity.Student;

public class Program1 {
	
	public static void main(String[] args) {
		runStudent run1 = new runStudent();
		run1.diemDanh();
		
		runStudent run2 = new runStudent();
		run2.hocbai();
		
		runStudent run3 = new runStudent();
		run3.didonVeSinh();
		
	}

}
