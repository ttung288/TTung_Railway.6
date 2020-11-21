package package1;

import java.time.LocalDate;

public class Exam {
	int 		exam_id;
	String		code;
	String		title;
	int 		category_id;
	int			duration;
	Question	creator_id;
	LocalDate	create_date;
	
	Question[]	questions;
}
