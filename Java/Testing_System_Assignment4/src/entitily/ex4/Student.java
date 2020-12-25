package entitily.ex4;

public class Student {

	private int id;
	private String name;
	private String homeTown;
	private float score;
	
	public Student( String name, String homeTown, Float score) {
		super();
		this.name = name;
		this.homeTown = homeTown;
		score = score;
	}
	public Student() {
		super();
	}
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHomeTown() {
		return homeTown;
	}
	public void setHomeTown(String homeTown) {
		this.homeTown = homeTown;
	}
	public float getScore() {
		return score;
	}
	public void setScore(int score) {
		score = score;
	}
	@Override
	public String toString() {
		String grade;
		if (score < 4.0) {
			grade = "Yếu";
		} else if (score < 6) {
			grade = "Trung bình";
		} else if (score < 8) {
			grade = "Khá";
		} else {
			grade = "Giỏi";
		}

		return "Student{" + "id=" + id + ", name='" + name + '\'' + ", hometown='" + homeTown + '\'' + ", score="
				+ score + ", xepLoai='" + grade + '\'' + '}';
		
		
		
	}
		
	
}
