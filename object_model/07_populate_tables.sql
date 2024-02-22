USE p_medical;

SET FOREIGN_KEY_CHECKS=0;

INSERT INTO PLAN (name,description) VALUES ('B1','Descuento en todo 10%');
INSERT INTO PLAN (name,description) VALUES ('B2','Descuento en todo 20%');
INSERT INTO PLAN (name,description) VALUES ('EM','Descuento en todo 40%');

INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth, age,  sex,  plan_id,  address,  phone,  email)  VALUES (1,22739776, 'Eduardo','Haro','1975-10-17',fn_getAge('1975-10-17'),'M',3,'Rio Segura 5','1577139025','eduardo_haro@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth, age,  sex,  plan_id,  address,  phone,  email)  VALUES (2,20868229, 'Paul','Centeno','1976-03-15',fn_getAge('1976-03-15'),'M',2,'Quevedo 79','1538972286','paul_centeno@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth, age,  sex,  plan_id,  address,  phone,  email)  VALUES (3,24114741, 'Maria Candelaria','Espinoza','1978-03-07',fn_getAge('1978-03-07'),'F',1,'Caminio Ancho 64','1528967013','candelaria_espinoza@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth, age,  sex,  plan_id,  address,  phone,  email)  VALUES (4,23263793, 'Iker','Bellido','1982-03-30',fn_getAge('1982-03-30'),'F',3,'Granada 1234','1555317488','iker_bellido@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth, age,  sex,  plan_id,  address,  phone,  email)  VALUES (5,28245441, 'Maria','Sanjuan','1984-12-02',fn_getAge('1984-12-02'),'M',2,'Cadiz 64','1588657255','maria_sanjuan@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth, age,  sex,  plan_id,  address,  phone,  email)  VALUES (6,21687525, 'Jorge','Freire','1985-01-07',fn_getAge('1985-01-07'),'M',3,'C/ Andalucia 62','1568105376','jorge_freire@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth, age,  sex,  plan_id,  address,  phone,  email)  VALUES (7,23615961, 'Julia','Benavente','1988-08-09',fn_getAge('1988-08-09'),'F',2,'Plazuela do Porto 53','1539864017','julia_benavente@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth, age,  sex,  plan_id,  address,  phone,  email)  VALUES (8,28930493, 'Francisco','Fernndez','1988-11-18',fn_getAge('1988-11-18'),'M',1,'Visitacion de la Encina 63','1539134259','francisco_fernndez@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth, age,  sex,  plan_id,  address,  phone,  email)  VALUES (9,24350619, 'Octavio','Galvez','1989-03-31',fn_getAge('1989-03-31'),'M',1,'Calle Proc. San Sebastian 60','1555147251','octavio_galvez@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth, age,  sex,  plan_id,  address,  phone,  email)  VALUES (10,21544467, 'Ana','Cerezo','1989-07-20',fn_getAge('1989-07-20'),'F',1,'Reyes Catolicos 30','1559226716','ana_cerezo@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth, age,  sex,  plan_id,  address,  phone,  email)  VALUES (11,24600991, 'Claudia','Galera','1992-09-27',fn_getAge('1992-09-27'),'F',3,'Boucinia 45','1502951937','claudia_galera@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth, age,  sex,  plan_id,  address,  phone,  email)  VALUES (12,24792215, 'Marian','Pardo','1994-06-12',fn_getAge('1994-06-12'),'F',1,'Avda. Generalisimo 61','1580988220','marian_pardo@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth, age,  sex,  plan_id,  address,  phone,  email)  VALUES (13,29593566, 'Saul','Climent','1995-02-15',fn_getAge('1995-02-15'),'M',3,'Antonio Vazquez 5','1554045950','saul_climent@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth, age,  sex,  plan_id,  address,  phone,  email)  VALUES (14,26595549, 'Amparo','Santana','1995-09-17',fn_getAge('1995-09-17'),'F',2,'Avda. Enrique Peinador 75','1586888030','amparo_santana@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth, age,  sex,  plan_id,  address,  phone,  email)  VALUES (15,29235535, 'Xabier','Baeza','2000-12-08',fn_getAge('2000-12-08'),'M',2,'Pl. Virgen Blanca 67','1558274483','xabier_baeza@gmail.com');

