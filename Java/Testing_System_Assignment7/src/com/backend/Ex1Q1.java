package com.backend;

import java.util.Scanner;

import com.entity.primaryStudent;
import com.entity.secondaryStudent;
import com.entity.student;

public class Ex1Q1 {
	public static void main(String[] args)  throws Exception{
		student.college = "Đại học Bách Khoa";
		student student1 = new student(1, "Tùng");
		student student2 = new student(2, "Thanh");
		student student3 = new primaryStudent();
		student student4 = new secondaryStudent(); 
		student student5 = new student(5, "Hai");
		student student6 = new primaryStudent();
		student student7 = new secondaryStudent();
		student student8 = new secondaryStudent();
		student student9 = new secondaryStudent();

		student[] students = { student1, student2, student3, student4, student5, student6,student7,student8,student9 };
		//student.moneyGroup = student.moneyGroup + students.length * 100000;
		
		for (student student0 : students) {
			System.out.println(student0.getName() +" nộp số tiền = ");
			Scanner scanner = new Scanner(System.in);
			student.moneyGroup = student.moneyGroup + scanner.nextInt();
	
		}
		
		
		System.out.println("Tổng số tiền group là :" + " "+ student.moneyGroup);
//		student1.moneyGroup = student1.moneyGroup - 50000;
//		student2.moneyGroup = student2.moneyGroup - 20000;
//		student3.moneyGroup = student3.moneyGroup - 150000;
//		
//		System.out.println(student.moneyGroup);
//		
//		student.moneyGroup = student.moneyGroup + students.length * 50000;
//		System.out.println(student.moneyGroup);
		
//		for(int i = 0, i = m)
	
		
	}
}
