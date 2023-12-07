-- Tabla del plan que va tener el socio dentro de la prepaga
CREATE TABLE plan(
id INT AUTO_INCREMENT
, name VARCHAR(15) NOT NULL
, description VARCHAR(100) NOT NULL
, PRIMARY KEY(`id`)
);

-- Tabla de socios
CREATE TABLE partner(
id INT AUTO_INCREMENT
, dni INT NOT NULL  
, f_name VARCHAR(25) NOT NULL
, l_name VARCHAR(25) NOT NULL
, id_plan VARCHAR(10) NOT NULL
, PRIMARY KEY(`id`)
, FOREIGN KEY(`id`) REFERENCES `plan` (`id`)
);

-- Historial medico de los socios
CREATE TABLE medical_history(
id INT AUTO_INCREMENT
, id_partner INT NOT NULL
, md_history VARCHAR(150)
, PRIMARY KEY(`id`)
, FOREIGN KEY(`id`) REFERENCES `partner` (`id`)
);

-- Tabla de especialidades medicas
CREATE TABLE medical_speciality(
id INT AUTO_INCREMENT
, doctor_id INT NOT NULL
, speciality VARCHAR(30) NOT NULL
, PRIMARY KEY(`id`)
);

-- Tabla de medicos
CREATE TABLE doctor(
id INT AUTO_INCREMENT
, f_name VARCHAR(25) NOT NULL
, l_name VARCHAR(25) NOT NULL
, id_speciality INT
, PRIMARY KEY(`id`)
, FOREIGN KEY(`id`) REFERENCES `medical_speciality` (`id`)
);

-- Tabla de sucursales
CREATE TABLE branch(
id INT AUTO_INCREMENT
, name VARCHAR(25) NOT NULL
, location VARCHAR(20) NOT NULL
, address VARCHAR(35) NOT NULL
, PRIMARY KEY(`id`)
);

-- Tabla de turnos
CREATE TABLE shift(
id INT AUTO_INCREMENT
, partner_id INT NOT NULL
, doctor_id INT NOT NULL
, branch_id INT NOT NULL
, date_s DATE NOT NULL
, time_s TIME NOT NULL
, PRIMARY KEY(`id`)
, FOREIGN KEY(`id`) REFERENCES `partner` (`id`)
, FOREIGN KEY(`id`) REFERENCES `doctor` (`id`)
, FOREIGN KEY(`id`) REFERENCES `branch` (`id`)
);

