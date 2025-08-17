/* 
====================================================
Proyecto           : LEARNHUB
Desarrolladores    : Team 07: Karla Magallanes, Luis Sanchez y Lucas Leyva
Fecha              : Aug 18, 2025
Fase 03            : Definicion de Relaciones
====================================================
*/

-- ===========================
--  RELACIONES ENTRE TABLAS:

-- Este script agrega únicamente las claves foráneas (FOREIGN KEY) que conectan las tablas.
-- Debe ejecutarse después de 02_gestion_tablas.sql
-- ===========================

-- ===========================
-- RELACIÓN: enrollment → student
-- ===========================

ALTER TABLE enrollment
ADD CONSTRAINT fk_enrollment_student 
FOREIGN KEY (student_code)
REFERENCES student(student_code); 

-- ===========================
-- RELACIÓN: enrollment → course
-- ===========================

ALTER TABLE enrollment
ADD CONSTRAINT fk_enrollment_course  
FOREIGN KEY (course_code)
REFERENCES course(course_code);

-- ===============================
-- RELACIÓN: module → course
-- ===============================

ALTER TABLE module
ADD CONSTRAINT fk_module_course 
FOREIGN KEY (course_code)
REFERENCES course(course_code); 

-- ===========================
-- RELACIÓN: student_progress → enrollment
-- ===========================
ALTER TABLE student_progress
ADD CONSTRAINT fk_progress_enrollment 
FOREIGN KEY (enrollment_id)
REFERENCES enrollment(enrollment_id);

-- ===========================
-- RELACIÓN: student_progress → module
-- ===========================
ALTER TABLE student_progress
ADD CONSTRAINT fk_progress_module 
FOREIGN KEY (module_id)
REFERENCES module(module_id);