-- tạo database
DROP DATABASE IF EXISTS Final_Exam_2;
CREATE DATABASE IF NOT EXISTS Final_Exam_2;
USE Final_Exam_2;


-- Questions
-- 1. Tạo table với các ràng buộc và kiểu dữ liệu
-- tạo table GiangVien
DROP TABLE IF EXISTS giang_vien;
CREATE TABLE IF NOT EXISTS giang_vien (
magv		TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
hoten		NVARCHAR(100),
luong		VARCHAR(100)
);

-- tạo table SinhVien
DROP TABLE IF EXISTS sinh_vien;
CREATE TABLE IF NOT EXISTS sinh_vien (
masv		TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
hoten		NVARCHAR(100),
namsinh		YEAR,
quequan		NVARCHAR(100)	
);

-- tạo table DeTai
DROP TABLE IF EXISTS de_tai;
CREATE TABLE IF NOT EXISTS de_tai (
madt		TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
tendt		NVARCHAR(50),
kinhphi		INT,
noithuctap	VARCHAR(100)
);

-- tạo table HuongDan
DROP TABLE IF EXISTS huong_dan;
CREATE TABLE IF NOT EXISTS huong_dan (
id 			TINYINT UNSIGNED PRIMARY key AUTO_INCREMENT,
masv		TINYINT UNSIGNED ,
madt		TINYINT UNSIGNED,
magv		TINYINT	UNSIGNED,
ketqua		VARCHAR(100),
FOREIGN KEY (masv) REFERENCES sinh_vien (masv),
FOREIGN KEY (madt) REFERENCES de_tai (madt),
FOREIGN KEY (magv) REFERENCES giang_vien (magv)
);


-- thêm dữ liệu
-- thêm dữ liệu vào GiangVien
INSERT INTO giang_vien 	(magv	,hoten				,luong	)
VALUES					(1		,'Nguyễn văn a'		,'1000000'),
						(2		,'Nguyễn văn b'		,'2000000'),
                        (3		,'Nguyễn văn c'		,'3000000'),
                        (4		,'Nguyễn văn d'		,'4000000');
 
 -- thêm dữ liệu vào SinhVien
INSERT INTO sinh_vien 	(masv	,hoten				,namsinh		,quequan	)
VALUES					(1		,'Nguyễn văn 1'		,'1999'	,'HN'		),
						(2		,'Nguyễn văn 2'		,'2000'	,'VP'		),
                        (3		,'Nguyễn văn 3'		,'2001'	,'HP'		),
                        (4		,'Nguyễn văn 4'		,'1998'	,'TN"'		);
   
   -- thêm dữ liệu vào DeTai
 INSERT INTO de_tai 	(madt	,tendt						,kinhphi		,noithuctap	)
VALUES					(1		,'CONG NGHE SINH HOC'		,'1250000'	,'HN'		),
						(2		,'CONG NGHE HOA HOC'		,'1350000'	,'DN'		),
						(3		,'CONG NGHE THU 3'			,'1500000'	,'HCM'		),
						(4		,'CONG NGHE NGUYEN TU'		,'2000000'	,'BN'		),
						(5		,'CONG NGHE LAM BOM'		,'1000000'	,'KH'		);
                    
	-- thêm dữ liệu vào huong dan
INSERT INTO huong_dan 	(id		,masv	,madt	,magv	,ketqua	)
VALUES					(1		,'1'	,'1'	,'4'	,'pass'	),  
						(2		,'2'	,'1'	,'2'	,'Falle'),   
                        (3		,'3'	,'3'	,'4'	,'pass'	),   
                        (4		,'1'	,'2'	,'1'	,'Falle'),   
                        (5		,'1'	,''	,'3'	,'pass'	);  
                        
                        
-- 2:Viết lệnh để
-- a) Lấy tất cả các sinh viên chưa có đề tài hướng dẫn.
SELECT masv, hoten 
FROM huong_dan
LEFT JOIN sinh_vien USING (masv)
WHERE madt = NULL;

-- b) Lấy ra số sinh viên làm đề tài ‘CONG NGHE SINH HOC’
SELECT tendt, COUNT(madt) AS sosinhvien, GROUP_CONCAT(masv) as masvlamdetai
from huong_dan
LEFT JOIN de_tai USING ( madt)
WHERE madt = (	SELECT madt
				FROM de_tai
                WHERE tendt = 'CONG NGHE SINH HOC');

-- 3:Tạo view có tên là "SinhVienInfo"
CREATE VIEW sinh_vien_info as 
	SELECT masv, hoten, tendt 
    FROM huong_dan
    LEFT JOIN de_tai USING (madt)
    LEFT JOIN sinh_vien USING (masv)
    
    
  -- 4 
DROP TRIGGER Q4
DELIMITER $$
CREATE TRIGGER Q4
BEFORE INSERT ON sinh_vien
FOR EACH ROW
	BEGIN	
		IF NEW.namsinh <= 1900 THEN
			SIGNAL SQLSTATE '10000'
            SET MESSAGE_TEXT = '"Năm sinh phải > 1900"';
		END IF;
	END$$
DELIMITER ;

-- test
INSERT INTO   sinh_vien 	(masv	,hoten				,namsinh		,quequan	)
VALUE						(5		,'Nguyễn văn 9'		,'1990'			,'HN'		);  

SELECT * FROM sinh_vien;                 