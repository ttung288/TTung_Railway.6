package package1;

import java.time.LocalDate;

public class Ex2 {
	
	
	
	
	


	public static void main(String[] args) {
		
		Account[] accounts = new Account[5];
		for (int i = 0; i < accounts.length; i++ ) {
			accounts[i] = new Account();
			accounts[i].id = (i + 1);
			accounts[i].email = "Email " + (i + 1);
			accounts[i].username = "User Name " + (i + 1) ;
			accounts[i].fullname = "Full Name " + (i + 1);
			accounts[i].createDate = LocalDate.now();
		}
		
		for (Account account: accounts) {
			System.out.println("id: " + account.id);
			System.out.println("email: " + account.email);
			System.out.println("userName: " + account.username);
			System.out.println("fullName: " + account.fullname);
			System.out.println("createDate: " + account.createDate);
			System.out.println("");
			
			System.out.println(account.toString());
		}
			
			
		
	}	

	

}
