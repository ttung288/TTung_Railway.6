package Package2;

import java.time.LocalDate;

public class Program {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	//Create department
	Department department1 = new Department();
	department1.department_id = 1;
	department1.department_name = "Sale";
	
	Department department2 = new Department();
	department2.department_id = 2;
	department2.department_name = "Marketing";
	
	Department department3 = new Department();
	department3.department_id = 3;
	department3.department_name = "IT";
	
	//Create position
	Position position1 = new Position();
	position1.position_id = 1;
	position1.position_name = "Dev";
	
	Position position2 = new Position();
	position2.position_id = 2;
	position2.position_name = "Test";
	
	Position position3 = new Position();
	position3.position_id = 3;
	position3.position_name = "Scrum Master";
	
	Position position4 = new Position();
	position4.position_id = 4;
	position4.position_name = "PM";
	
	//Create Account
	Account account1 = new Account();
	account1.account_id = 1;
	account1.email = "ttung288@gmail.com";
	account1.user_name = "tiackop08";
	account1.full_name = "Trần Thanh Tùng";
	account1.department = department3;
	account1.position = position1;
	account1.create_date = LocalDate.of (2020, 8, 28);
	
	Account account2 = new Account();
	account2.account_id = 1;
	account2.email = "xinchao@gmail.com";
	account2.user_name = "xinchao";
	account2.full_name = "Hế Lô";
	account2.department = department1;
	account2.position = position2;
	account2.create_date = LocalDate.of (2020, 4, 4);
	
	Account account3 = new Account();
	account3.account_id = 3;
	account3.email = "hello@gmail.com";
	account3.user_name = "hello";
	account3.full_name = "Xin Chào";
	account3.department = department2;
	account3.position = position1;
	account3.create_date = LocalDate.of (2020, 2, 2);
	
	//Create Group
	Group group1 = new Group();
	group1.group_id = 1;
	group1.group_name = "Nhóm IT";
	group1.creator_id = account1;
	group1.create_date = LocalDate.of(2020, 9, 21);
	
	Group group2 = new Group();
	group2.group_id = 2;
	group2.group_name = "Nhóm Sale";
	group2.creator_id = account1;
	group2.create_date = LocalDate.of(2020, 9, 21);
	
	Group group3 = new Group();
	group3.group_id = 3;
	group3.group_name = "Nhóm Marketing";
	group3.creator_id = account1;
	group3.create_date = LocalDate.of(2020, 9, 21);
	
	Group[]  groupsOfAccount1 = {group1, group2};
	account1.groups = groupsOfAccount1;
	
	Group[]  groupsOfAccount2 = {group1, group2};
	account2.groups = groupsOfAccount2;
	
	Group[]  groupsOfAccount3 = {group3, group2};
	account3.groups = groupsOfAccount3;
	
	Account[] accountsOfGroup1 = {account1, account3};
	group1.accounts = accountsOfGroup1;
	
	Account[] accountsOfGroup2 = {account1, account2};
	group2.accounts = accountsOfGroup2;
	
	Account[] accountsOfGroup3 = {account2, account3};
	group3.accounts = accountsOfGroup3;
	
	//Create TypeQuestion
	TypeQuestion type1 = new TypeQuestion();
	type1.type_id = 1;
	type1.type_name = TypeName.Essay;
	
	TypeQuestion type2 = new TypeQuestion();
	type2.type_id = 2;
	type2.type_name = TypeName.Multiple_Choice;
	
	//Create category Question
	CategoryQuestion category1 = new CategoryQuestion();
	category1.category_id = 1;
	category1.category_name = "Java";
	
	CategoryQuestion category2 = new CategoryQuestion();
	category2.category_id = 2;
	category2.category_name = ".NET";
	
	CategoryQuestion category3 = new CategoryQuestion();
	category3.category_id = 3;
	category3.category_name = "SQL";
	
	//Create Question
	Question question1 = new Question();
	question1.question_id = 1;
	question1.content = "Question 1";
	question1.category_id = category1;
	question1.type_id = type1;
	question1.creator_id = account1;
	question1.create_date = LocalDate.of(2020, 6, 1);
	
	Question question2 = new Question();
	question2.question_id = 2;
	question2.content = "Question 2";
	question2.category_id = category2;
	question2.type_id = type2;
	question2.creator_id = account1;
	question2.create_date = LocalDate.of(2020, 6, 1);
	
