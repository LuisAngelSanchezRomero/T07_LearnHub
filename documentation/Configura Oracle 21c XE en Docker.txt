-- Primero, Creamos el contenedor de docker para oracle:

docker run -d --name learnhub -p 1521:1521 -p 5500:5500 -e ORACLE_PASSWORD=admin123 gvenzl/oracle-xe:21

---------------------------------------------------------

Abro o ejecuto el sqldeveloper oracle y me conecto (37_LuisSánchez)

-- Yo, al ser el administrador, uso SYS DBA. El rol SYSDBA solo lo uso yo como SYS para administrar la base.

Detalles de la conexión

name: learnhub

Autenticación

Usuario: SYS				Rol: DBA
Contraseña: admin123

Conexión

Nombre del Host: localhost
Puerto: 1521
Nombre del Servicio FREEPDB1

Me voy a conectar y voy a ejecutar el script para la creación de usuarios tablespace. Ahora ellos pueden conectarse.

EJECUTA EL CÓDIGO:

01_gestion_esquema.sql


---------------------------------------------------------

Se conecta con los usuarios y contraseñas que he creado. (22_LucasLeyva)

Detalles de la conexión

name: learnhublucas

Autenticación

Usuario: Lucas1			Rol: Valor por defecto
Contraseña: Lucas1_password

Conexión

Nombre del Host: localhost
Puerto: 1521
Nombre del Servicio FREEPDB1

Se va a conectar y ejecutara el código para crear las relaciones y insertar los registros.

EJECUTA EL CÓDIGO:

02_gestion_tablas.sql

03_gestion_relaciones.sql

04_gestion_registros.sql

---------------------------------------------------------

Va a conectarse con sqldeveloper con los usuarios y contraseñas que eh creado (24_KarlaMagallanes)

Detalles de la conexión

name: learnhubkarla

Autenticación

Usuario: Karla2			Rol: Valor por defecto
Contraseña: Karla2_password

Conexión

Nombre del Host: localhost
Puerto: 1521
Nombre del Servicio FREEPDB1

EJECUTA EL CÓDIGO:

06_gestion_sinonimos.sql

---------------------------------------------------------