DROP DATABASE IF EXISTS Testing_System_Assignment_2;
CREATE DATABASE Testing_System_Assignment_2;
USE Testing_System_Assignment_2;
-- ghi chú: 1
-- ghi chú: 1
DROP TABLE IF EXISTS department;
CREATE TABLE IF NOT EXISTS department (
	department_id 		tinyint unsigned primary key auto_increment,
    department_name		nvarchar(50)
    );

DROP TABLE IF EXISTS position ;
CREATE TABLE if not exists position (
	position_id		tinyint unsigned primary key auto_increment,
    position_name	enum ('Dev','Test','Scrum Master','PM')
    );

DROP TABLE IF EXISTS `account` ;
CREATE TABLE if not exists `account` (
	account_id		tinyint unsigned primary key auto_increment,
    email			text not null,
    user_name		varchar(50) not null,
    full_name		nvarchar(50) not null,
    department_id	tinyint unsigned ,
    foreign key (department_id) references department (department_id),
    position_id		tinyint unsigned ,
    foreign key (position_id) references position (position_id),
    create_date		date
);

-- ghi chú: 2
-- ghi chú: 2
drop TABLE IF EXISTS `group` ;
create table if not EXISTS `group` (
	group_id 		TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    group_name		NVARCHAR(100),
    creator_id		TINYINT UNSIGNED,
    create_date		DATE
    );
    
DROP TABLE IF EXISTS group_account;
create TABLE IF NOT EXISTS group_account(
	group_id 		TINYINT UNSIGNED DEFAULT 2,
    account_id		tinyint UNSIGNED,
    PRIMARY KEY (group_id,account_id),
    join_date DATE
    );
	
    -- ghi chú: 1
    -- ghi chú: 3
drop TABLE IF EXISTS type_question;
CREATE TABLE IF NOT EXISTS type_question (
	type_id		tinyint UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    type_name	ENUM('Essay','Multiple-Choice')
    );
    
DROP TABLE IF EXISTS category_question;
CREATE TABLE IF NOT EXISTS category_question (
	category_id		TINYINT	UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    category_name	ENUM('Jave','.NET','SQL','Postman','Ruby','...')
    );
    
DROP TABLE IF EXISTS question;
CREATE TABLE IF NOT EXISTS question (
	content			text,
    category_id 	TINYINT UNSIGNED DEFAULT 2,
    foreign key(category_id) references category_question (category_id),
    type_id			TINYINT UNSIGNED DEFAULT 2,
    FOREIGN KEY (type_id) REFERENCES type_question (type_id),
    creator_id		TINYINT UNSIGNED PRIMARY key not null,
    create_date		DATE
    );
 
DROP TABLE IF EXISTS answer;
CREATE TABLE IF NOT EXISTS answer (
	answer_id		TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    content			text,
    question_id		TINYINT UNSIGNED,
    is_correct		ENUM('true','false')
    );
    
DROP TABLE IF EXISTS exam;
CREATE TABLE IF NOT EXISTS exam(
	exam_id		TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `code`		TINYINT UNSIGNED DEFAULT 3,
    title 		text,
    category_id	TINYINT UNSIGNED DEFAULT 2,
    Foreign key (category_id) REFERENCES category_question (category_id),
    duration	DATETIME,
    creator_id 	tinyint unsigned ,
    foreign key (creator_id) references question (creator_id),
    create_date date
   );
   
DROP TABLE IF EXISTS exam_question;
CREATE TABLE IF NOT EXISTS exam_question(
	exam_id 	TINYINT UNSIGNED DEFAULT 2,
    question_id	TINYINT UNSIGNED DEFAULT 2,
	PRIMARY KEY (exam_id,question_id)
    );
	
    
    
    
    

	


	