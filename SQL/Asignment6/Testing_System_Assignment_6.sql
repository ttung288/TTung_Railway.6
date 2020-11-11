-- create database
DROP DATABASE IF EXISTS Testing_System_Assignment_6;
CREATE DATABASE IF NOT EXISTS Testing_System_Assignment_6;
USE Testing_System_Assignment_6;


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
					 ('hello2@gmail.com'			, 'hello2'				, 'Xin Chao 2'			, 2					, 1					, '2019-11-11'),
                     ('hello3@gmail.com'			, 'hello3'				, 'Xin Chao 3'			, 3					, 4					, '2019-11-12'),
                     ('hello4@gmail.com'			, 'hello4'				, 'Xin Chao 4'			, 1					, 3					, '2019-11-15'),
                     ('hello5@gmail.com'			, 'hello5'				, 'Xin Chao 5'			, 4					, 2					, '2019-10-10'),
                     ('hello6@gmail.com'			, 'hello6'				, 'Xin Chao 6'			, 5					, 4					, '2019-12-10'),
                     ('hello7@gmail.com'			, 'hello7'				, 'Xin Chao 7'			, 6					, 2					, '2020-10-10'),
                     ('hello8@gmail.com'			, 'hello8'				, 'Xin Chao 8'			, 7					, 1					, '2019-01-10'),
                     ('hello9@gmail.com'			, 'hello9'				, 'Xin Chao 9'			, 8					, 3					, '2019-12-11'),
                     ('hello10@gmail.com'			, 'hello10'				, 'Xin Chao 10'			, 3					, 3					, '2019-11-10');
                     

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
					('content 2', 6				, 2			, 1				, '2020-12-03'),
                    ('content 3', 5				, 1			, 2				, '2020-11-04'),
                    ('content 4', 7				, 2			, 8				, '2020-11-05'),
                    ('content 5', 4				, 1			, 7				, '2020-10-06'),
                    ('content 6', 3				, 2			, 6				, '2020-11-07'),
                    ('content 7', 2				, 2			, 5				, '2020-07-08'),
                    ('content 8', 9				, 1			, 3				, '2020-11-09'),
                    ('content 9', 10			, 1			, 4				, '2020-06-10'),
                    ('content 10', 8			, 1			, 3				, '2020-11-02');


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
                    ('content 10'	, 1					, 'TRUE'		)
;


-- Add data table Exam
INSERT INTO exam(`code`		, title		, category_id	, duration		, creator_id	, create_date	)
VALUES			('E1'		, 'title 1'	, 2				, 30			, 2				, '2020-11-02'),	
				('E2'		, 'title 2'	, 1				, 50			, 4				, '2020-12-03'),	
                ('E3'		, 'title 3'	, 4				, 60			, 2				, '2020-11-04'),	
                ('E4'		, 'title 4'	, 5				, 90			, 2				, '2020-11-05'),	
                ('E5'		, 'title 5'	, 6				, 90			, 7				, '2020-10-06'),	
                ('E7'		, 'title a'	, 5				, 120			, 5				, '2020-11-07'),	
                ('E9'		, 'title s'	, 2				, 150			, 2				, '2020-07-08'),	
                ('E8'		, 'title d'	, 1				, 30			, 2				, '2020-11-09'),	
                ('Ea'		, 'title f'	, 4				, 90			, 5				, '2020-06-10'),	
                ('Eb'		, 'title g'	, 2				, 60			, 3				, '2020-11-02');	


-- Add data table ExamQuestion
INSERT INTO exam_question	(exam_id	, question_id	)
VALUES						(1			, 10			),
							(2			, 9				),
                            (3			, 8				),
                            (4			, 7				),
                            (5			, 6				),
                            (6			, 10			),
                            (7			, 4				),
                            (8			, 3				),
                            (9			, 2				),
                            (10			, 1				);
                            
                            
                            
                            
/*====== Exercise 1: Tiếp tục với Database Testing System ====*/

-- Q1: Tạo store để người dùng nhập vào tên phòng ban và in ra tất cả các account thuộc phòng ban đó
SELECT * FROM `account`;
DROP PROCEDURE IF EXISTS store;
DELIMITER $$
CREATE PROCEDURE store (IN name_department NVARCHAR(100))
	BEGIN 
		SELECT * 
        FROM `account`
        JOIN department USING (department_id)
        WHERE department_name LIKE concat('%', name_department, '%');
        
	END $$
DELIMITER ;
SET @department_name = '';
CALL testing_system_assignment_6.store('sale');

-- Q2: Tạo store để in ra số lượng account trong mỗi group
DROP PROCEDURE IF EXISTS question2;
DELIMITER $$
CREATE PROCEDURE question2()
	BEGIN 
		SELECT *
        FROM group_account
        group by group_id;
	end $$
DELIMITER ;
call testing_system_assignment_6.question2();

-- Q3: Tạo store để thống kê mỗi type question có bao nhiêu question được tạo trong tháng hiện tại
DROP PROCEDURE IF EXISTS question3;
DELIMITER $$
CREATE PROCEDURE question3(IN typeid INT)
	BEGIN	
		SELECT *,COUNT(question_id) AS soluongcauhoi, GROUP_CONCAT(create_date)
		FROM question
        RIGHT JOIN  type_question USING (type_id)
        WHERE create_date >= '2020-11-01' && create_date <= '2020-11-30'
        GROUP BY type_id
        ;
     END $$
