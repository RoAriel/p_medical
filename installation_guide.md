# Installation Guide
Todos los scripts.sql necesarios para crear el modelo son los que se encuentra dentro de la carpeta `p_medical\object_model\` y son enumerados a continuacion.

1. Ejecutar dentro de MySql el script [`01_create_tables.sql`][1] para generar el Schema y las tablas del modelo.
2. Ejecutar [`02_create_views.sql`][2] para generar las vistas.
3. Creamos las funciones ejecutando el [`03_create_functions.sql`][3].
4. Los procedimientos seran creados al ejecutar el [`04_create_stored_procedures.sql`][4].
5. Para crear los Triggers ejecutar el [`05_create_triggers.sql`][5].
6. Creamos los usuarios y generamos sus permisos ejecutando el script [`06_create_users.sql`][6].
7. Finalmente cargamos nuestras tablas con los datos ejecutnado el script [`07_populate_tables.sql`][7].

[1]: https://github.com/RoAriel/p_medical/blob/main/object_model/01_create_tables.sql
[2]: https://github.com/RoAriel/p_medical/blob/main/object_model/02_create_views.sql
[3]: https://github.com/RoAriel/p_medical/blob/main/object_model/03_create_functions.sql
[4]: https://github.com/RoAriel/p_medical/blob/main/object_model/04_create_stored_procedures.sql
[5]: https://github.com/RoAriel/p_medical/blob/main/object_model/05_create_triggers.sql
[6]: https://github.com/RoAriel/p_medical/blob/main/object_model/06_create_users.sql
[7]: https://github.com/RoAriel/p_medical/blob/main/object_model/07_populate_tables.sql
