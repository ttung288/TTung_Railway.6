-- create database
DROP DATABASE IF EXISTS Testing_System_Assignment_7;
CREATE DATABASE IF NOT EXISTS Testing_System_Assignment_7;
USE Testing_System_Assignment_7;


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
    gender				ENUM('Male','Female','Unknow'),
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
INSERT INTO `account`(email							, username				, full_name		,gender			, department_id		, position_id		, create_date)
VALUES				 ('hello1@gmail.com'			, 'hello1'				, 'Xin Chao 1'	,'Male'			, 1					, 2					, '2019-11-10'),
					 ('hello2@gmail.com'			, 'hello2'				, 'Xin Chao 1'	,'Female'		, 2					, 1					, '2019-11-11'),
                     ('hello3@gmail.com'			, 'hello3'				, 'Xin Chao 1'	,'Male'			, 3					, 4					, '2019-11-12'),
                     ('hello4@gmail.com'			, 'hello4'				, 'Xin Chao 1'	,'Male'			, 1					, 3					, '2019-11-15'),
                     ('hello5@gmail.com'			, 'hello5'				, 'Xin Chao 1'	,'Female'		, 4					, 2					, '2019-10-10'),
                     ('hello6@gmail.com'			, 'hello6'				, 'Xin Chao 1'	,'Male'			, 5					, 4					, '2019-12-10'),
                     ('hello7@gmail.com'			, 'hello7'				, 'Xin Chao 1'	,'Unknow'		, 6					, 2					, '2020-10-10'),
                     ('hello8@gmail.com'			, 'hello8'				, 'Xin Chao 1'	,'Male'			, 7					, 1					, '2019-01-10'),
                     ('hello9@gmail.com'			, 'hello9'				, 'Xin Chao 1'	,'Male'			, 8					, 3					, '2019-12-11'),
                     ('hello10@gmail.com'			, 'hello10'				, 'Xin Chao 1'	,'Male'			, 3					, 3					, '2019-11-10');
                     

-- Add data table group
INSERT INTO `group` (group_name		, creator_id		, create_date	)
VALUES				('nhom 1'		, 1					, '2015-11-25'	),
					('nhom 2'		, 2					, '2010-3-18'	),
                    ('nhom 3'		, 4					, '2011-5-15'	),
                    ('nhom 4'		, 2					, '2008-5-20'	),
                    ('nhom 5'		, 5					, '2012-4-29'	),
                    ('nhom 6'		, 3					, '2016-5-20'	),
                    ('nhom 7'		, 4					, '2018-10-31'	),
                    ('nhom 8'		, 2					, '2020-9-20'	),
                    ('nhom 9'		, 9					, '2019-2-11'	),
                    ('nhom 10'		, 8					, '2017-4-1'	);
                    
-- Add data table group_account
INSERT INTO group_account	(group_id	, account_id, join_date		)
VALUES						(1			,	5		,'2015-11-25'	),
							(1			,	6		,'2010-3-18'	),
							(2			,	7		,'2011-5-15'	),
							(3			,	2		,'2008-5-20'	),
							(4			,	2		,'2012-4-29'	),
							(4			,	9		,'2016-5-20'	),
							(5			,	10		,'2018-10-31'	),
							(5			,	1		,'2020-9-20'	),
							(7			,	8		,'2019-2-11'	);

-- Add data table TypeQuestion
INSERT INTO type_question	(type_name		)
VALUES						('Essay'		),
							('Multi-choice'	);


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
                            
-- bài tập

-- Q1: Tạo trigger không cho phép người dùng nhập vào Group có ngày tạo
-- trước 1 năm trước
DROP TRIGGER IF EXISTS Q1;
DELIMITER $$
CREATE TRIGGER Q1
BEFORE INSERT ON `group`
FOR EACH ROW
	BEGIN
		if new.create_date < date_sub(now(), interval 1 year) then
            SIGNAL SQLSTATE '10000'
			SET MESSAGE_TEXT = ' INSERT GROUP FAIL';
		end if;
    END$$
DELIMITER ;

-- thêm mới thử group
INSERT INTO `group` (group_name		, creator_id		, create_date	)
VALUES				('nhom hihi'	, '1'				, '2016-10-19'	);
SELECT * from `group` ;

-- Q2: Tạo trigger Không cho phép người dùng thêm bất kỳ user nào vào
-- department "Sale" nữa, khi thêm thì hiện ra thông báo "Department
-- "Sale" cannot add more user"
DROP TRIGGER Q2
DELIMITER $$
CREATE TRIGGER Q2
BEFORE INSERT ON `account`
FOR EACH ROW
	BEGIN	
		IF NEW.department_id = 1 THEN
			SIGNAL SQLSTATE '10000'
            SET MESSAGE_TEXT = '"Sale" cannot add more user';
		END IF;
	END$$
DELIMITER ;

-- thử 
INSERT INTO `account`(email							, username				, full_name				, department_id		, position_id		, create_date)
VALUES				 ('helloQ2@gmail.com'			, 'helloQ2'				, 'Xin Chao Q2'			, 1					, 2					, '2020-1-5');
SELECT * FROM `account`;