INSERT INTO medical_speciality values (1, 'Clinico');
INSERT INTO medical_speciality values (2, 'Ginecologo');
INSERT INTO medical_speciality values (3, 'Cardiologo');
INSERT INTO medical_speciality values (4, 'Urologo');
INSERT INTO medical_speciality values (5, 'Nutricionista');
INSERT INTO medical_speciality values (6, 'Oftamologo');
INSERT INTO medical_speciality values (7, 'Odontologo');
INSERT INTO medical_speciality values (8, 'Kinesiologo');
INSERT INTO medical_speciality values (9, 'Radiologo');
INSERT INTO medical_speciality values (10,'Dermatologia');
INSERT INTO medical_speciality values (11,'Tramautologia');
INSERT INTO medical_speciality values (12,'Remautologia');
INSERT INTO medical_speciality values (13,'Neurologia');
INSERT INTO medical_speciality values (14,'Cirujano');
INSERT INTO medical_speciality values (15,'Obstetra');

INSERT INTO medical_history (id, partner_id, speciality_id, md_history) VALUES (1, 1,4,'n/a');
INSERT INTO medical_history (id, partner_id, speciality_id, md_history) VALUES (2, 2,10,'n/a');
INSERT INTO medical_history (id, partner_id, speciality_id, md_history) VALUES (3, 3,7,'n/a');

INSERT INTO DOCTOR (id, dni, matricula, f_name, l_name, date_of_birth, age, sex, phone, email) VALUES (2,35660310,'MAT2699830','Eduardo','Santos','1990-11-12',fn_getAge('1990-11-12'),'M','1155040467','eduardo.santos@medical.com');
INSERT INTO DOCTOR (id, dni, matricula, f_name, l_name, date_of_birth, age, sex, phone, email) VALUES (3,30310727,'MAT6898643','Antonio','Gago','1990-04-02',fn_getAge('1990-04-02'),'M','1126924632','antonio.gago@medical.com');
INSERT INTO DOCTOR (id, dni, matricula, f_name, l_name, date_of_birth, age, sex, phone, email) VALUES (4,36486582,'MAT0688566','Iris','Lema','1987-06-06',fn_getAge('1987-06-06'),'F','1193021784','iris.lema@medical.com');
INSERT INTO DOCTOR (id, dni, matricula, f_name, l_name, date_of_birth, age, sex, phone, email) VALUES (5,33976495,'MAT1771761','Monica','Carranza','1980-07-23',fn_getAge('1980-07-23'),'F','1120809478','monica.carranza@medical.com');
INSERT INTO DOCTOR (id, dni, matricula, f_name, l_name, date_of_birth, age, sex, phone, email) VALUES (6,29264698,'MAT0156879','Asuncion','Falcon','1989-12-15',fn_getAge('1989-12-15'),'F','1188452915','asuncion.falcon@medical.com');
INSERT INTO DOCTOR (id, dni, matricula, f_name, l_name, date_of_birth, age, sex, phone, email) VALUES (7,36895045,'MAT2849879','Mariana','Uriarte','1993-09-05',fn_getAge('1993-09-05'),'F','1117871178','mariana.uriarte@medical.com');
INSERT INTO DOCTOR (id, dni, matricula, f_name, l_name, date_of_birth, age, sex, phone, email) VALUES (8,35522050,'MAT2692254','Olatz','Vazquez','1993-01-07',fn_getAge('1993-01-07'),'M','1198998880','olatz.vazquez@medical.com');
INSERT INTO DOCTOR (id, dni, matricula, f_name, l_name, date_of_birth, age, sex, phone, email) VALUES (9,27172318,'MAT2318239','Eduardo','Santos','1979-12-31',fn_getAge('1979-12-31'),'M','1124292595','eduardo.santos@medical.com');
INSERT INTO DOCTOR (id, dni, matricula, f_name, l_name, date_of_birth, age, sex, phone, email) VALUES (10,32483200,'MAT2848995','Marta','Vazquez','1985-04-23',fn_getAge('1985-04-23'),'F','1105035921','marta.vazquez@medical.com');


INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (1,'Consultorio La Esmeralda', 'Zona Oeste', 'Ctra. de Fuentenueva 9','1529231373');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (2,'Consultorio Villa Espania', 'Zona Sur', 'Fuente del Gallo 68','1557340592');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (3,'Consultorio Loreto', 'Zona Norte', 'C/ Andalucia 62','1518569446');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (4,'Consultorio San Isidro', 'Zona Norte', 'Puerto Lugar 24','1588804546');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (5,'Consultorio Monaco', 'Zona Oeste', 'Bellavista 12','1539131925');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (6,'Consultorio Manarata', 'Zona Sur', 'Cercas Bajas 76','1589371878');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (7,'Consultorio Cruz de Plata', 'Zona Norte', 'Padre Caro 45','1506072502');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (8,'Consultorio La Madrid', 'Zona Sur', 'Avda. Alameda Sundheim 86','1542400884');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (9,'Consultorio Zona Sur', 'Zona Sur', 'Ctra. de la Puerta 66','1559777876');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (10,'Clinica Mother', 'Zona Sur', 'Atamaria 11','1560002788');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (11,'Clinica Nilo', 'Zona Sur', 'Prolongacion San Sebastian 96','1540796611');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (12,'Clinica Del Renacimiento', 'Zona Este', 'Av. Zumalakarregi 37','1590132216');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (13,'Clinica Monroue', 'Zona Este', 'Cartagena 87','1595266130');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (14,'Clinica Tres Cruces', 'Zona Sur', 'Calvo Sotelo 52','1513792105');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (15,'Clinica Matris', 'Zona Norte', 'C/ Manuel Iradier 50','1509604324');

INSERT INTO relation_speciality_doc (id,speciality_id, doctor_id) VALUES (1,1,1);
INSERT INTO relation_speciality_doc (id,speciality_id, doctor_id) VALUES (2,2,2);
INSERT INTO relation_speciality_doc (id,speciality_id, doctor_id) VALUES (3,3,3);
INSERT INTO relation_speciality_doc (id,speciality_id, doctor_id) VALUES (4,4,4);
INSERT INTO relation_speciality_doc (id,speciality_id, doctor_id) VALUES (5,5,5);
INSERT INTO relation_speciality_doc (id,speciality_id, doctor_id) VALUES (6,6,6);
INSERT INTO relation_speciality_doc (id,speciality_id, doctor_id) VALUES (7,7,7);
INSERT INTO relation_speciality_doc (id,speciality_id, doctor_id) VALUES (8,8,8);
INSERT INTO relation_speciality_doc (id,speciality_id, doctor_id) VALUES (9,9,9);
INSERT INTO relation_speciality_doc (id,speciality_id, doctor_id) VALUES (10,10,10);
INSERT INTO relation_speciality_doc (id,speciality_id, doctor_id) VALUES (11,3,3);
INSERT INTO relation_speciality_doc (id,speciality_id, doctor_id) VALUES (12,8,1);
INSERT INTO relation_speciality_doc (id,speciality_id, doctor_id) VALUES (13,9,3);
INSERT INTO relation_speciality_doc (id,speciality_id, doctor_id) VALUES (14,15,5);
INSERT INTO relation_speciality_doc (id,speciality_id, doctor_id) VALUES (15,14,4);
INSERT INTO relation_speciality_doc (id,speciality_id, doctor_id) VALUES (16,14,4);

