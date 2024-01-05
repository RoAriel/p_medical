use p_medical;

CREATE OR REPLACE VIEW vw_shift_detail as (
select p.f_name as p_name, p.l_name as p_last_name, 
d.f_name as doctor_name, d.l_name as doctor_last_name, 
ms.speciality as spec_name, b.name as branch, b.location as branch_location,
s.date_s as date_shift, s.time_s as time_shift
from shift s
inner join partner p
on s.partner_id = p.id
inner join doctor d
on s.doctor_id = d.id
inner join medical_speciality ms
on ms.id = d.speciality_id
inner join branch b
on s.branch_id = b.id
);

CREATE OR REPLACE VIEW VW_northern_zone_branches AS
(select * from branch where lower(location) = 'zona norte');

CREATE OR REPLACE VIEW VW_eastern_zone_branches AS
(select * from branch where lower(location) = 'zona este');

CREATE OR REPLACE VIEW VW_south_zone_branches AS
(select * from branch where lower(location) = 'zona sur');

CREATE OR REPLACE VIEW VW_west_zone_branches AS
(select * from branch where lower(location) = 'zona oeste');

CREATE OR REPLACE VIEW vw_amount_per_gender AS (
SELECT sex, count(*)as catidad
from partner
GROUP BY 1);

CREATE OR REPLACE VIEW vw_number_of_shifts_per_specialty AS (
select spec_name, count(*)
from vw_shift_detail
GROUP BY 1);

CREATE OR REPLACE VIEW vw_list_of_partner_per_doctor AS (
select doctor_name, doctor_last_name, spec_name, p_name, p_last_name
from vw_shift_detail
ORDER BY 1);

