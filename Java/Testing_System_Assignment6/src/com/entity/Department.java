package com.entity;

import java.util.Scanner;

public class Department {

	private int id;
	private String name;

	public Department() {
		name = inputName();
		id = inputId();
	}
	private int inputId() {
		System.out.println("Nhập id phòng ban :");
		int idDepartment = ScannerUtils.inputInt("Nhập sai, nhập lại: ");
		return idDepartment;
	}

	private String inputName() {
		// TODO Auto-generated method stub
		
		
		
		System.out.println("Mời bạn nhập tên phòng ban :");
		String nameDepartment = ScannerUtils.inputString("Nhập sai, nhập lại: ");
		
		
		return null;
	}

	public Department(int id, String name) {
		this.id = id;
		this.name = name;
	}

	// Question 9
	private void input() {
		System.out.println("Nhập id : ");
		id = ScannerUtils.inputInt("Please input a id as int, please input again.");

		System.out.println("Nhập tên : ");
		name = ScannerUtils.inputString("Please input a name, please input again.");
	}

	@Override
	public String toString() {
		return "Department{" + "id=" + id + ", name='" + name + '\'' + '}';
	}

}
