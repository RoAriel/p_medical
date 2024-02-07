use p_medical;

DROP FUNCTION IF EXISTS fn_getAge;
DELIMITER //
create function fn_getAge(p_date date)
returns int
deterministic
begin
	DECLARE age, v_year INT;
    SET v_year = (select Year(p_date));
    SET age = (select YEAR(date_add(curdate(), INTERVAL -v_year YEAR)));

    return age;
end;//
delimiter ;

DROP FUNCTION IF EXISTS fn_getCant_shift_confirm;
DELIMITER //
create function fn_getCant_shift_confirm(p_partnerID INT)
returns int
deterministic
begin
	DECLARE cant INT;
    
    select count(*) 
    INTO cant
    from shift s
    inner join partner p
    on s.partner_id = p.id

    where s.is_confirm = 1
    and p.id = p_partnerID;

    return cant;
end;//
delimiter ;

