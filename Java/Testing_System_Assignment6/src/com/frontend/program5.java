package com.frontend;

import java.util.Scanner;

public class program5 {
	public static void main(String[] args) {
		inputAge();
	}
	
		public static int inputAge() {
			
			try {
				Scanner scanner = new Scanner(System.in);
				System.out.println("Mời nhập vào một số >=0");
				int n = scanner.nextInt();
				if (n >= 0 ) {
					System.out.println(n);
					return n;
				}else {
					System.out.println("Wrong input!!!");
					return 0;
				}
				
				
				
			} catch (Exception e) {
				System.out.println("Wrong input!!!");
				return 0;
			}
			
						
		}
}