	Question question3 = new Question();
	question3.question_id = 3;
	question3.content = "Question 3";
	question3.category_id = category1;
	question3.type_id = type1;
	question3.creator_id = account2;
	question3.create_date = LocalDate.of(2020, 6, 3);
	
	//Create answer
	Answer answer1 = new Answer();
	answer1.answer_id = 1;
	answer1.content = "Answer1";
	answer1.question_id = question1;
	answer1.is_correct = true;
	
	Answer answer2 = new Answer();
	answer2.answer_id = 1;
	answer2.content = "Answer2";
	answer2.question_id = question2;
	answer2.is_correct = true;
	
	Answer answer3 = new Answer();
	answer3.answer_id = 1;
	answer3.content = "Answer3";
	answer3.question_id = question3;
	answer3.is_correct = false;
	
	//Create Exam
	Exam exam1 = new Exam();
	exam1.exam_id = 1;
	exam1.code = "Code1";
	exam1.title = "Title1";
	exam1.category_id = category1;
	exam1.duration = 60;
	exam1.creator_id = account1;
	exam1.create_date = LocalDate.of(2020, 9, 20);
	
	Exam exam2 = new Exam();
	exam2.exam_id = 2;
	exam2.code = "Code2";
	exam2.title = "Title2";
	exam2.category_id = category2;
	exam2.duration = 60;
	exam2.creator_id = account1;
	exam2.create_date = LocalDate.of(2020, 9, 20);
	
	Exam exam3 = new Exam();
	exam3.exam_id = 3;
	exam3.code = "Code3";
	exam3.title = "Title3";
	exam3.category_id = category3;
	exam3.duration = 60;
	exam3.creator_id = account2;
	exam3.create_date = LocalDate.of(2020, 11, 30);
	
	Exam[] examsOfQuestion1 = {exam1, exam2};
	question1.exams = examsOfQuestion1;
	
	Exam[] examsOfQuestion2 = {exam2, exam3};
	question2.exams = examsOfQuestion2;
	
	Exam[] examsOfQuestion3 = {exam1, exam3};
	question3.exams = examsOfQuestion3;
	
	Question[] questionsOfExam1 = {question1, question3};
	exam1.questions = questionsOfExam1;
	
	Question[] questionsOfExam2 = {question1, question2};
	exam2.questions = questionsOfExam2;
	
	Question[] questionsOfExam3 = {question2, question3};
	exam3.questions = questionsOfExam3;
	
	
	// in dữ liệu 
	//Department
	System.out.println(department1.department_id);
	System.out.println(department1.department_name);
	System.out.println(department2.department_id);
	System.out.println(department2.department_name);
	System.out.println(department3.department_id);
	System.out.println(department3.department_name);
	
	//Position
	System.out.println(position1.position_id);
	System.out.println(position1.position_name);
	System.out.println(position2.position_id);
	System.out.println(position2.position_name);
	System.out.println(position3.position_id);
	System.out.println(position3.position_name);
	
	//Account
	System.out.println(account1.account_id);
	System.out.println(account1.email);
	System.out.println(account1.full_name);
	System.out.println(account1.user_name);
	System.out.println(account1.department.department_id);
	System.out.println(account1.create_date);
	
	//Group
	System.out.println(group1.group_id);
	System.out.println(group1.group_name);
	System.out.println(group1.creator_id);
	System.out.println(group1.create_date);
	
	//GroupAccount
	System.out.println(groupsOfAccount1);
	
	//TypeQuestion
	System.out.println(type1.type_id);
	System.out.println(type1.type_name);
	
	//CategoryQuestion
	System.out.println(category1.category_id);
	System.out.println(category1.category_name);
	
	//Question
	System.out.println(question1.question_id);
	System.out.println(question1.content);
	System.out.println(question1.category_id);
	System.out.println(question1.create_date);
	System.out.println(question1.type_id);
	System.out.println(question1.creator_id);
	
	//Exam
	System.out.println(exam1.exam_id);
	System.out.println(exam1.code);
	System.out.println(exam1.title);
	System.out.println(exam1.category_id);
	System.out.println(exam1.duration);
	System.out.println(exam1.creator_id.full_name);
	System.out.println(exam1.create_date);
	
	//
	
	
	}

}
