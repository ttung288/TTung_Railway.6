package Package2;

import java.time.LocalDate;

public class FlowControl {

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
		account2.account_id = 2;
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
		
		
	//Question 1
//		if (account1.department == null) {
//			System.out.println("Nhân viên này chưa có phòng ban");
//		} else {
//			System.out.println("Phòng ban của nhân viên này là" + account1.department.department_name);
//		};
//	
//	//Question 2
//		if (account2.groups.length == 0) {
//			System.out.println("Nhân viên này chưa thuộc group nào");
//		} else if (account2.groups.length == 1 || account2.groups.length == 2) {
//			System.out.println("Group của nhân viên này là:");
//			for (Group group : groupsOfAccount2) {
//				System.out.println(group.group_name);
//			}
//		} else if (account2.groups.length == 3) {
//			System.out.println("Nhân viên này là người quan trọng, tham gia nhiều group");
//		} else if (account2.groups.length >= 4) {
//			System.out.println("Nhân viên này là người hóng chuyện, tham gia tất cả các group");
//		}
//		System.out.println("\n");
//		
//	// Question 5
//		switch (group1.accounts.length) {
//		case 1:
//			System.out.println("Nhóm có một thành viên");
//			break;
//		case 2:
//			System.out.println("Nhóm có hai thành viên");
//			break;
//		case 3:
//			System.out.println("Nhóm có ba thành viên");
//			break;
//		default:
//			System.out.println("Nhóm có nhiều thành viên");
//			break;
//		}
	
		// Question 13: in ra thông tin tất cả các account ngoại trừ account thứ 2
//		Account[] accounts = {account1, account2, account3 };
//		for (int i=0 ; i < accounts.length; i++) {
//			if ( i == 1) {
//				continue;
//			}
//			System.out.println(accounts[i].toString());
//		}
		
		// Question 14: In ra thông tin tất cả các account có id <= 3
//		Account[] accounts = {account1, account2, account3 };
//		for(int i = 0 ; i < accounts.length; i++){
//			if(accounts[i].account_id >= 4) {
//			break;
//			}
//		System.out.println(accounts[i].toString());
//		}
		
		
		// Question 4: Sử dụng toán tử ternary để làm yêu cầu sau:
//		Kiểm tra Position của account thứ 1
//		Nếu Position = Dev thì in ra text "Đây là Developer"
//		Nếu không phải thì in ra text "Người này không phải là
//		Developer"
		
//		if (account1.position.position_name == "Dev") {
//			System.out.println("Đây là Developer");
//		} else {
//			System.out.println("Người này không phải là Developer");
//		}
	
		//Question 6: Sử dụng switch case để làm lại Question 2
//		switch (account2.groups.length) {
//		case 0:
//			System.out.println("Nhân viên này chưa thuộc group nào");
//			break;
//		case 1:
//			System.out.println("Group của nhân viên này là:");
//			for (Group group : groupsOfAccount2) {
//			System.out.println(group.group_name);
//			break;
//			}
//		case 2:
//			System.out.println("Nhân viên này là người quan trọng, tham gia nhiều group");
//			break;
//		case 3:
//			System.out.println("Nhân viên này là người hóng chuyện, tham gia tất cả các group");
//			break;
//		}

		//Question 8
//		Account[] accounts = {account1, account2, account3};
//		int i = 1;
//		for (Account account : accounts) {
//			System.out.println("Email thứ "+ i +"là :");
//			System.out.println("Email:" + accounts[i].email);
//			System.out.println("Full Name :" + accounts[i].full_name);
//			System.out.println("Phòng Ban: " + accounts[i].department);
//			System.out.println("\n");
//			i++;
//		}
		
		//Question 9
//		Department[] departments = {department1, department2};
//		int i = 1;
//		for (Department department : departments) {
//			System.out.println("Department thứ:" + departments[i].department_id);
//			System.out.println("Tên Department:" + departments[i].department_name);
//			System.out.println("\n");
//			i++;
//		}
		
		// Question 10
//		Account[] accounts = {account1, account2, account3};
//		int i = 1 ;
//		for (i = 0; i < accounts.length; i++) {
//			System.out.println("Email thứ "+ (i + 1)  +" là :");
//			System.out.println("Email:" + accounts[i].email);
//			System.out.println("Full Name :" + accounts[i].full_name);
//			System.out.println("Phòng Ban: " + accounts[i].department.department_name);
//			System.out.println("\n");
//		}
		
		//Question 11
//		Department[] departments = {department1, department2, department3};
//		int i = 1 ;
//		for (i = 0; i < departments.length; i++) {
//			System.out.println("Thông tin department thứ " +(i + 1) + " là :");
//			System.out.println("ID: " + departments[i].department_id);
//			System.out.println("Name: " + departments[i].department_name);
//			System.out.println("\n");
//		}
		
		//Question 12:
//		
//		Account[] accounts = {account1, account2, account3};
//		int i = 1 ;
//		for (i = 0; i <= 1; i++) {
//			System.out.println("Email thứ "+ (i + 1)  +" là :");
//			System.out.println("Email:" + accounts[i].email);
//			System.out.println("Full Name :" + accounts[i].full_name);
//			System.out.println("Phòng Ban: " + accounts[i].department.department_name);
//			System.out.println("\n");
//		}
		
		//Question 15
		for ( int i = 0; i <= 20; i++ ) {
			
			if (i % 2 != 0) {
	            continue;
			}
			System.out.println(i);
		}
		
		
		
		
		
		
	}
}