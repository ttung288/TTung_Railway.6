package Package2;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.Locale;

public class DateFomat {

	private static final String DEFAULT = null;


	public static void main(String[] args, Date date) {
		// TODO Auto-generated method stub
		Account account1 = new Account();
		account1.account_id = 1;
		account1.full_name = "Trần Thanh Tùng";
		account1.email = "ttung299@gmail.com";
		account1.create_date = LocalDate.of(2020, 8, 28);
		
	//Question 1:In ra thông tin account thứ 1 và property create date sẽ được format theo định dạng vietnamese
//		System.out.println("Question 1: ");
//		System.out.println("Thông tin account thứ 1: ");
//		System.out.println("ID: ");
//		System.out.println("Name: ");
//		System.out.println("Email: ");
//		Locale locale = new Locale("vi" , "VI");
//		DateFomat dateFomat = DateFomat.getDateInstance(DateFomat.DEFAULT , locale);
//		ZoneId defaultZoneId = ZoneId.systemDefault();
//		Date date = Date.from(account1.create_date.atStartOfDay(defaultZoneId).toInstant());
//		String createDate1 = dateFomat.format(date);
//		System.out.println("Create Date: "+ createDate1);
//		System.out.println("\n");
		
	//Question 2: 
		System.out.println("Question 2: ");
		String pattern2 = "yyyyy-MM-đ HH:mm:ss";
		SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(pattern2);
		String createDate2 = simpleDateFormat2.format(date);
		System.out.println("Create Date: "+ createDate2);
		
		// Question 3: Chỉ in ra ngày của create date trong Question 1
				System.out.println("Question 3:");
				String pattern3 = "dd";
				SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat(pattern3);
				String createDate3 = simpleDateFormat3.format(date);
				System.out.println("Create Date: " + createDate3);	
		
		
		
	}

	private String format(Date date) {
		// TODO Auto-generated method stub
		return null;
	}

	private static DateFomat getDateInstance(String default2, Locale locale) {
		// TODO Auto-generated method stub
		return null;
	}

}
