package Package2;



import java.time.LocalDate;

public class Ex2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// tạo account có 5 phần tử
				Account[] accounts = new Account[5];
				for (int i = 0; i < accounts.length; i++ ) {
					accounts[i] = new Account();
					accounts[i].account_id = i;
					accounts[i].full_name = "Tên" + i;
					accounts[i].email = "Email"+ i + "@gmail.com";
					accounts[i].create_date = LocalDate.now();
				}
				for (Account account : accounts) {
					System.out.println("ID:" + account.account_id);
					System.out.println("Full Name: "+ account.full_name);
					System.out.println("Email: " + account.email);
					System.out.println("Create Date: " + account.create_date);
				}
		
	}

}