INSERT INTO relation_speciality_branch (id, speciality_id,branch_id) VALUES (1,1,1);
INSERT INTO relation_speciality_branch (id, speciality_id,branch_id) VALUES (2,2,2);
INSERT INTO relation_speciality_branch (id, speciality_id,branch_id) VALUES (3,3,3);
INSERT INTO relation_speciality_branch (id, speciality_id,branch_id) VALUES (4,4,4);
INSERT INTO relation_speciality_branch (id, speciality_id,branch_id) VALUES (5,5,5);
INSERT INTO relation_speciality_branch (id, speciality_id,branch_id) VALUES (6,6,6);
INSERT INTO relation_speciality_branch (id, speciality_id,branch_id) VALUES (7,7,7);
INSERT INTO relation_speciality_branch (id, speciality_id,branch_id) VALUES (8,8,8);
INSERT INTO relation_speciality_branch (id, speciality_id,branch_id) VALUES (9,9,9);
INSERT INTO relation_speciality_branch (id, speciality_id,branch_id) VALUES (10,10,10);
INSERT INTO relation_speciality_branch (id, speciality_id,branch_id) VALUES (11,5,11);
INSERT INTO relation_speciality_branch (id, speciality_id,branch_id) VALUES (12,8,12);
INSERT INTO relation_speciality_branch (id, speciality_id,branch_id) VALUES (13,2,13);
INSERT INTO relation_speciality_branch (id, speciality_id,branch_id) VALUES (14,1,14);
INSERT INTO relation_speciality_branch (id, speciality_id,branch_id) VALUES (15,7,15);
INSERT INTO relation_speciality_branch (id, speciality_id,branch_id) VALUES (16,13,5);

INSERT INTO SHIFT (id ,partner_id, speciality_rel_id , relation_speciality_branch_id ,date_s, time_s, is_confirm) VALUES (1, 3, 1, 1, '2024-01-10', '09:00:00', true);
INSERT INTO SHIFT (id ,partner_id, speciality_rel_id , relation_speciality_branch_id ,date_s, time_s, is_confirm) VALUES (2, 1, 2, 5, '2024-01-21', '16:30:00', true);
INSERT INTO SHIFT (id ,partner_id, speciality_rel_id , relation_speciality_branch_id ,date_s, time_s, is_confirm) VALUES (10, 1, 16, 5, '2024-01-21', '18:30:00', false);
INSERT INTO SHIFT (id ,partner_id, speciality_rel_id , relation_speciality_branch_id ,date_s, time_s, is_confirm) VALUES (3, 2, 3, 7, '2024-01-15', '12:40:00', true);
INSERT INTO SHIFT (id ,partner_id, speciality_rel_id , relation_speciality_branch_id ,date_s, time_s, is_confirm) VALUES (4, 12, 4, 1, '2024-01-11', '09:00:00',false);
INSERT INTO SHIFT (id ,partner_id, speciality_rel_id , relation_speciality_branch_id ,date_s, time_s, is_confirm) VALUES (5, 7, 5, 5, '2024-01-15', '16:30:00',true);
INSERT INTO SHIFT (id ,partner_id, speciality_rel_id , relation_speciality_branch_id ,date_s, time_s, is_confirm) VALUES (6, 4, 6, 7, '2024-01-15', '12:40:00',true);
INSERT INTO SHIFT (id ,partner_id, speciality_rel_id , relation_speciality_branch_id ,date_s, time_s, is_confirm) VALUES (7, 5, 7, 1, '2024-01-10', '09:00:00',true);
INSERT INTO SHIFT (id ,partner_id, speciality_rel_id , relation_speciality_branch_id ,date_s, time_s, is_confirm) VALUES (8, 3, 8, 5, '2024-01-21', '16:30:00',true);
INSERT INTO SHIFT (id ,partner_id, speciality_rel_id , relation_speciality_branch_id ,date_s, time_s, is_confirm) VALUES (9, 2, 15, 7, '2024-01-15', '12:40:00',false);