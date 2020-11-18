-- Tạo Database
DROP DATABASE IF EXISTS Exam;
CREATE DATABASE IF NOT EXISTS Exam;
USE Exam;

-- Questions
-- 1. Tạo table với các ràng buộc và kiểu dữ liệu
-- Thêm ít nhất 3 bản ghi vào table

-- tạo table coutry
DROP TABLE IF EXISTS country;
CREATE TABLE IF NOT EXISTS country (
	country_id			TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT ,
    country_name		NVARCHAR(100)
);

-- tạo table location
DROP TABLE IF EXISTS location;
CREATE TABLE IF NOT EXISTS location (
	location_id			TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT ,
	street_address		NVARCHAR(100),
    postal_code			VARCHAR(10),
    country_id			TINYINT UNSIGNED,
    FOREIGN KEY (country_id) REFERENCES country (country_id)
    );
    
-- tạo table employee
DROP TABLE IF EXISTS employee;
CREATE TABLE IF NOT EXISTS employee (
	employee_id			TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT ,
    full_name			NVARCHAR(100),
    email				VARCHAR(150),
    location_id			TINYINT UNSIGNED,
    FOREIGN KEY (location_id) REFERENCES location (location_id)
    );
    
-- thêm dữ liệu vào bản ghi
-- thêm dữ liệu vào country
INSERT INTO country	(country_name	)
VALUES				('Hà Nội'		),
					('Việt Nam'		),
                    ('Thanh Hóa'	),
                    ('bắc Ninh'		),
                    ('Đà Nẵng'		),
                    ('TP.HCM'		);
                    
-- thêm dữ liệu vào location
INSERT INTO location	(street_address			,postal_code		,country_id		)
VALUES					('197 An Dương Vương'	,'197A'				,1				),
						('256 Đội Cấn'			,'256DC'			,2				),
						('317 Ngụy Như'			,'317N'				,3				),
						('222 Lê Văn Lương'		,'222L'				,4				),
						('111 Thanh niên'		,'111T'				,2				),
						('696 Phạm Văn Đồng'	,'696P'				,1				);
                    
-- thêm dữ liệu vào employee
INSERT INTO employee(full_name			,email					,location_id	)
VALUES				(N'Tên số 1'		,'tenso1@gmail.com'		,1	),
					(N'Tên số 2'		,'tenso2@gmail.com'		,2	),
                    (N'Tên số 3'		,'tenso3@gmail.com'		,3	),
                    (N'Tên số 4'		,'tenso4@gmail.com'		,4	),
                    (N'Tên số 5'		,'nn03@gmail.com'		,5	),
                    (N'Tên số 6'		,'tenso6@gmail.com'		,6	),
                    (N'Tên số 7'		,'tenso7@gmail.com'		,1	);
                    
-- 2. Viết lệnh để

-- a) Lấy tất cả các nhân viên thuộc Việt nam
SELECT *
FROM location
RIGHT JOIN country USING (country_id)
JOIN employee USING (location_id)
WHERE country_id = (	SELECT country_id
						FROM country
						WHERE country_name = 'Việt Nam'
                        );


-- b) Lấy ra tên quốc gia của employee có email là "nn03@gmail.com"
SELECT country_name
FROM country
WHERE country_id = (SELECT country_id
					FROM employee
					RIGHT JOIN location USING (location_id)
					WHERE email = 'nn03@gmail.com');

-- c) Thống kê mỗi country, mỗi location có bao nhiêu employee đang làm việc.
SELECT country_id, location_id , count(country_id) as Soluongemployee_country, count(location_id) as Soluongemployee_location
FROM location 
RIGHT JOIN  employee  USING (location_id)
RIGHT JOIN 	country  USING (country_id)
GROUP BY country_id 
HAVING count(country_id);


-- 3. Tạo trigger cho table Employee chỉ cho phép insert mỗi quốc gia có tối đa 10 employee
DROP TRIGGER IF EXISTS Max_10employee;
DELIMITER $$
CREATE TRIGGER Max_10employee
BEFORE INSERT ON employee
FOR EACH ROW
	BEGIN
		IF new.employee_id IN (	SELECT employee_id FROM (	SELECT country_id, location_id , count(country_id) as number_of_employee
															FROM location 
															RIGHT JOIN  employee  USING (location_id)
															RIGHT JOIN 	country  USING (country_id)
															GROUP BY country_id
                                                            HAVING  number_of_employee = 10 ) as temp ) THEN
                                 
			SIGNAL SQLSTATE '12345'
			SET MESSAGE_TEXT  = 'FULL';
        END IF;
	END $$
DELIMITER ;

-- 


