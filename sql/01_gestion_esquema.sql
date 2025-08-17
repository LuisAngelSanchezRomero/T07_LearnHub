/* 
====================================================
Proyecto           : LEARNHUB
Desarrolladores    : Team 07: Karla Magallanes, Luis Sanchez y Lucas Leyva
Fecha              : Aug 18, 2025
Fase 01            : Configuracion de Entorno y Seguridad
====================================================
*/

/* 1. Tablespace para LEARNHUB */
CREATE TABLESPACE TBSLEARNHUB
DATAFILE 'tbslearnhub01.dbf' SIZE 100M
AUTOEXTEND ON NEXT 50M
MAXSIZE UNLIMITED
EXTENT MANAGEMENT LOCAL
SEGMENT SPACE MANAGEMENT AUTO;



/* 2. Activar los permisos para ejecutar script */
ALTER SESSION SET "_oracle_script" = TRUE;

/* 3. Crear usuarios para LEARNHUB */

/* Crear usuario KARLA_MAGALLANES */
CREATE USER KARLA_MAGALLANES -- Usuario
IDENTIFIED BY ORCL1234       -- Contraseña
DEFAULT TABLESPACE TBSLEARNHUB
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON TBSLEARNHUB;

/* Permisos para KARLA_MAGALLANES */
GRANT CREATE SESSION TO KARLA_MAGALLANES;
GRANT CREATE TABLE TO KARLA_MAGALLANES;
GRANT CREATE VIEW TO KARLA_MAGALLANES;
GRANT CREATE PROCEDURE TO KARLA_MAGALLANES;
GRANT CREATE TRIGGER TO KARLA_MAGALLANES;
GRANT CREATE SEQUENCE TO KARLA_MAGALLANES;
GRANT CREATE JOB TO KARLA_MAGALLANES;
GRANT UNLIMITED TABLESPACE TO KARLA_MAGALLANES;

/* Crear usuario LUIS_SANCHEZ */
CREATE USER LUIS_SANCHEZ -- Usuario
IDENTIFIED BY ORCL1234   -- Contraseña
DEFAULT TABLESPACE TBSLEARNHUB
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON TBSLEARNHUB;

/* Permisos para LUIS_SANCHEZ */
GRANT CREATE SESSION TO LUIS_SANCHEZ;
GRANT CREATE TABLE TO LUIS_SANCHEZ;
GRANT CREATE VIEW TO LUIS_SANCHEZ;
GRANT CREATE PROCEDURE TO LUIS_SANCHEZ;
GRANT CREATE TRIGGER TO LUIS_SANCHEZ;
GRANT CREATE SEQUENCE TO LUIS_SANCHEZ;
GRANT CREATE JOB TO LUIS_SANCHEZ;
GRANT UNLIMITED TABLESPACE TO LUIS_SANCHEZ;

/* Crear usuario LUCAS_LEYVA */
CREATE USER LUCAS_LEYVA -- Usuario
IDENTIFIED BY ORCL1234  -- Contraseña
DEFAULT TABLESPACE TBSLEARNHUB
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON TBSLEARNHUB;

/* Permisos para LUCAS_LEYVA */
GRANT CREATE SESSION TO LUCAS_LEYVA;
GRANT CREATE TABLE TO LUCAS_LEYVA;
GRANT CREATE VIEW TO LUCAS_LEYVA;
GRANT CREATE PROCEDURE TO LUCAS_LEYVA;
GRANT CREATE TRIGGER TO LUCAS_LEYVA;
GRANT CREATE SEQUENCE TO LUCAS_LEYVA;
GRANT CREATE JOB TO LUCAS_LEYVA;
GRANT UNLIMITED TABLESPACE TO LUCAS_LEYVA;

/* 
====================================================
Permisos Otorgados a los Usuarios de LEARNHUB:
✓ GRANT CREATE SESSION: Permite que el usuario se conecte a la base de datos.
✓ GRANT CREATE TABLE: Permite que el usuario cree tablas en la base de datos.
✓ GRANT CREATE VIEW: Permite que el usuario cree vistas en la base de datos.
✓ GRANT CREATE PROCEDURE: Permite que el usuario cree procedimientos almacenados en la base de datos.
✓ GRANT CREATE TRIGGER: Permite que el usuario cree disparadores en la base de datos.
✓ GRANT CREATE SEQUENCE: Permite que el usuario cree secuencias en la base de datos.
✓ GRANT CREATE JOB: Permite que el usuario cree trabajos programados en la base de datos.
✓ GRANT UNLIMITED TABLESPACE: Permite que el usuario utilice espacio de tabla ilimitado en la base de datos.

====================================================
*/


/* 4. Listar usuarios de la base de datos */
SELECT * FROM DBA_USERS;

