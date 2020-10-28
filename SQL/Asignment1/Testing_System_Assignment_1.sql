CREATE DATABASE Testing_System_Assignment_1;
CREATE TABLE 1: Department (
		DepartmentID: 		int,
        DepartmentName:		varchar
        );
        
CREATE TABLE 2: Position (
		PositionID:			int,
        PositionName:		varchar
        );
        
CREATE TABLE 3: Account	(
		AccountID:			int,
        Email:				varchar,
        Username:			varchar,
        Fullname:			varchar,
        DepartmentID:		int,
        PositionID:			varchar,
        CreatDate:			date
        );
        
CREATE TABLE 4: Group (
		GroupID: 			int,
        GroupName:			varchar,
        CreatorID:			int,
        CreateDate:			date
        );
        
CREATE TABLE 5: GroupAccount (
		GroupID:			int,
        AccountID:			varchar,
        JoinDate:			date
        );
        
CREATE TABLE 6: TypeQuestion (
		TypeID:				int,
        TypeName:			varchar
        );
        
CREATE TABLE 7: CategoryQuestion (
		CategoryID:			int,
        CategoryName:		varchar
        );
        
CREATE TABLE 8: Question (
		QuestionID:			varchar,
        Content:			varchar,
        CategoryID:			varchar,
        TypeID:				varchar,
        CreatorID:			int,
        CreateDate:			date
        );
        
CREATE TABLE 9: Answer (
		AnswerID:			int,
        Content:			varchar,
        QuestionID:			int,
        isCorrect:			varchar
        );
        
CREATE TABLE 10: Exam (
		ExamID:				int,
        Code:				int,
        Title:				varchar,
        CategoryID:			int,
        Duration:			varchar,
        CreatorID:			int,
        CreateDate:			date
        );
        
CREATE TABLE 11: ExamQuestion (
		ExamID:				int,
        QuestionID:			int
        );


