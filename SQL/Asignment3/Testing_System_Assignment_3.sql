-- create database
DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE IF NOT EXISTS Testing_System_Assignment_3;
USE Testing_System_Assignment_3;


--  create table1: Department
DROP TABLE IF EXISTS department;
CREATE TABLE IF NOT EXISTS department (
	department_id			TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    department_name			NVARCHAR(100) UNIQUE KEY
);


-- create table2: Position
DROP TABLE IF EXISTS position;
CREATE TABLE IF NOT EXISTS position (
	position_id			TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    position_name		ENUM('Dev','Test','Scrum Master','PM')
);


-- create table3: Account
DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
	account_id			SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    email				VARCHAR(100) UNIQUE KEY NOT NULL,
    username			VARCHAR(50) NOT NULL,
    full_name			NVARCHAR(200),
    department_id		TINYINT UNSIGNED NOT NULL,
    position_id			TINYINT UNSIGNED NOT NULL,
    create_date			DATE,
    FOREIGN KEY (department_id) REFERENCES department (department_id),
    FOREIGN KEY (position_id) REFERENCES position (position_id)
);



-- create table4: Group
DROP TABLE IF EXISTS `group`;
CREATE TABLE IF NOT EXISTS `group` (
	group_id			TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    group_name			NVARCHAR(200),
    creator_id			SMALLINT UNSIGNED NOT NULL,
    create_date			DATE,
    FOREIGN KEY (creator_id) REFERENCES `account` (account_id)
);
	
 
 -- create table5: GroupAccount
DROP TABLE IF EXISTS `group_account`;
CREATE TABLE IF NOT EXISTS `group_account` (
	group_id			TINYINT UNSIGNED,
    account_id			SMALLINT UNSIGNED,
    join_date			DATE,
    PRIMARY KEY (group_id,account_id),
    FOREIGN KEY (group_id) REFERENCES `group` (group_id),
    FOREIGN KEY (account_id) REFERENCES `account` (account_id)
);


-- create table6: TypeQuestion
DROP TABLE IF EXISTS type_question;
CREATE TABLE IF NOT EXISTS type_question (
	type_id			TINYINT UNSIGNED AUTO_INCREMENT,
    type_name		ENUM('Essay','Multi-choice'),
    PRIMARY KEY(type_id)
);


-- create table7: CategoryQuestion
DROP TABLE IF EXISTS category_question;
CREATE TABLE IF NOT EXISTS category_question (
	category_id			TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    category_name		NVARCHAR(200)
);


-- create table8: Question
DROP TABLE IF EXISTS question;
CREATE TABLE IF NOT EXISTS question (
	question_id			SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    content				TEXT,
    category_id			TINYINT UNSIGNED,
    type_id				TINYINT UNSIGNED,
    creator_id			SMALLINT UNSIGNED,
    create_date			DATE,
	FOREIGN KEY (category_id) 
		REFERENCES category_question (category_id),
	FOREIGN KEY (type_id) 
		REFERENCES type_question (type_id),
	FOREIGN KEY (creator_id) 
		REFERENCES `account` (account_id)
);


-- create table9: Answer
DROP TABLE IF EXISTS answer;
CREATE TABLE IF NOT EXISTS answer (
	answer_id		SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    content			TEXT(200),
    question_id		SMALLINT UNSIGNED,
    FOREIGN KEY (question_id)
		REFERENCES question (question_id),
    is_correct		ENUM('TRUE','FALSE')
);


-- create table10: Exam 
DROP TABLE IF EXISTS exam;
CREATE TABLE IF NOT EXISTS exam (
	exam_id			SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `code`			VARCHAR(50),
    title			TEXT,
    category_id		TINYINT UNSIGNED,
    duration		TINYINT UNSIGNED,
    creator_id		SMALLINT UNSIGNED,
    create_date		DATE,
    FOREIGN KEY (creator_id) REFERENCES `account`(account_id),
    FOREIGN KEY (category_id) REFERENCES category_question(category_id)
);


--  create table11: ExamQuestion
DROP TABLE IF EXISTS exam_question;
CREATE TABLE IF NOT EXISTS exam_question (
	exam_id			SMALLINT UNSIGNED,
    question_id		SMALLINT UNSIGNED,
    PRIMARY KEY (exam_id,question_id),
    FOREIGN KEY (exam_id) 
		REFERENCES exam (exam_id),
    FOREIGN KEY (question_id) 
		REFERENCES question (question_id)
);


