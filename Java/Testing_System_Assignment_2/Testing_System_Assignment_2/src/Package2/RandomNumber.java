package Package2;
import java.time.LocalDate;
import java.util.Random;
public class RandomNumber {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		//Question 1 : in ngẫu nhiên ra 1 số nguyên
		// 0 -> 9
		Random random = new Random();
		int x = random.nextInt(10);
		System.out.println(x);
		
		// 13-> 25
		int i = random.nextInt(13)+13;
		System.out.println(i);
		
		//Question 2: in ngẫu nhiên 1 số thực
		float d = random.nextFloat();
		System.out.println(d);
		
		//Question 3:
		String[] students = {"bạn 1", "bạn 2", "bạn 3", "bạn 4", "bạn 5", "bạn 6", "bạn 7"};
		int index = random.nextInt(students.length);
		System.out.println(students[index]);
		
		//Question 4:
		int minDate = (int) LocalDate.of(2020, 1, 1).toEpochDay();
		int maxDate = (int) LocalDate.of(2020, 12, 31).toEpochDay();
		
		long randomLong = minDate + random.nextInt(maxDate - minDate);
		
		LocalDate randomDate = LocalDate.ofEpochDay(randomLong);
		System.out.println(randomDate);
		
		
		
	}

}
