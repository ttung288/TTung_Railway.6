package package1;

import java.time.LocalDate;
import java.util.Arrays;

public class Account {
	public int account_id;
	String email;
	
	
	String user_name;
	String full_name;
	LocalDate create_date;
	Department department ;
	Position position;
	Group[] groups;

	
	
	




	public int getAccount_id() {
		return account_id;
	}


	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}


	public String getFull_name() {
		return full_name;
	}


	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}


	public LocalDate getCreate_date() {
		return create_date;
	}


	public void setCreate_date(LocalDate create_date) {
		this.create_date = create_date;
	}


	public Department getDepartment() {
		return department;
	}


	public void setDepartment(Department department) {
		this.department = department;
	}


	public Position getPosition() {
		return position;
	}


	public void setPosition(Position position) {
		this.position = position;
	}


	public Group[] getGroups() {
		return groups;
	}


	public void setGroups(Group[] groups) {
		this.groups = groups;
	}


	public Account(int account_id, String email, String user_name, String full_name) {
		super();
		this.account_id = account_id;
		this.email = email;
		this.user_name = user_name;
		this.full_name = full_name;
	}


	public Account() {
		
	}


	@Override
	public String toString() {
		return "Account [account_id=" + account_id + ", email=" + email + ", user_name=" + user_name + ", full_name="
				+ full_name + ", create_date=" + create_date + ", department=" + department + ", position=" + position
				+ ", groups=" + Arrays.toString(groups) + "]";
	}
	
	
	
	
	
	
	// so sánh account ðúng hay k
//public boolean equals(Account account2) {
//		
//		if(account_id == account2.account_id 
//			&&  full_name == account2.full_name){
//			return true;
//			
//		}else{			
//			return false;			
//		}
		
	}
	

