package com.backend;

import java.util.ArrayList;
import java.util.Scanner;

import com.entity.Person;
import com.entity.Student2;

public class ManaStudent2 extends ManaPerson{

	@Override
	public void inputInfo() {
		Student2 person1 = new Student2();
		
		Scanner scanner = new Scanner(System.in);
		System.out.println("Nhập tên :");
		person1.setTen(scanner.nextLine());
		System.out.println("Giới Tính:");
		person1.setGioiTinh(scanner.nextLine());
		System.out.println("Địa Chỉ :");
		person1.setDiaChi(scanner.nextLine());
		System.out.println("Ngày Sinh :");
		person1.setNgaySinh(scanner.nextLine());
		System.out.println("Nhập điểm TB :");
		person1.setDiemTB(scanner.nextFloat());
		
		persons.add(person1);
	}
	
	@Override
		public void showInfo( ) {
		
		for(Person person : persons) {
			 System.out.println(((Student2)person).toString());
		}
	
	
	
	}
	
	
	
}
