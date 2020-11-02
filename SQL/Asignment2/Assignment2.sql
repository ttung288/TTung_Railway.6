drop DATABASE IF EXISTS fresher;
CREATE DATABASE IF NOT EXISTS fresher;
USE fresher;

DROP TABLE IF EXISTS Trainee;
CREATE TABLE IF NOT EXISTS Trainee(
	trainee_id			TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    full_name 			NVARCHAR(100) NOT NULL,
    birth_date			DATE not null,
    gender				ENUM('male','female','unknown'),
    et_iq				tinyint unsigned,
						check(et_iq >= 0 && et_iq <= 20),
    et_gmath			tinyint unsigned,
						check(et_gmath >= 0 && et_gmath  <= 50),
    training_class		tinyint unsigned,
    evaluation_notes	text,
    vti_account 		smallint unique not null
    );
    