-- ============================INSERT DATA==============================
-- Add data table Department
INSERT INTO department	(department_name		)
VALUES					(N'sale'				),
						(N'marketing'			),
						(N'Hành Chính Nhân Sự'	),
						(N'IT'					),
						(N'Pháp chế'			),
						(N'Đào tạo'				),
						(N'Tuyển dụng'			),
						(N'Kế Toán'				),
						(N'Communicator'		),
						(N'Giám Đốc'			);
                    
-- Add data table Positon
INSERT INTO `position`	(position_name	)
VALUE					('Dev'			),
						('Test'			),
						('Scrum Master'	),
						('PM'			);


-- Add data table Account
INSERT INTO `account`(email							, username				, full_name				, department_id		, position_id		, create_date)
VALUES				 ('hello1@gmail.com'			, 'hello1'				, 'Xin Chao 1'			, 1					, 2					, '2019-11-10'),
					 ('hello2@gmail.com'			, 'hello2'				, 'Xin Chao 1'			, 2					, 1					, '2019-11-11'),
                     ('hello3@gmail.com'			, 'hello3'				, 'Xin Chao 1'			, 3					, 4					, '2019-11-12'),
                     ('hello4@gmail.com'			, 'hello4'				, 'Xin Chao 1'			, 1					, 3					, '2019-11-15'),
                     ('hello5@gmail.com'			, 'hello5'				, 'Xin Chao 1'			, 4					, 2					, '2019-10-10'),
                     ('hello6@gmail.com'			, 'hello6'				, 'Xin Chao 1'			, 5					, 4					, '2019-12-10'),
                     ('hello7@gmail.com'			, 'hello7'				, 'Xin Chao 1'			, 6					, 2					, '2020-10-10'),
                     ('hello8@gmail.com'			, 'hello8'				, 'Xin Chao 1'			, 7					, 1					, '2019-01-10'),
                     ('hello9@gmail.com'			, 'hello9'				, 'Xin Chao 1'			, 8					, 3					, '2019-12-11'),
                     ('hello10@gmail.com'			, 'hello10'				, 'Xin Chao 1'			, 3					, 3					, '2019-11-10');
                     

-- Add data table group
INSERT INTO `group` (group_name		, creator_id		, create_date	)
VALUES				('nhom 1'		, 1					, '2020-10-19'	),
					('nhom 2'		, 2					, '2020-11-19'	),
                    ('nhom 3'		, 4					, '2019-10-19'	),
                    ('nhom 4'		, 2					, '2019-10-09'	),
                    ('nhom 5'		, 5					, '2020-10-29'	),
                    ('nhom 6'		, 3					, '2020-11-29'	),
                    ('nhom 7'		, 4					, '2020-10-09'	),
                    ('nhom 8'		, 2					, '2018-10-19'	),
                    ('nhom 9'		, 9					, '2018-11-19'	),
                    ('nhom 10'		, 8					, '2018-10-29'	);
                    
-- Add data table group_account
INSERT INTO group_account	(  group_id		, account_id		, join_date		)
VALUES					 	(  1			, 1					, '2019-10-09'	),
							(  2			, 2					, '2019-11-09'	),
							(  3			, 3					, '2019-12-09'	),
							(  4			, 4					, '2020-10-09'	),
							(  7			, 5					, '2020-10-19'	),
							(  5			, 6					, '2020-10-29'	),
							(  6			, 7					, '2019-10-19'	),
							(  8			, 8					, '2019-10-29'	),
							(  9			, 9 				, '2019-10-01'	),
                            (  10			, 10 				, '2019-10-19'	);


-- Add data table TypeQuestion
INSERT INTO type_question	(type_name		)
VALUES						('Essay'		),
							('Multi-choice'	)
;


-- Add data table CategoryQuestion
INSERT INTO category_question	(category_name	)
VALUES							('Java'			),
								('.NET'			),
                                ('SQL'			),
                                ('Postman'		),
                                ('Ruby'			),
                                ('Python'		),
                                ('React'		),
                                ('cotlin'		),
                                ('japaness'		),
                                ('English'		);
                                
							
-- Add data table Question
INSERT INTO question(content	, category_id	, type_id	, creator_id	, create_date )
VALUES				('content 1', 1				, 1			, 3				, '2020-11-02'),
					('content 2', 6				, 2			, 1				, '2020-11-02'),
                    ('content 3', 5				, 1			, 2				, '2020-11-02'),
                    ('content 4', 7				, 2			, 8				, '2020-11-02'),
                    ('content 5', 4				, 1			, 7				, '2020-11-02'),
                    ('content 6', 3				, 2			, 6				, '2020-11-02'),
                    ('content 7', 2				, 2			, 5				, '2020-11-02'),
                    ('content 8', 9				, 2			, 3				, '2020-11-02'),
                    ('content 9', 10			, 1			, 4				, '2020-11-02'),
                    ('content a', 8				, 1			, 3				, '2020-11-02');


