package backend;

import java.util.ArrayList;
import java.util.Scanner;

import entitily.ex4.Student;

public class Ex4 {
	
	ArrayList<Ex4> danhsachhocsinh = new ArrayList<Ex4>();
	
	public void Hocsinh () {
		Scanner scanner = new Scanner(System.in);
			Student student1 = new Student();
			System.out.println("Nhập tên học sinh: ");
			student1.setName(scanner.nextLine());
			
			System.out.println("Nhập hometown học sinh: ");
			student1.setHomeTown(scanner.nextLine());
		
		
		
		
	}
	
	
	
}
