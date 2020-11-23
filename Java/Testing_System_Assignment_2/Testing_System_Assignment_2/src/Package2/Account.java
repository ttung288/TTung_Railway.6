package Package2;

import java.time.LocalDate;
import java.util.Arrays;

public class Account {
	int account_id;
	String email;
	String user_name;
	String full_name;
	LocalDate create_date;
	Department department ;
	Position position;
	Group[] groups;
	@Override
	public String toString() {
		return "Account [account_id=" + account_id + ", email=" + email + ", user_name=" + user_name + ", full_name="
				+ full_name + ", create_date=" + create_date + ", department=" + department + ", position=" + position
				+ ", groups=" + Arrays.toString(groups) + "]";
	}

}
