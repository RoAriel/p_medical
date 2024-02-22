DROP SCHEMA IF EXISTS p_medical;

CREATE SCHEMA IF NOT  EXISTS p_medical;

USE p_medical;

DROP TABLE IF EXISTS plan;
CREATE TABLE plan(
id INT AUTO_INCREMENT NOT NULL
, name ENUM ('B1','B2','EM') NOT NULL
, description  LONGTEXT NOT NULL
, PRIMARY KEY(`id`)
);

DROP TABLE IF EXISTS partner;
CREATE TABLE partner(
id INT AUTO_INCREMENT NOT NULL
, dni INT NOT NULL  
, f_name VARCHAR(25) NOT NULL
, l_name VARCHAR(25) NOT NULL
, date_of_birth DATE NOT NULL
, age INT NOT NULL
, sex ENUM ('M','F') NOT NULL
, plan_id INT NOT NULL
, address VARCHAR(30) NOT NULL
, phone VARCHAR(25) NOT NULL
, email VARCHAR(50)
, PRIMARY KEY(`id`)
, FOREIGN KEY(`plan_id`) REFERENCES `plan` (`id`)
);

DROP TABLE IF EXISTS medical_speciality;
CREATE TABLE medical_speciality(
id INT AUTO_INCREMENT NOT NULL
, speciality VARCHAR(30) NOT NULL
, PRIMARY KEY(`id`)
);

DROP TABLE IF EXISTS medical_history;
CREATE TABLE medical_history(
id INT AUTO_INCREMENT NOT NULL
, partner_id INT NOT NULL
, speciality_id INT NOT NULL
, md_history LONGTEXT NOT NULL
, PRIMARY KEY(`id`)
, FOREIGN KEY(`partner_id`) REFERENCES `partner` (`id`)
, FOREIGN KEY(`speciality_id`) REFERENCES `medical_speciality` (`id`)
);

DROP TABLE IF EXISTS doctor;
CREATE TABLE doctor(
id INT AUTO_INCREMENT NOT NULL
, dni INT NOT NULL
, matricula varchar(15)
, f_name VARCHAR(25) NOT NULL
, l_name VARCHAR(25) NOT NULL
, date_of_birth DATE NOT NULL
, age INT NOT NULL
, sex ENUM ('M','F') NOT NULL
, phone VARCHAR(25) NOT NULL
, email VARCHAR(50) 
, PRIMARY KEY(`id`)
);

DROP TABLE IF EXISTS branch;
CREATE TABLE branch(
id INT AUTO_INCREMENT
, name VARCHAR(25) NOT NULL
, location VARCHAR(20) NOT NULL
, address VARCHAR(35) NOT NULL
, phone VARCHAR(25) NOT NULL
, PRIMARY KEY(`id`)
);

DROP TABLE IF EXISTS relation_speciality_doc;
CREATE TABLE relation_speciality_doc(
id INT AUTO_INCREMENT NOT NULL
, speciality_id INT NOT NULL
, doctor_id INT NOT NULL
, PRIMARY KEY (`id`)
, FOREIGN KEY (`speciality_id`) REFERENCES `medical_speciality` (`id`)
, FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`)
);

DROP TABLE IF EXISTS relation_speciality_branch;
CREATE TABLE relation_speciality_branch(
id INT AUTO_INCREMENT NOT NULL
,speciality_id INT NOT NULL
, branch_id INT NOT NULL
, PRIMARY KEY (`id`)
, FOREIGN KEY (`speciality_id`) REFERENCES `medical_speciality` (`id`)
, FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`)
);

DROP TABLE IF EXISTS shift;
CREATE TABLE shift(
id INT AUTO_INCREMENT
, partner_id INT NOT NULL
, speciality_rel_id INT NOT NULL
, relation_speciality_branch_id INT NOT NULL
, date_s DATE NOT NULL
, time_s TIME NOT NULL
, is_confirm BOOLEAN NOT NULL DEFAULT FALSE
, PRIMARY KEY(`id`)
, FOREIGN KEY(`partner_id`) REFERENCES `partner` (`id`)
, FOREIGN KEY(`speciality_rel_id`) REFERENCES `relation_speciality_doc` (`id`)
, FOREIGN KEY(`relation_speciality_branch_id`) REFERENCES `relation_speciality_branch` (`id`)
);

