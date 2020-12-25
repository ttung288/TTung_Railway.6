/**
 * 
 */
package backend;

import entity.Student;

public class Encapsulation {

	public void question1(){
		Student student1 = new Student("Hiệp", "Ninh Bình");
		student1.setScore(8);
		
		Student student2 = new Student("Hiếu", "Hà Nội");
		student2.setScore(7);
		
		student1.plusScore(1.5f);
		System.out.println(student1);
		System.out.println(student2.toString());
		
	}
	public void question2(){
			
	}
	public void question3(){
		
	}

}
