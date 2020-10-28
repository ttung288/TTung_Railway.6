DROP DATABASE IF EXISTS lesson_1;
CREATE DATABASE Lesson;
use lesson;
create table Customers (
	Customer_id			int,
    first_name			varchar(50),
    date_of_purchase	date
    );
create table Sale (
	Customer_id			int,
    first_name 			varchar(50),
    date_of_purchase	date
    );
	