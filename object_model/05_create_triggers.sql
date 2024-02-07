USE p_medical;

DROP TABLE IF EXISTS partner_audit_logs; 
CREATE TABLE IF NOT EXISTS partner_audit_logs
(
ID_LOG INT AUTO_INCREMENT
, id_user  int NOT NULL
, changes varchar(100) 
, user_mod VARCHAR(100)
, date_UPD_INS_DEL TIMESTAMP
, acction_UPD_INS_DEL VARCHAR(3)
, PRIMARY KEY (ID_LOG)
);

DROP TRIGGER IF EXISTS TRG_partner_audit_logs_ins;
DELIMITER //
CREATE TRIGGER TRG_partner_audit_logs_ins AFTER INSERT ON Partner
FOR EACH ROW 
BEGIN

INSERT INTO partner_audit_logs (id_user, changes, user_mod, date_UPD_INS_DEL, acction_UPD_INS_DEL)
VALUES (NEW.id, concat('Se inserto el PARTNER_ID: ',NEW.id,' ','con el PLAN_ID: ',NEW.plan_id), CURRENT_USER() , NOW(), 'INS');

END//
DELIMITER;

DROP TRIGGER IF EXISTS TRG_partner_audit_logs_upd;
DELIMITER //
CREATE TRIGGER TRG_partner_audit_logs_upd AFTER UPDATE ON Partner
FOR EACH ROW 
BEGIN

INSERT INTO partner_audit_logs (id_user, changes, user_mod, date_UPD_INS_DEL, acction_UPD_INS_DEL)
VALUES (OLD.id, concat('Update el PLAN_ID: ',OLD.plan_id,' ','con el PLAN_ID: ',NEW.plan_id), CURRENT_USER() , NOW(), 'UPD');

END//
DELIMITER ;

INSERT INTO PARTNER (id, dni,  f_name,  l_name, date_of_birth,  sex,  plan_id,  address,  phone,  email) VALUES (20,22739776, 'Micaela','Haro','1975-10-17','M',3,'Rio Negro 5','1577319025','micaela_haro@gmail.com');
UPDATE PARTNER set plan_id = 3 where id = 20;

select * from partner_audit_logs;

DROP TABLE IF EXISTS shift_audit_logs; 
CREATE TABLE IF NOT EXISTS shift_audit_logs
(
ID_LOG INT AUTO_INCREMENT
, id_shift  int NOT NULL
, changes varchar(200)
, user_mod VARCHAR(100)
, date_UPD_INS_DEL DATE
, acction_UPD_INS_DEL VARCHAR(3)
, PRIMARY KEY (ID_LOG)
);

DROP TRIGGER IF EXISTS TRG_shift_audit_logs_ins;
DELIMITER //
CREATE TRIGGER TRG_shift_audit_logs_ins AFTER INSERT ON Shift
FOR EACH ROW 
BEGIN

INSERT INTO shift_audit_logs (id_shift, changes, user_mod, date_UPD_INS_DEL, acction_UPD_INS_DEL)
VALUES (NEW.id, concat('Se inserto el SHIFT_ID: ',NEW.id,' ','al PARTNER_ID: ',NEW.partner_id), CURRENT_USER() , NOW(), 'INS');

END//
DELIMITER ;

DROP TRIGGER IF EXISTS TRG_shift_audit_logs_upd;
DELIMITER //
CREATE TRIGGER TRG_shift_audit_logs_upd BEFORE UPDATE ON Shift
FOR EACH ROW 
BEGIN

INSERT INTO shift_audit_logs (id_shift, changes, user_mod, date_UPD_INS_DEL, acction_UPD_INS_DEL)
VALUES (old.id, concat('Update SHIFT_ID: ',old.id,' ','al PARTNER_ID: ',old.partner_id,' ',
'old_date: ',old.date_s, ' new_date: ',new.date_s,
'old_time: ',old.time_s, ' new_time: ',new.time_s), CURRENT_USER() , NOW(), 'INS');

END//
DELIMITER ;

INSERT INTO SHIFT (id ,partner_id, speciality_rel_id , relation_speciality_branch_id ,date_s, time_s, is_confirm) 
VALUES (11, 2, 15, 7, '2024-01-15', '12:40:00',true);

update shift
set date_s='2024-02-15', time_s = '13:00:00'
where id = 11;

select * from shift_audit_logs;