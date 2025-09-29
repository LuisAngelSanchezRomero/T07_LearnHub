-- DIAGRAMA DE ARQUITECTURA DE SEGURIDAD:
-- 1. ROLES: ROL_DEV (Define permisos comunes)
-- 2. USUARIOS: Lucas1, Karla2, Luis3 (Asignados a ROL_DEV)

-- 1. Creación del ROL de Desarrollador
CREATE ROLE ROL_DEV;

-- 2. Asignación de permisos al ROL_DEV
GRANT CONNECT, RESOURCE, CREATE SESSION, CREATE TABLE, CREATE SEQUENCE, CREATE VIEW TO ROL_DEV;

-- 3. Creación de los TRES usuarios del proyecto
CREATE USER Lucas1 IDENTIFIED BY "Dev1#Contra2025";
CREATE USER Karla2 IDENTIFIED BY "Dev2#Contra2025";
CREATE USER Luis3 IDENTIFIED BY "Dev3#Contra2025";

-- 3.1 Asignar cuota en el tablespace USERS (necesario para insertar datos)
ALTER USER Lucas1 QUOTA UNLIMITED ON USERS;
ALTER USER Karla2 QUOTA UNLIMITED ON USERS;
ALTER USER Luis3 QUOTA UNLIMITED ON USERS;

-- 4. Asignación del ROL_DEV a los usuarios
GRANT ROL_DEV TO Lucas1;
GRANT ROL_DEV TO Karla2;
GRANT ROL_DEV TO Luis3;

-- 5. Permisos extras (para crear sinónimos a las tablas compartidas)
GRANT CREATE SYNONYM TO Lucas1;
GRANT CREATE SYNONYM TO Karla2;
GRANT CREATE SYNONYM TO Luis3;
