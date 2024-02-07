USE p_medical;

SET AUTOCOMMIT = 0;

START TRANSACTION;

-- SELECT COUNT(*) FROM SHIFT WHERE is_confirm = 0; 
-- 3
DELETE FROM SHIFT WHERE is_confirm = 0;

INSERT INTO SHIFT (id ,partner_id, speciality_rel_id , relation_speciality_branch_id ,date_s, time_s, is_confirm) 
VALUES (10, 15, 13, 9, '2024-02-15', '12:40:00',TRUE);

INSERT INTO SHIFT (id ,partner_id, speciality_rel_id , relation_speciality_branch_id ,date_s, time_s, is_confirm) 
VALUES (11, 1, 4, 4, '2024-05-15', '15:40:00',TRUE);

-- SELECT COUNT(*) FROM SHIFT WHERE is_confirm = 0;
-- 0

-- ROLLBACK;
-- COMMIT

--------------------------------------------------------------- 

START TRANSACTION;

INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth,  sex,  plan_id,  address,  phone,  email) VALUES (16,29123535, 'Lucas','Rivera','2000-12-08','M',2,'Pl. Virgen Blanca 67','1558274321','Lucas_Rivera@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth,  sex,  plan_id,  address,  phone,  email) VALUES (17,23235123, 'Cacho','Castaña','2000-12-19','M',1,'Pl. Virgen Blanca 63','1558274123','Cacho_Castaña@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth,  sex,  plan_id,  address,  phone,  email) VALUES (18,29236545, 'Susana','Baeza','2000-11-28','F',3,'Pl. Virgen Blanca 66','1558274213','Susana_Baeza@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth,  sex,  plan_id,  address,  phone,  email) VALUES (19,29237895, 'Yabier','Gomez','2000-12-08','M',1,'Pl. Virgen Blanca 68','1558274231','Yabier_Gomez@gmail.com');

SAVEPOINT lote_1;

INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth,  sex,  plan_id,  address,  phone,  email) VALUES (20,32135535, 'Carme','Barbieri','2000-06-18','F',3,'Pl. Virgen Blanca 60','1558274312','Carme_Barbieri@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth,  sex,  plan_id,  address,  phone,  email) VALUES (21,21335535, 'Mario','Peglini','2000-12-28','M',3,'Pl. Virgen Blanca 61','1558274321','Mario_Peglini@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth,  sex,  plan_id,  address,  phone,  email) VALUES (22,29235321, 'Juanse','Gaze','2000-03-12','M',3,'Pl. Virgen Blanca 70','1558274132','Juanse_Gaze@gmail.com');
INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth,  sex,  plan_id,  address,  phone,  email) VALUES (23,29223135, 'Moonica','Farro','2000-01-14','F',1,'Pl. Virgen Blanca 80','1558274543','Moonica_Farro@gmail.com');

SAVEPOINT lote_2;

-- RELEASE SAVEPOINT lote_1;
-- ROLLBACK;
-- COMMIT;