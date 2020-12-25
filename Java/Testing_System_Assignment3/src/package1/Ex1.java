package package1;

import java.util.Random;
import java.util.Scanner;

public class Ex1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Question 1:
		float luongaccount1 = 5240.5f;
		float luongaccount2 = 10970.055f;
		
		int x = (int)luongaccount1;
		int y = (int)luongaccount2;
		
		System.out.println(x + "$");
		System.out.println(y + "$");
		
		//Question 2:
		Random random = new Random();
		System.out.println(x);
		
		//Question 4:
		Scanner scanner1 = new Scanner(System.in);
		System.out.println("Nhập số nguyên a: ");
		int a = scanner1.nextInt();
		Scanner scanner2 = new Scanner(System.in);
		System.out.println("Nhập số nguyên b: ");
		int b = scanner2.nextInt();
		float c = (float)b/a;
		System.out.printf("%.2f", c);
	}

}
