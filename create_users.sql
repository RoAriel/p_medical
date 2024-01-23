USE MYSQL;

CREATE USER 'vw_user'@'localhost';
ALTER USER 'vw_user'@'localhost' IDENTIFIED BY 'vw_1234';

-- Permiso de solo lectura sobre el user vw_user
GRANT SELECT ON p_medical.* TO'vw_user'@'localhost';

-- Usuario de edicion
CREATE USER 'ed_user'@'localhost';
ALTER USER 'ed_user'@'localhost' IDENTIFIED BY 'ed_1234';

-- Permisos de edicion (SELECT - INSERT - UPDATE)
GRANT SELECT, INSERT, UPDATE ON p_medical.* TO 'ed_user'@'localhost';

-- DROP USER 'vw_user'@'localhost'; 
-- DROP USER 'edit_user'@'localhost';

