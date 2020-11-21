package package1;

import java.time.LocalDate;

public class Question {
	int 				question_id;
	String				content;
	CategoryQuestion	category_id;
	TypeQuestion		type_id;
	Group				creator_id;
	LocalDate			create_date;
	
	CategoryQuestion[]	categoryquestions;
	TypeQuestion[]		typequestions;
}	
