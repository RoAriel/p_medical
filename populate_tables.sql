USE p_medical;

INSERT INTO PLAN (name,description) VALUES ('B1','Descuento en todo 10%');
INSERT INTO PLAN (name,description) VALUES ('B2','Descuento en todo 20%');
INSERT INTO PLAN (name,description) VALUES ('EM','Descuento en todo 40%');

INSERT INTO PARTNER (id, dni,  f_name,  l_name,  sex,  plan_id,  address,  phone,  email) VALUES (1,22739776, 'Eduardo','Haro','M',3,'Rio Segura 5','1577139025','eduardo_haro@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name,  sex,  plan_id,  address,  phone,  email) VALUES (2,20868229, 'Paul','Centeno','M',2,'Quevedo 79','1538972286','paul_centeno@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name,  sex,  plan_id,  address,  phone,  email) VALUES (3,24114741, 'Maria Candelaria','Espinoza','F',1,'Caminio Ancho 64','1528967013','candelaria_espinoza@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name,  sex,  plan_id,  address,  phone,  email) VALUES (4,23263793, 'Iker','Bellido','F',3,'Granada 1234','1555317488','iker_bellido@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name,  sex,  plan_id,  address,  phone,  email) VALUES (5,28245441, 'Maria','Sanjuan','M',2,'Cadiz 64','1588657255','maria_sanjuan@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name,  sex,  plan_id,  address,  phone,  email) VALUES (6,21687525, 'Jorge','Freire','M',3,'C/ Andalucia 62','1568105376','jorge_freire@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name,  sex,  plan_id,  address,  phone,  email) VALUES (7,23615961, 'Julia','Benavente','F',2,'Plazuela do Porto 53','1539864017','julia_benavente@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name,  sex,  plan_id,  address,  phone,  email) VALUES (8,28930493, 'Francisco','Fernndez','M',1,'Visitacion de la Encina 63','1539134259','francisco_fernndez@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name,  sex,  plan_id,  address,  phone,  email) VALUES (9,24350619, 'Octavio','Galvez','M',1,'Calle Proc. San Sebastian 60','1555147251','octavio_galvez@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name,  sex,  plan_id,  address,  phone,  email) VALUES (10,21544467, 'Ana','Cerezo','F',1,'Reyes Catolicos 30','1559226716','ana_cerezo@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name,  sex,  plan_id,  address,  phone,  email) VALUES (11,24600991, 'Claudia','Galera','F',3,'Boucinia 45','1502951937','claudia_galera@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name,  sex,  plan_id,  address,  phone,  email) VALUES (12,24792215, 'Marian','Pardo','F',1,'Avda. Generalisimo 61','1580988220','marian_pardo@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name,  sex,  plan_id,  address,  phone,  email) VALUES (13,29593566, 'Saul','Climent','M',3,'Antonio Vazquez 5','1554045950','saul_climent@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name,  sex,  plan_id,  address,  phone,  email) VALUES (14,26595549, 'Amparo','Santana','F',2,'Avda. Enrique Peinador 75','1586888030','amparo_santana@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name,  sex,  plan_id,  address,  phone,  email) VALUES (15,29235535, 'Xabier','Baeza','M',2,'Pl. Virgen Blanca 67','1558274483','xabier_baeza@gmail.com');

INSERT INTO medical_history (id, partner_id, md_history) VALUES (1, 1,'n/a');
INSERT INTO medical_history (id, partner_id, md_history) VALUES (2, 2,'n/a');
INSERT INTO medical_history (id, partner_id, md_history) VALUES (3, 3,'n/a');

INSERT INTO medical_speciality values (1, 'Clinico');
INSERT INTO medical_speciality values (2, 'Ginecologo');
INSERT INTO medical_speciality values (3, 'Cardiologo');
INSERT INTO medical_speciality values (4, 'Urologo');
INSERT INTO medical_speciality values (5, 'Nutricionista');
INSERT INTO medical_speciality values (6, 'Oftamologo');
INSERT INTO medical_speciality values (7, 'Odontologo');
INSERT INTO medical_speciality values (8, 'Kinesiologo');

INSERT INTO DOCTOR (id, f_name,  l_name, speciality_id) VALUES (1,'Josue','Rico',1);
INSERT INTO DOCTOR (id, f_name,  l_name, speciality_id) VALUES (2,'Eduardo','Santos',2);
INSERT INTO DOCTOR (id, f_name,  l_name, speciality_id) VALUES (3,'Antonio','Gago',3);
INSERT INTO DOCTOR (id, f_name,  l_name, speciality_id) VALUES (4,'Iris','Lema',4);
INSERT INTO DOCTOR (id, f_name,  l_name, speciality_id) VALUES (5,'Monica','Carranza',5);
INSERT INTO DOCTOR (id, f_name,  l_name, speciality_id) VALUES (6,'Asuncion','Falcon',6);
INSERT INTO DOCTOR (id, f_name,  l_name, speciality_id) VALUES (7,'Mariana','Uriarte',7);
INSERT INTO DOCTOR (id, f_name,  l_name, speciality_id) VALUES (8,'Olatz','Vazquez',8);

INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (1,'Consultorio La Esmeralda', 'Zona Oeste', 'Ctra. de Fuentenueva 9','1529231373');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (2,'Consultorio Villa Espania', 'Quilmes', 'Fuente del Gallo 68','1557340592');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (3,'Consultorio Loreto', 'Dorrego', 'C/ Andalucia 62','1518569446');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (4,'Consultorio San Isidro', 'San Isidro', 'Puerto Lugar 24','1588804546');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (5,'Consultorio Monaco', 'Valle', 'Bellavista 12','1539131925');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (6,'Consultorio Manarata', 'Zona Sur', 'Cercas Bajas 76','1589371878');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (7,'Consultorio Cruz de Plata', 'Budapest', 'Padre Caro 45','1506072502');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (8,'Consultorio La Madrid', 'Quilmes', 'Avda. Alameda Sundheim 86','1542400884');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (9,'Consultorio Quilmes', 'Quilmes', 'Ctra. de la Puerta 66','1559777876');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (10,'Clinica Mother', 'Zona Sur', 'Atamaria 11','1560002788');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (11,'Clinica Nilo', 'Zona Sur', 'Prolongacion San Sebastian 96','1540796611');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (12,'Clinica Del Renacimiento', 'Zona Este', 'Av. Zumalakarregi 37','1590132216');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (13,'Clinica Monroue', 'Zona Este', 'Cartagena 87','1595266130');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (14,'Clinica Tres Cruces', 'Zona Sur', 'Calvo Sotelo 52','1513792105');
INSERT INTO BRANCH (id, name,  location, address, phone) VALUES (15,'Clinica Matris', 'Zona Norte', 'C/ Manuel Iradier 50','1509604324');



INSERT INTO SHIFT (id ,partner_id, doctor_id , branch_id ,date_s, time_s) VALUES (1, 3, 4, 1, '2024-01-10', '09:00:00');
INSERT INTO SHIFT (id ,partner_id, doctor_id , branch_id ,date_s, time_s) VALUES (2, 1, 8, 5, '2024-01-21', '16:30:00');
INSERT INTO SHIFT (id ,partner_id, doctor_id , branch_id ,date_s, time_s) VALUES (3, 2, 6, 7, '2024-01-15', '12:40:00');