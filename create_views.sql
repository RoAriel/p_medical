use p_medical;

CREATE OR REPLACE VIEW vw_shift_detail as (
SELECT p.f_name as Partner_name, p.l_name as Partner_Lastname, 
ms.speciality, doc.f_name as Doc_name, doc.l_name as Doc_Lastname, 
br.location, br.address
date_s,time_s
from shift s

inner join p_medical.partner p
on s.partner_id = p.id

inner join p_medical.relation_speciality_doc sd
on s.speciality_rel_id = sd.id

inner join p_medical.medical_speciality ms
on ms.id = sd.speciality_id

inner join p_medical.doctor doc
on sd.doctor_id = doc.id 

inner join p_medical.relation_speciality_branch sb
on s.relation_speciality_branch_id = sb.id

inner join p_medical.branch br
on br.id = sb.branch_id
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
select speciality, count(*)
from vw_shift_detail
GROUP BY 1);

CREATE OR REPLACE VIEW vw_list_of_partner_per_doctor AS (
select doc_name, doc_lastname, speciality, partner_name, partner_lastname
from vw_shift_detail
ORDER BY 1);

CREATE OR REPLACE VIEW vw_speciality_per_branch AS (
select ms.speciality, br.location, br.address, br.phone
from relation_speciality_branch sb
inner join branch br
on sb.branch_id = br.id
inner join medical_speciality ms
on ms.id = sb.speciality_id
order by 1);