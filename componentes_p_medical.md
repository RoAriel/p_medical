# SCHEMA
- P_MEDICAL:  Esquema que contiene el modelo de agenda médica.


# [TABLAS](https://github.com/RoAriel/p_medical/blob/main/create_tables.sql)
- branch: Tabla de Sucursales.


- doctor: Tabla de doctores.
- medical_history: Historial médico del socio.
- medical_speciality: Especialidades médicas.
- partner: Socios.
- partner_audit_logs: Logs de Auditoría
- plan: Planes.
- relation_speciality_branch: Relación Especialidades por Sucursales.
- relation_speciality_doc: Relacion Especialidades y sus doctores.
- shift: Turnos.
- shift_audit_logs: Logs de Auditoría.


# [VISTAS](https://github.com/RoAriel/p_medical/blob/main/create_views.sql)
- vw_amount_per_gender: Cantidad de socios por sexo.


- vw_eastern_zone_branches: Sucursales en Zona Oeste.
- vw_list_of_partner_per_doctor: Lista socios por doctor.
- vw_medical_history: Historial médico de cada socio.
- vw_northern_zone_branches: Sucursales en Zona Norte.
- vw_number_of_shifts_per_specialty: Cantidad de turnos por especialidad.
- vw_rel_speciality_branch: Especialidades por sucursal.
- vw_rel_speciality_doc: Especialidades por doctor.
- vw_shift_detail: Detalles de turnos.
- vw_south_zone_branches: Sucursales en Zona Sur.
- vw_west_zone_branches: Sucursales en Zona Este.


# [FUNCIONES](https://github.com/RoAriel/p_medical/blob/main/create_functions.sql)
- fn_getAge: Función para calcular edad de socios.


- fn_getCant_shift_confirm: Obtiene la cantidad de turnos confirmados.


# [PROCEDURE](https://github.com/RoAriel/p_medical/blob/main/create_stored_procedures.sql)
- sp_add_or_del_medSpeciality: Agregar o eliminar especialidad médica.


- sp_orderBy: Ordena una tabla según el campo y criterio elegido.


# [TRIGGERS](https://github.com/RoAriel/p_medical/blob/main/create_triggers.sql)
- TRG_partner_audit_logs_ins: Dispara logs de Insert en PARTNER.


- TRG_partner_audit_logs_upd: Dispara logs de UPDATE en PARTNER.
- TRG_shift_audit_logs_ins: Dispara logs de Insert en SHIFT.
- TRG_shift_audit_logs_upd: Dispara logs de UPDATE en SHIFT.
