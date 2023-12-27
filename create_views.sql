create  or replace view shift_detail as (
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
)