-- ============================================
-- SCRIPT DE CREACIÓN DE SINÓNIMOS
-- Karla2
-- ============================================

CREATE SYNONYM student FOR Lucas1.student;
CREATE SYNONYM course FOR Lucas1.course;
CREATE SYNONYM module FOR Lucas1.module;
CREATE SYNONYM enrollment FOR Lucas1.enrollment;
CREATE SYNONYM student_progress FOR Lucas1.student_progress;

-- Los GRANT que dio Lucas1, Karla2 tiene permisos sobre esas tablas
-- los SYNONYM que he creado, puede consultar con nombres simples

SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM module;
SELECT * FROM enrollment;
SELECT * FROM student_progress;
