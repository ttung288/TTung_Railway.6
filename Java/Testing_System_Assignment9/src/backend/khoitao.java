package backend;

import java.util.ArrayList;
import java.util.List;


import entity.Car;

import entity.Student;

public class khoitao<Engine> {
	
	public List<Student> list =  new ArrayList<Student>();
	
	public void khoitao() {
		Student student1 = new Student(1,"Tùng");
		Student student2 = new Student(2,"Tùng1");
		Student student3 = new Student(3,"Tùng2");
		Student student4 = new Student(4,"Tùng3");
		Student student5 = new Student(5,"Nguyễn Văn A");
		
		list.add(student1);
		list.add(student2);
		list.add(student3);
		list.add(student4);
		list.add(student5);
		
	}
	
	public void Info() {
		Car car = new Car("Mazda", "8WD");
		Engine engine = (Engine) car.new Engine();
		((entity.Car.Engine) engine).setEngineType("Crysler");
		car.setEngine((entity.Car.Engine) engine);

		car.printInfor();
		
	}
	
	

	
	
	
	
}
