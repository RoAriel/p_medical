use p_medical;

CREATE OR REPLACE VIEW vw_shift_detail as (
SELECT p.f_name as Partner_name, p.l_name as Partner_Lastname, 
ms.speciality, doc.f_name as Doc_name, doc.l_name as Doc_Lastname, 
br.location, br.address,
date_s,time_s, 
case 
when is_confirm = true then 'Confirmado'
else 'Sin Confirmar' end
as 'confirmado?' 
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

CREATE OR REPLACE VIEW vw_amount_per_sex AS (
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

CREATE OR REPLACE VIEW vw_medical_history AS (
Select 
f_name, l_name , speciality , md_history
from medical_history h
inner join partner p
on p.id = h.partner_id

inner join medical_speciality ms
on ms.id = h.speciality_id
);


CREATE OR REPLACE VIEW vw_rel_speciality_doc AS (
Select 
concat(f_name,' ', l_name) as doc_name , speciality

from relation_speciality_doc sp

inner join doctor d
on d.id = sp.doctor_id

inner join medical_speciality ms
on sp.speciality_id = ms.id
);

CREATE OR REPLACE VIEW vw_rel_speciality_branch AS (
Select 
speciality, b.name, b.location, b.address, b.phone

from relation_speciality_branch sb

inner join branch b
on b.id = sb.branch_id

inner join medical_speciality ms
on sb.speciality_id = ms.id
);
