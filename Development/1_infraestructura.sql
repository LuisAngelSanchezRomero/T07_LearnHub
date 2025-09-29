-- DIAGRAMA DE ARQUITECTURA DE SEGURIDAD:
-- 1. ROLES: ROL_DEV (Define permisos comunes)
-- 2. USUARIOS: Lucas1, Karla2, Luis3 (Asignados a ROL_DEV)

-- 1. Creación del ROL de Desarrollador
CREATE ROLE ROL_DEV;

-- 2. Asignación de permisos al ROL_DEV
GRANT CONNECT, RESOURCE, CREATE SESSION, CREATE TABLE, CREATE SEQUENCE, CREATE VIEW TO ROL_DEV;

-- 3. Creación de los TRES usuarios del proyecto
-- Lucas1 (Desarrollador 1)
CREATE USER Lucas1 IDENTIFIED BY Lucas1_password;

-- Karla2 (Desarrollador 2)
CREATE USER Karla2 IDENTIFIED BY Karla2_password;

-- Luis3 (Desarrollador 3 - Anteriormente Andre3)
CREATE USER Luis3 IDENTIFIED BY Luis3_password;

-- 4. Asignación del ROL_DEV a los usuarios
GRANT ROL_DEV TO Lucas1;
GRANT ROL_DEV TO Karla2;
GRANT ROL_DEV TO Luis3;

-- 5. Permisos extras (para crear sinónimos a las tablas compartidas)
GRANT CREATE SYNONYM TO Lucas1;
GRANT CREATE SYNONYM TO Karla2;
GRANT CREATE SYNONYM TO Luis3;
