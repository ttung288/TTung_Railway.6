USE Testing_System_Assignment_1;
-- Thêm Database vào các bảng=============	

-- Add data Department
INSERT INTO department(department_name)
VALUES					(N'Marketing'	),
						(N'Hacker'		),
						(N'Sale'		),
                        (N'Nhân sự'		),
                        (N'Hàng Không'	),
                        (N'Đa Cấp'		),
                        (N'Giám Đốc'	),
                        (N'Nhân Viên'	),
                        (N'Lái Xe'		),
                        (N'Bảo Vệ'		);
	
-- Add data position
INSERT INTO position 	(position_name)
VALUES					('Dev'			),
						('Test'			),
                        ('Scrum Master'	),
                        ('PM'			);
				
-- Add data account
INSERT INTO `account`	(email					,username			,full_name		,department_id		,position_id	,create_date)
VALUES					('Email1@gmail,com'		,'User 1'			,N'Tên 1'		,'1'				,'1'			,'2020-10-1'	),
						('Email2@gmail.com'		,'User 2'			,N'Tên 2'		,'4'				,'2'			,'2020-10-1'	),
                        ('Email3@gmail,com'		,'User 3'			,N'Tên 3'		,'5'				,'3'			,'2020-10-2'	),
						('Email4@gmail.com'		,'User 4'			,N'Tên 4'		,'3'				,'4'			,'2020-10-4'	),
						('Email5@gmail,com'		,'User 5'			,N'Tên 5'		,'7'				,'5'			,'2020-10-7'	),
						('Email6@gmail.com'		,'User 6'			,N'Tên 6'		,'8'				,'6'			,'2020-10-4'	),
						('Email7@gmail,com'		,'User 7'			,N'Tên 7'		,'9'				,'7'			,'2020-10-6'	),
						('Email8@gmail.com'		,'User 8'			,N'Tên 8'		,'10'				,'8'			,'2020-10-7'	),
                        ('Email9@gmail,com'		,'User 9'			,N'Tên 9'		,'2'				,'9'			,'2020-10-5'	),
						('Email10@gmail.com'	,'User 10'			,N'Tên 10'		,'6'				,'10'			,'2020-10-4'	);

-- Add data group
INSERT INTO `group`		(group_name		, creator_id	, create_date)
VALUES					(N'Nhóm 1'		,   5			,'2020-10-1'	),
						(N'Nhóm 2'		,   1			,'2020-10-1'	),
                        (N'Nhóm 3'		,   2			,'2020-10-2'	),
						(N'Nhóm 4'		,   3			,'2020-10-4'	),
                        (N'Nhóm 5'		,   4			,'2020-10-7'	),
						(N'Nhóm 6'		,   6			,'2020-10-4'	),
                        (N'Nhóm 7'		,   7			,'2020-10-6'	),
						(N'Nhóm 8'		,   8			,'2020-10-7'	),
                        (N'Nhóm 9'		,   9			,'2020-10-5'	),
						(N'Nhóm 10'		,   10			,'2020-10-4'	);
                        
-- Add data groupaccount
INSERT INTO `group_account`	(group_id		,account_id		,join_date		)	
VALUES						('1'			,'1'			,'2020-10-1'	),
							('2'			,'2'			,'2020-10-2'	),
							('3'			,'3'			,'2020-10-3'	),
							('4'			,'4'			,'2020-10-4'	),
							('5'			,'5'			,'2020-10-5'	),
							('6'			,'6'			,'2020-10-6'	),
							('7'			,'7'			,'2020-10-7'	),
							('8'			,'8'			,'2020-10-8'	),
							('9'			,'9'			,'2020-10-9'	),
							('10'			,'10'			,'2020-10-10'	);
				
-- Add data type_question
INSERT INTO	type_question	(type_name		)
VALUES						('Essay'		),
							('Multi-choice'	);
                            
-- Add data category_question
INSERT INTO category_question	(category_name		)
VALUES							(N'Câu hỏi 1'		),
								(N'Câu hỏi 2'		),
								(N'Câu hỏi 3'		),
								(N'Câu hỏi 4'		),
								(N'Câu hỏi 5'		),
								(N'Câu hỏi 6'		),
								(N'Câu hỏi 7'		),
								(N'Câu hỏi 8'		),
								(N'Câu hỏi 9'		),
								(N'Câu hỏi 10'		);
                                
