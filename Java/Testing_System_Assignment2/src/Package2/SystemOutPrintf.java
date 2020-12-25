package Package2;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.Locale;

public class SystemOutPrintf {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// Question 1:Khai báo 1 số nguyên = 5 và sử dụng lệnh System out printf để in ra số nguyên đó
		int a = 5;
		System.out.printf("%d%n",a);
		
		// Question 2: Khai báo 1 số nguyên = 100 000 000 và sử dụng lệnh System out
		// printf để in ra số nguyên đó thành định dạng như sau: 100,000,000
		int b = 100000000;
		System.out.printf(Locale.ITALY,"%,d%n",b);
		
		
		// Question 3: Khai báo 1 số thực = 5,567098 và sử dụng lệnh System out printf
		// để in ra số thực đó chỉ bao gồm 4 số đằng sau
		
		System.out.printf("'%.4f' %n", 5.567089);
		
		//Question 4Khai báo Họ và tên của 1 học sinh và in ra họ và tên học sinh đó
//		theo định dạng như sau:
//			Họ và tên: "Nguyễn Văn A" thì sẽ in ra trên console như sau:
//			Tên tôi là "Nguyễn Văn A" và tôi đang độc thân.
		String x = "Nguyễn Văn A";
	System.out.println("Tên tôi là " + x + " và tôi đang độc thân.");	
		
		// Question 5: Lấy thời gian bây giờ và in ra theo định dạng sau:
//	24/04/2020 11h:16p:20s
	
	String pattern = "yyyy-MM-dd HH:mm:ss";
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
	String date = simpleDateFormat.format(new Date());
	System.out.println(date);
		
	}

}
