 USE P_MEDICAL;
 
 DROP PROCEDURE sp_order_partner_by;
 DELIMITER //
 create procedure sp_order_partner_by (in p_column varchar(30), in p_order varchar(4))
begin
	if p_order = 'DESC' then
    set @qry = CONCAT('SELECT f_name, l_name from p_medical.partner order by ',p_column,' DESC;');
    else
    set @qry = CONCAT('SELECT f_name, l_name from p_medical.partner order by ',p_column,' ASC');
    END IF;
    
    PREPARE runSql FROM @qry;
    EXECUTE runSql;
    DEALLOCATE PREPARE runSql;
    
end //
DELIMITER ;

call sp_order_partner_by('f_name', 'DESC');
call sp_order_partner_by('f_name', 'ASC');

 DROP PROCEDURE sp_add_or_del_medSpeciality;
 DELIMITER //
 create procedure sp_add_or_del_medSpeciality (in p_opcion char(3), in p_id_speciality int, in p_speciality varchar(30))
begin
	if p_opcion = 'INS' then
    INSERT INTO medical_speciality (speciality) VALUES(p_speciality);
    elseif p_opcion = 'DEL' then
    DELETE FROM medical_speciality WHERE id = p_id_speciality;
    END IF;

    
end //
DELIMITER ;

call sp_add_or_del_medSpeciality('INS',null,'Oncologo');
call sp_add_or_del_medSpeciality('DEL',16,''); -- en este ejemplo el 16 es el que se agrega en la linea de arriba