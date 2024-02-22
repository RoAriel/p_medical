USE MYSQL;
DROP USER IF EXISTS 'vw_user'@'localhost'; 
CREATE USER 'vw_user'@'localhost';
ALTER USER 'vw_user'@'localhost' IDENTIFIED BY 'vw_1234';

-- Permiso de solo lectura sobre el user vw_user
GRANT SELECT ON p_medical.* TO'vw_user'@'localhost';

-- Usuario de edicion
DROP USER IF EXISTS 'ed_user'@'localhost';
CREATE USER 'ed_user'@'localhost';
ALTER USER 'ed_user'@'localhost' IDENTIFIED BY 'ed_1234';

-- Permisos de edicion (SELECT - INSERT - UPDATE)
GRANT SELECT, INSERT, UPDATE ON p_medical.* TO 'ed_user'@'localhost';