-- Add data question
INSERT INTO question	(content		,category_id	,type_id	,creator_id	,create_date)
VALUES					('Number 1'		,10				,'1'		,'1'		,'2020-10-1'),
						('Number 2'		,7				,'2'		,'2'		,'2020-10-2'),
                        ('Number 3'		,3				,'3'		,'3'		,'2020-10-3'),
                        ('Number 4'		,4				,'4'		,'4'		,'2020-10-4'),
                        ('Number 5'		,2				,'5'		,'5'		,'2020-10-5'),
                        ('Number 6'		,1				,'6'		,'6'		,'2020-10-6'),
                        ('Number 7'		,8				,'7'		,'7'		,'2020-10-7'),
                        ('Number 8'		,6				,'8'		,'8'		,'2020-10-8'),
                        ('Number 9'		,9				,'9'		,'9'		,'2020-10-9'),
                        ('Number 10'	,5				,'10'		,'10'		,'2020-10-10');
                        
-- Add data answer
INSERT INTO	answer		(content			,question_id	,is_correct	)
VALUES					(N'Câu trả lời 1'	,'1'				,'TRUE'		),
						(N'Câu trả lời 2'	,'1'				,'FALSE'	),
						(N'Câu trả lời 3'	,'3'				,'TRUE'		),
                        (N'Câu trả lời 4'	,'4'				,'TRUE'		),
                        (N'Câu trả lời 5'	,'5'				,'TRUE'		),
                        (N'Câu trả lời 6'	,'7'				,'FALSE'	),
                        (N'Câu trả lời 7'	,'6'				,'FALSE'	),
                        (N'Câu trả lời 8'	,'8'				,'FALSE'	),
                        (N'Câu trả lời 9'	,'10'				,'TRUE'		),
                        (N'Câu trả lời 10'	,'9'				,'FALSE'	);
                        
-- Adđ data exam
INSERT INTO exam		(`code`			,title			,category_id	,duration	,creator_id	,create_date	)		
VALUES					('Q001'			,N'Mã đề 001'	,'1'			,'60'		,'7'			,'2020-10-1'	),
						('Q002'			,N'Mã đề 002'	,'2'			,'90'		,'4'			,'2020-10-2'	),
                        ('Q003'			,N'Mã đề 003'	,'3'			,'120'		,'5'			,'2020-10-3'	),
                        ('Q004'			,N'Mã đề 004'	,'4'			,'120'		,'3'			,'2020-10-4'	),
                        ('Q005'			,N'Mã đề 005'	,'5'			,'60'		,'2'			,'2020-10-5'	),
                        ('Q006'			,N'Mã đề 006'	,'6'			,'90'		,'9'			,'2020-10-6'	),
                        ('Q007'			,N'Mã đề 007'	,'7'			,'60'		,'8'			,'2020-10-7'	),
                        ('Q008'			,N'Mã đề 008'	,'8'			,'60'		,'6'			,'2020-10-8'	),
                        ('Q009'			,N'Mã đề 009'	,'9'			,'90'		,'10'			,'2020-10-9'	),
                        ('Q0010'		,N'Mã đề 010'	,'10'			,'60'		,'1'			,'2020-10-10'	);
                        
-- Add data exam_question
INSERT INTO exam_question	(exam_id		,question_id		)
VALUES						('1'			,'6'				),
							('2'			,'9'				),
                            ('3'			,'10'				),
                            ('4'			,'8'				),
                            ('5'			,'1'				),
                            ('6'			,'5'				),
                            ('7'			,'4'				),
                            ('8'			,'2'				),
                            ('9'			,'3'				),
                            ('10'			,'7'				);
						
-- question 2: lấy ra tất cả các phòng ban
-- department
SELECT * FROM department;
-- position
SELECT * FROM position;
-- account
SELECT  * FROM `account`;
-- group
SELECT  * FROM `group`;
-- group_account
SELECT  * FROM group_account;
-- type_question
SELECT  * FROM type_question;
-- category_question
SELECT  * FROM category_question;
-- question
SELECT  * FROM question;
-- answer
SELECT  * FROM answer;
-- exam
SELECT  * FROM exam;
-- exam_question
SELECT  * FROM exam_question;

-- Question 3: lấy id của phòng ban sale
SELECT sale_id FROM Sale;

-- Question 6: Lấy ra tên group tham gia trước 20/12/2019
SELECT group_name
FROM `group`
GROUP BY create_date <= '2019-12-20';

-- Question 7: lây ra question_id có câu trả lời >=4
SELECT question_id
FROM exam_question
GROUP BY question_id >= '4';

-- Question 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20-12-2019
SELECT exam_id
FROM exam
GROUP BY duration >= '60' AND create_date ;

-- Question 14: update dữ liệu 

UPDATE `account`
set full_name = "Nguyễn Bá Lộc",
	email = "loc.nguyenba@vti.com"
WHERE account_id = 5;

-- Question 15: update account có id = 5 sẽ thuộc group có id = 4
UPDATE `account`
SET account_id = "4"
WHERE account_id = "5";

			
                        