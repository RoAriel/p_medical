# MIS_MEDICAL
Proyecto final para el curso de [CODERHOUSE - SQL](https://www.coderhouse.com/online/sql)
## Descripción del Proyecto
Este proyecto representa el sistema de asignación de turnos en una agenda médica de una prepaga, donde se podra  crear, ver turnos y datos de las sucursales en las cuales se podran gacer atender los socios de esta prepaga.


## DER (Diagrama entidad-relación)
![DER de MIS_MEDICAL]()
## Tablas
Las tablas que componen este modo son las siguientes:

|        Tabla                |          Descripción                      
|-----------------------------|-------------------------------------------|
|`Partner`                    |Socios (afiliados) de la prepaga           |
|`Doctor`                     |Doctores de la prepaga                     |
|`Branch`                     |Sucursales                                 |
|`Shift`                      |Turnos médicos                             |
|`Plan`                       |Planes que ofrece la prepaga               |
|`Medical_history`            |Historial médico del socio                 |
|`Medical_speciality`         |Especialidades médicas de la prepaga       |
|`Relation_speciality_doc`    |Relaciona al doctor con una especialidad   |
|`Relation_speciality_branch` |Relacion de sucursales con especialidades  |
|`Partner_audit_logs`         |Tabla para auditar la informacion de socios|
|`Shift_audit_logs`           |Tabla para auditar la informacion de turnos|

### `Partner`    
|Campo | Detalle | Tipo
 |---|--|--
| id | Identificador unico dentro del sistema |numerico
| dni |Documento de inedntidad del socio|numerico
| f_name| Primer nombre| texto
| l_name | Apellido |texto
| date_of_birth | Fecha de Nacimiento |fecha
| age |edad | numerico
| sex |Sexo |Enumerado (solo se pude tener valores previamente definidos)
| plan_id | Identificador del plan que tiene| numerico
| address |Direccion | texto
| phone |Telefono de contacto|texto
| email |E-mail de contacto|texto

### `Doctor`     
|Campo | Detalle | Tipo
 |---|--|--
| id | Identificador unico dentro del sistema |numerico
| dni |Documento de inedntidad del socio|numerico
| matricula | Numro de matricula de doctor | texto
| f_name| Primer nombre| texto
| l_name | Apellido |texto
| date_of_birth | Fecha de Nacimiento |fecha
| age |edad | numerico
| sex |Sexo |Enumerado (solo se pude tener valores previamente definiodos)
| phone |Telefono de contacto|texto
| email |E-mail de contacto|texto   

### `Branch`   
|Campo | Detalle | Tipo
 |---|--|--
| id | Identificador unico dentro del sistema |numerico
|name | Nombre de la sucursal| texto
|location | Localidad | texto
| address |Direccion | texto
| phone |Telefono de contacto|texto

### `Shift` 
|Campo | Detalle | Tipo
 |---|--|--
| id | Identificador unico dentro del sistema |numerico
|partner_id | Identificador unico del socio | numerico
|speciality_rel_id | Identificador unico de la relacion especialidad medico | numerico
|relation_speciality_branch_id | Identificador unico de la relacion especialidad sucursal | numerico
|date_s | Fecha del turno  | Fecha
|time_s | Hora del turno | Horario
|is_confirm | Marca si el turno esta confirmado | Verdadero o Falso

### `Plan`      
|Campo | Detalle | Tipo
 |---|--|--
| id | Identificador unico dentro del sistema |numerico
|name | Nombre del plan| Enumerado (solo se pude tener valores previamente definiodos)
|description |  Descripcion del plan | texto

### `Medical_history`        
|Campo | Detalle | Tipo
 |---|--|--  
| id | Identificador unico dentro del sistema |numerico
|partner_id | Identificador unico del socio | numerico
| speciality_id | Id de la especialidad | numerico
| md_history | Historial | texto
 
### `Medical_speciality`
|Campo | Detalle | Tipo
 |---|--|--
| id | Identificador unico dentro del sistema |numerico
, speciality VARCHAR(30) NOT NULL 

### `Relation_speciality_doc`  
|Campo | Detalle | Tipo
 |---|--|-- 
| id | Identificador unico dentro del sistema |numerico
| speciality_id | Id de la especialidad | numerico
| doctor_id| Identificador unico del doctor | numerico

### `Relation_speciality_branch`
|Campo | Detalle | Tipo
 |---|--|--
| id | Identificador unico dentro del sistema |numerico
| speciality_id | Identificador unico de la especialidad | numerico
| branch_id | Identificador unico de la sucursal| numerico

### `Partner_audit_logs`  
|Campo | Detalle | Tipo
 |---|--|--
| id_log | Identificador unico dentro del sistema |numerico
| id_user | Identificador unico del usuario dentro del sistema |numerico
| changes | Descripcion del cambio | texto
| date_UPD_INS_DEL| Fecha del cambio |Fecha
| acction_UPD_INS_DEL| Tipo del cambio |texto

### `Shift_audit_logs`    
|Campo | Detalle | Tipo
 |---|--|--
| id_log | Identificador unico dentro del sistema |numerico
| id_shift| Identificador unico del turno dentro del sistema |numerico
| changes | Descripcion del cambio | texto
| user_mod | Identificador unico del usuario dentro del sistema |numerico
| date_UPD_INS_DEL| Fecha del cambio |Fecha
| acction_UPD_INS_DEL| Tipo del cambio |texto

## VISTAS
Las vistas son objetos dentro de nuesta base de datos que nos brindan informacion de manera mas especifica de las tablas ya que son construidas para resolver necesidades especificas y a su vez nos permiten visualizar la informacion de una manera mas clara.

- vw_list_of_partner_per_doctor: Lista socios por doctor.
- vw_medical_history: Historial médico de cada socio.
- vw_number_of_shifts_per_specialty: Cantidad de turnos por especialidad.
- vw_rel_speciality_branch: Especialidades por sucursal.
- vw_rel_speciality_doc: Especialidades por doctor.
- vw_shift_detail: Detalles de turnos.

# Instalacion y puesta en marcha

Para poder utilizar el modelo favor de seguir los pasos detallados [installation guide][guia].

[guia]: https://github.com/RoAriel/p_medical/blob/main/installation_guide.md