-- Q3: Cấu hình 1 group có nhiều nhất là 5 user
DROP TRIGGER Q3
DELIMITER $$
CREATE TRIGGER Q3
BEFORE INSERT ON group_account
FOR EACH ROW
	BEGIN
        IF new.group_id IN (SELECT group_id FROM (	SELECT group_id ,count(1) AS 'Số người trong 1 group'
													FROM group_account
													GROUP BY group_id
													HAVING 'Số người trong 1 group' = 5) as temp) THEN
			SIGNAL SQLSTATE '10001'
			SET MESSAGE_TEXT = 'Full account in group';
        END IF;
	END$$
DELIMITER ;
-- thử thêm account
INSERT INTO group_account	(group_id	, account_id, join_date		)
VALUES						(2			,	7		,'2015-11-25'	),
							(2			,	9		,'2015-11-25'	),
                            (2			,	3		,'2015-11-25'	),
                            (2			,	2		,'2015-11-25'	);
SELECT * from group_account;                          


-- Q4:Cấu hình 1 bài thi có nhiều nhất là 10 Question
DROP TRIGGER Q4
DELIMITER $$
CREATE TRIGGER Q4
BEFORE INSERT ON exam_question
FOR EACH ROW
	BEGIN
		IF NEW.exam_id IN (SELECT exam_id FROM (SELECT exam_id, COUNT(question_id) AS number_of_questions
											FROM exam_question
											GROUP BY exam_id
											HAVING number_of_questions = 10) AS temp) THEN
			SIGNAL SQLSTATE '12345' 
			SET MESSAGE_TEXT = 'Quá số câu hỏi cho phép';
        END IF;
	END$$
DELIMITER ;

-- Q5: Tạo trigger không cho phép người dùng xóa tài khoản có email là
-- admin@gmail.com (đây là tài khoản admin, không cho phép user xóa),
-- còn lại các tài khoản khác thì sẽ cho phép xóa và sẽ xóa tất cả các thông
-- tin liên quan tới user đó
DROP TRIGGER IF EXISTS Q5;
DELIMITER $$
CREATE TRIGGER Q5
BEFORE DELETE ON `account`
FOR EACH ROW
	BEGIN
		DECLARE v_account_id INT;
        SELECT account_id INTO v_account_id
        FROM `account`
        WHERE email = old.email;
			IF old.email='admin@gmail.com' THEN
				SIGNAL SQLSTATE '12345'
				SET MESSAGE_TEXT = 'Không được phép xóa!!!';
            ELSE 	DELETE FROM group_account WHERE account_id = v_account_id;
					UPDATE `groups` SET creator_id = NULL WHERE creator_id = v_account_id;
					UPDATE exam SET creator_id = NULL WHERE creator_id = v_account_id;
					UPDATE question SET creator_id = NULL WHERE creator_id = v_account_id;
    END IF;
END$$
DELIMITER ;
		
-- Q9: Viết trigger không cho phép người dùng xóa bài thi mới tạo được 2 ngày
DROP TRIGGER IF EXISTS Q9;
DELIMITER $$
CREATE TRIGGER Q9
BEFORE DELETE ON exam
	FOR EACH ROW
	BEGIN
		IF OLD.exam_id IN (SELECT exam_id
						FROM exam
						WHERE DAY(NOW()) - DAY(create_date) = 2) THEN
			SIGNAL SQLSTATE '12345' -- disallow delete this record
			SET MESSAGE_TEXT = ' You can not delete!';
		END IF;
		
		DELETE FROM exam_question
		WHERE exam_id = OLD.exam_id;
	END$$
DELIMITER ;

DELETE FROM exam
WHERE exam_id = 2;


-- Q6: Không sử dụng cấu hình default cho field DepartmentID của table
-- Account, hãy tạo trigger cho phép người dùng khi tạo account không điền
-- vào departmentID thì sẽ được phân vào phòng ban "waiting Department"

-- Q8 : Viết trigger sửa lại dữ liệu cho đúng:
-- Nếu người dùng nhập vào gender của account là nam, nữ, chưa xác định
-- Thì sẽ đổi lại thành M, F, U cho giống với cấu hình ở database
DROP TRIGGER IF EXISTS Q8;
DELIMITER $$
CREATE TRIGGER Q8
BEFORE INSERT ON `account`
FOR EACH ROW	
	BEGIN 
		IF new.gender = 'Male' THEN
        SET new.gender = 'M';
        ELSEIF new.gender = 'Female' THEN
        SET new.gender = 'F';
        ELSEIF new.gender = 'Unknow' THEN
        SET new.gender = 'U';
	END IF;
END $$
DELIMITER ;
 
-- Question 12: Lấy ra thông tin exam trong đó:
-- Duration <= 30 thì sẽ đổi thành giá trị "Short time"
-- 30 < Duration <= 60 thì sẽ đổi thành giá trị "Medium time"
-- Duration > 60 thì sẽ đổi thành giá trị "Long time" */

SELECT *,
	CASE 	WHEN Duration <= 30 THEN "Short time" 
            WHEN Duration > 30 and Duration <= 60 THEN "Medium time"
            WHEN Duration > 60 THEN "Long time"             
	END AS Duration2, COUNT(1)
FROM exam
GROUP BY Duration2 ;

		