DELIMITER ;

-- Q4: Tạo store để trả ra id của type question có nhiều câu hỏi nhất
DROP PROCEDURE IF EXISTS question4;
DELIMITER $$
CREATE PROCEDURE question4(out typeid INT)
	BEGIN 
		SELECT type_id INTO typeid
		FROM question 
        GROUP BY type_id
		HAVING COUNT(question_id) = (	SELECT COUNT(question_id)
										FROM question
                                        GROUP BY type_id
                                        ORDER BY COUNT(question_id) DESC
                                        LIMIT 1)
		LIMIT 1 ;
	END $$
DELIMITER ;


-- Q5: Sử dụng store ở question 4 để tìm ra tên của type question
DROP PROCEDURE IF EXISTS question5;
DELIMITER $$
CREATE PROCEDURE question5()
	BEGIN 
		declare typeid INT;
		call question4(typeid);
		select typeid;

		SELECT type_name
        FROM type_question
        WHERE type_id = (@typeid);
	END $$	
DELIMITER ;
call testing_system_assignment_6.question5;
-- Q6: Viết 1 store cho phép người dùng nhập vào 1 chuỗi và trả về group có tên
-- chứa chuỗi của người dùng nhập vào hoặc trả về user có username chứa
-- chuỗi của người dùng nhập vào
DROP PROCEDURE IF EXISTS question6;
DELIMITER $$
CREATE PROCEDURE question6 (IN input NVARCHAR(100))
	BEGIN 
		
		SELECT group_name AS `Name`, 'group' AS `Type` 
        FROM `group`
        WHERE group_name like CONCAT('%',input,'%')
		UNION
        SELECT username AS `Name` , 'account' AS `Type`
        FROM `account`
        WHERE username like concat('%',input,'%')
        ;
    END $$
DELIMITER ;

-- Q12:Viết store để in ra mỗi tháng có bao nhiêu câu hỏi được tạo trong năm nay
CREATE VIEW view12 As									-- tạo 1 bảng tạm
	SELECT EachMonthInYear.MONTH
	FROM
	(
				SELECT 1 AS MONTH
				UNION SELECT 2 AS MONTH
				UNION SELECT 3 AS MONTH
				UNION SELECT 4 AS MONTH
				UNION SELECT 5 AS MONTH
				UNION SELECT 6 AS MONTH
				UNION SELECT 7 AS MONTH
				UNION SELECT 8 AS MONTH
				UNION SELECT 9 AS MONTH
				UNION SELECT 10 AS MONTH
				UNION SELECT 11 AS MONTH
				UNION SELECT 12 AS MONTH
	) AS EachMonthInYear;



DROP PROCEDURE IF EXISTS question12;
DELIMITER $$
CREATE PROCEDURE question12 ()
	BEGIN 
		Select *, count(q.question_id) AS count
        from view12 
        left join question q on view12.MONTH = MONTH(q.create_date)
        where year(q.create_date) = 2020 
        group by create_date
        having  count(q.question_id) = 0
        ;
    END $$
DELIMITER ;
 
 
-- Q7: Viết 1 store cho phép người dùng nhập vào thông tin fullName, email và
-- trong store sẽ tự động gán:
-- username sẽ giống email nhưng bỏ phần @..mail đi
-- positionID: sẽ có default là developer
-- departmentID: sẽ được cho vào 1 phòng chờ
-- Sau đó in ra kết quả tạo thành công

DROP PROCEDURE IF EXISTS question7;
DELIMITER $$
CREATE PROCEDURE question7 (IN in_email VARCHAR(100), IN in_full_name NVARCHAR(100))
	BEGIN
		DECLARE username VARCHAR(50) DEFAULT SUBSTRING_INDEX(in_email,'@',1);
		DECLARE position_id TINYINT DEFAULT 2;
		DECLARE department_id TINYINT ;
		SET department_id = 4;
		INSERT INTO `account` (email ,username, full_name , department_id, position_id, create_date)
		VALUE (in_email ,username, in_full_name , department_id, position_id, NOW());
		SELECT *
		FROM `account`a
		WHERE a.username = username;
	END$$
DELIMITER ;

-- Q8: Viết 1 store cho phép người dùng nhập vào Essay hoặc Multiple-Choice
-- để thống kê câu hỏi essay hoặc multiple-choice nào có content dài nhất
DROP PROCEDURE IF EXISTS question8;
DELIMITER $$
CREATE PROCEDURE question8 (IN in_put ENUM('Essay','Multiple-Choice'))
	BEGIN
		SELECT type_id into in_put
        from question
        join type_question using (type_id)
        where type_name = in_put and length(content) = (	SELECT MAX(length(content))
															FROM `question`)
		;
	END$$
DELIMITER ;

-- Q9: Viết 1 store cho phép người dùng xóa exam dựa vào ID

DROP PROCEDURE IF EXISTS question9;
DELIMITER $$
CREATE PROCEDURE question9 (IN in_id SMALLINT)
	BEGIN
		DELETE
		FROM exam
		WHERE creator_id = in_id;
	END $$
DELIMITER ;