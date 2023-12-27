DROP SCHEMA IF EXISTS p_medical;

CREATE SCHEMA IF NOT  EXISTS p_medical;

USE p_medical;

CREATE TABLE plan(
id INT AUTO_INCREMENT
, name ENUM ('B1','B2','EM') NOT NULL
, description  LONGTEXT
, PRIMARY KEY(`id`)
);

CREATE TABLE partner(
id INT AUTO_INCREMENT
, dni INT NOT NULL  
, f_name VARCHAR(25) NOT NULL
, l_name VARCHAR(25) NOT NULL
, sex ENUM ('M','F') NOT NULL
, plan_id INT
, address VARCHAR(30) NOT NULL
, phone VARCHAR(25) NOT NULL
, email VARCHAR(50)
, PRIMARY KEY(`id`)
, FOREIGN KEY(`id`) REFERENCES `plan` (`id`)
);

CREATE TABLE medical_history(
id INT AUTO_INCREMENT
, partner_id INT
, md_history LONGTEXT
, PRIMARY KEY(`id`)
, FOREIGN KEY(`id`) REFERENCES `partner` (`id`)
);

CREATE TABLE medical_speciality(
id INT AUTO_INCREMENT
, speciality VARCHAR(30) NOT NULL
, PRIMARY KEY(`id`)
);

CREATE TABLE doctor(
id INT AUTO_INCREMENT
, f_name VARCHAR(25) NOT NULL
, l_name VARCHAR(25) NOT NULL
, speciality_id INT
, PRIMARY KEY(`id`)
, FOREIGN KEY(`id`) REFERENCES `medical_speciality` (`id`)
);

CREATE TABLE branch(
id INT AUTO_INCREMENT
, name VARCHAR(25) NOT NULL
, location VARCHAR(20) NOT NULL
, address VARCHAR(35) NOT NULL
, phone VARCHAR(25) NOT NULL
, PRIMARY KEY(`id`)
);

CREATE TABLE shift(
id INT AUTO_INCREMENT
, partner_id INT
, doctor_id INT
, branch_id INT
, date_s DATE NOT NULL
, time_s TIME NOT NULL
, PRIMARY KEY(`id`)
, FOREIGN KEY(`id`) REFERENCES `partner` (`id`)
, FOREIGN KEY(`id`) REFERENCES `doctor` (`id`)
, FOREIGN KEY(`id`) REFERENCES `branch` (`id`)
);

