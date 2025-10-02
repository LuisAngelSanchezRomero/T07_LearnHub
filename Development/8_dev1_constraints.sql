-- Constraints de Lucas1

-- Lucas1 otorga permisos a Karla2 y Luis3 para usar sus tablas en FKs

GRANT SELECT, REFERENCES ON student TO Karla2;
GRANT SELECT, REFERENCES ON course TO Karla2;

GRANT SELECT, REFERENCES ON student TO Luis3;
GRANT SELECT, REFERENCES ON course TO Luis3;
