-- ============================================
-- SCRIPT DE CREACIÓN DE ESQUEMA Y USUARIOS
-- Lo ejecute con: SYS SYSDBA
-- ============================================

-- 1. Creación de TABLESPACE
CREATE TABLESPACE TBS_PROYECTO
DATAFILE 'tbs_proyecto01.dbf'
SIZE 50M
AUTOEXTEND ON NEXT 10M
MAXSIZE UNLIMITED;

-- 2. Creación de usuarios del proyecto
CREATE USER Lucas1 IDENTIFIED BY Lucas1_password
DEFAULT TABLESPACE TBS_PROYECTO
QUOTA UNLIMITED ON TBS_PROYECTO;

CREATE USER Karla2 IDENTIFIED BY Karla2_password
DEFAULT TABLESPACE TBS_PROYECTO
QUOTA UNLIMITED ON TBS_PROYECTO;

-- 3. Asignación de permisos de sistema
GRANT CONNECT, RESOURCE, CREATE SESSION, CREATE TABLE, CREATE SEQUENCE, CREATE VIEW TO Lucas1;
GRANT CONNECT, RESOURCE, CREATE SESSION, CREATE TABLE, CREATE SEQUENCE, CREATE VIEW TO Karla2;

-- 4. Permiso extra para que Karla2 pueda crear sinónimos
GRANT CREATE SYNONYM TO Karla2;

-- 5. Consultando las tablas de todos los esquemas

SELECT * FROM Lucas1.student;
SELECT * FROM Karla2.student;
