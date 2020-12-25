package com.backend;




	import java.util.Scanner;

	public class Question7 {
		public void inputInt() {
		while (true) {
			try {
				Scanner scanner = new Scanner(System.in);
				System.out.println("Moi ban nhap so >= 0 : ");
				int n = scanner.nextInt();
				
				if (n>=0) {
					System.out.println(n);
					return ;
				}else {
							
					System.out.println("Sai rồi, nhập lại đê...");
				}
			} catch (Exception e) {
				System.out.println("Sai nữa rồi, nhập lại đê...");
			}

		}
	}
	}
	
