package Package2;

import java.time.LocalDate;

public class Question {
	int 				question_id;
	String				content;
	CategoryQuestion	category_id;
	TypeQuestion		type_id;
	Account				creator_id;
	LocalDate			create_date;
	
	CategoryQuestion[]	categoryquestions;
	TypeQuestion[]		typequestions;
	Exam[]				exams;
}	
