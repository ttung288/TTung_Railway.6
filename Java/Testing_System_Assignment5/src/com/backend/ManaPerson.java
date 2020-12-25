package com.backend;

import java.util.ArrayList;
import java.util.Scanner;

import com.entity.Person;

public class ManaPerson {
	ArrayList<Person> persons = new ArrayList<Person>();
	public void inputInfo() {
		Person person1 = new Person();
		
		
		Scanner scanner = new Scanner(System.in);
		System.out.println("Nhập tên :");
		person1.setTen(scanner.nextLine());
		System.out.println("Giới Tính:");
		person1.setGioiTinh(scanner.nextLine());
		System.out.println("Địa Chỉ :");
		person1.setDiaChi(scanner.nextLine());
		System.out.println("Ngày Sinh :");
		person1.setNgaySinh(scanner.nextLine());
		
		persons.add(person1);
		
	}
	
	
	public void showInfo( ) {
		
		for(Person person : persons) {
			System.out.println(person.toString());
		}
		
	}
	
}
