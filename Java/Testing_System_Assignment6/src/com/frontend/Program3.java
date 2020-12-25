package com.frontend;

import com.entity.Department;

public class Program3 {

	public static void main(String[] args) {
		try {
			// int[] numbers = {1,2,3};
			// System.out.println(numbers[10]);
			getIndex(1);
		} catch (Exception e) {
			System.out.println("Cannot find department");
		}
	}

	static Department dept1 = new Department(1, "dept1");
	static Department dept2 = new Department(2, "dept2");
	static Department dept3 = new Department(3, "dept3");
	static Department[] departments = { dept1, dept2, dept3 };

	public static void getIndex(int index) {
		System.out.println(departments[index].toString());
	}

}
