package package0;

import java.time.LocalDate;

public class Exam {
	int 		exam_id;
	String		code;
	String		title;
	CategoryQuestion 		category_id;
	int			duration;
	Account	creator_id;
	LocalDate	create_date;
	
	Question[]	questions;
}
