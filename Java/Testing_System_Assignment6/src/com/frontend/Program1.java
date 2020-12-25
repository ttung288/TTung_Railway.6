package com.frontend;

public class Program1 {

	public static void main(String[] args) {
		try {
			System.out.println(devide(7,0));
			
		} catch (ArithmeticException e) {
			System.out.println("Wrong Caculation!!!");	
			
		} catch (Exception e) {
			System.out.println("Sai rồi bạn ei!!!");
			
		} finally {
			System.out.println("Devide Complete.");
		}
		
		
		
	}

	private static float devide(int i, int j) {
		// TODO Auto-generated method stub
		return i/j;
		
		
		
	}
	
		
		
		


}