-- Add data table Answer
INSERT INTO answer	(content		, question_id		, is_correct	)
VALUES				('content 1'	, 2					, 'FALSE'		),
					('content 2'	, 1					, 'TRUE'		),
                    ('content 9'	, 3					, 'FALSE'		),
                    ('content 8'	, 4 				, 'TRUE'		),
                    ('content 7'	, 1					, 'TRUE'		),
                    ('content 6'	, 6					, 'FALSE'		),
                    ('content 5'	, 1					, 'TRUE'		),
                    ('content 4'	, 8					, 'TRUE'		),
                    ('content 3'	, 10				, 'TRUE'		),
                    ('content a'	, 1					, 'TRUE'		)
;


-- Add data table Exam
INSERT INTO exam(`code`		, title		, category_id	, duration		, creator_id	, create_date	)
VALUES			('E1'		, 'title 1'	, 2				, 30			, 2				, '2019-11-02'	),
				('E2'		, 'title 2'	, 1				, 50			, 4				, '2020-11-02'	),
                ('E3'		, 'title 3'	, 4				, 60			, 2				, '2020-11-02'	),
                ('E4'		, 'title 4'	, 5				, 90			, 2				, '2019-10-02'	),
                ('E5'		, 'title 5'	, 6				, 90			, 7				, '2020-11-02'	),
                ('E7'		, 'title a'	, 5				, 120			, 5				, '2020-11-02'	),
                ('E9'		, 'title s'	, 2				, 150			, 2				, '2020-11-02'	),
                ('E8'		, 'title d'	, 1				, 30			, 2				, '2020-11-02'	),
                ('Ea'		, 'title f'	, 4				, 90			, 5				, '2020-11-02'	),
                ('Eb'		, 'title g'	, 2				, 60			, 3				, '2020-11-02'	);


-- Add data table ExamQuestion
INSERT INTO exam_question	(exam_id	, question_id	)
VALUES						(1			, 10			),
							(2			, 9				),
                            (3			, 8				),
                            (4			, 7				),
                            (5			, 6				),
                            (6			, 5				),
                            (7			, 4				),
                            (8			, 3				),
                            (9			, 2				),
                            (10			, 1				);


-- Q2. Lấy tất cả các phòng ban
SELECT *
FROM department;

-- Q3. lấy id của phòng ban sale
SELECT *
FROM department
WHERE department_name = 'sale';

-- Q4. Lấy thông tin account có fullName dài nhất
SELECT *,length(full_name)
FROM `account`
WHERE length(full_name) = (
SELECT MAX(length(full_name))
FROM `account`
);
-- Q5. Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id = 3
SELECT *,length(full_name)
FROM `account`
WHERE length(full_name) = (
			SELECT MAX(length(full_name))
			FROM `account`)
			And department_id =3
;

-- Q6. Lấy tên group đã tham gia trước ngày 20/12/2019
SELECT group_name
FROM `group`
WHERE create_date < '2019-12-20';

-- Q7. Lấy ra ID của question có >= 4 câu trả lời
SELECT *, COUNT(*)
FROM question q
JOIN answer a ON a.question_id = q.question_id
GROUP BY (a.question_id)
HAVING COUNT(*) >= 4;

-- Q8. Lấy các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019
SELECT *
FROM exam
WHERE duration >= 60 AND create_date <= '2019-12-20';

-- Q9. Lấy ra 5 group được tạo gần đây nhất
SELECT *
FROM `group`
ORDER BY create_date DESC
LIMIT 5;

-- Q10. Đếm số nhân viên thuộc department có id = 2
SELECT *, COUNT(*)
FROM department
WHERE department_id = 2;

-- Q11. Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o"
SELECT *
FROM `account`
WHERE full_name LIKE 'D%o';

-- Q12. Xóa tất cả các exam được tạo trước ngày 20/12/2019
SET FOREIGN_KEY_CHECKS = 0;
DELETE
FROM exam
WHERE create_date >= '2019-12-20'; 

-- Q13. Xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"
SET FOREIGN_KEY_CHECKS = 0;
DELETE
FROM question
WHERE content LIKE 'câu hỏi&';

-- Q14. Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn
UPDATE `account`
SET		full_name = 'Nguyễn Bá Lộc',
		email = 'loc.nguyenba@vti.com.vn'
WHERE account_id = 5;

-- Q15. update account có id = 5 sẽ thuộc group có id = 4
UPDATE `group_account`
SET		group_id = 4
WHERE account_id = 5;
