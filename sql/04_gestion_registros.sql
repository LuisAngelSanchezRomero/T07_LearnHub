/* 
====================================================
Proyecto           : LEARNHUB
Desarrolladores    : Team 07: Karla Magallanes, Luis Sanchez y Lucas Leyva
Fecha              : Aug 18, 2025
Fase 04            : Inserción de Registros y Validación (DML)
====================================================
*/

-- ===========================
--       Tabla: STUDENT
-- ===========================
INSERT INTO student (student_code, document_type, document_number, name, last_name, phone_number, email, password)
SELECT 'LHCT-00001','D','74859632','Karla','Magallanes','987654321','karla.magallanes@gmail.com','pwd123' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM student WHERE student_code='LHCT-00001');

INSERT INTO student (student_code, document_type, document_number, name, last_name, phone_number, email, password)
SELECT 'LHCT-00002','D','74859633','Luis','Sánchez','912345678','luis.sanchez@gmail.com','pwd123' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM student WHERE student_code='LHCT-00002');

INSERT INTO student (student_code, document_type, document_number, name, last_name, phone_number, email, password)
SELECT 'LHCT-00003','D','12345674','Lucas','Leyva','934567890','lucas.leyva@gmail.com','pwd123' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM student WHERE student_code='LHCT-00003');

INSERT INTO student (student_code, document_type, document_number, name, last_name, phone_number, email, password)
SELECT 'LHCT-00004','D','98746543','María','Fernández','956789012','maria.fernandez@gmail.com','pwd123' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM student WHERE student_code='LHCT-00004');
SELECT * FROM student;

-- ===========================
--       Tabla: COURSE
-- ===========================
INSERT INTO course (course_code, title, description, category, instructor)
SELECT 'SQLB-2025','SQL Básico','Fundamentos de SQL y consultas básicas','Tecnología','Ing. Roberto Gómez' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM course WHERE course_code='SQLB-2025');

INSERT INTO course (course_code, title, description, category, instructor)
SELECT 'JAVA-2025','Java Intermedio','Programación orientada a objetos con Java','Tecnología','Ing. Carmen López' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM course WHERE course_code='JAVA-2025');

INSERT INTO course (course_code, title, description, category, instructor)
SELECT 'PYTH-2025','Python Avanzado','Automatización y análisis de datos con Python','Tecnología','Ing. Alberto Díaz' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM course WHERE course_code='PYTH-2025');

INSERT INTO course (course_code, title, description, category, instructor)
SELECT 'WEBF-2025','Desarrollo Web Fullstack','Frontend y Backend con frameworks modernos','Tecnología','Ing. Daniela Ruiz' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM course WHERE course_code='WEBF-2025');

SELECT * FROM course;

-- ===========================
--       Tabla: MODULE
-- ===========================
INSERT INTO module (course_code, title, sequence_number)
SELECT 'SQLB-2025','Introducción a SQL',1 FROM dual
WHERE NOT EXISTS (SELECT 1 FROM module WHERE course_code='SQLB-2025' AND sequence_number=1);

INSERT INTO module (course_code, title, sequence_number)
SELECT 'JAVA-2025','POO en Java',1 FROM dual
WHERE NOT EXISTS (SELECT 1 FROM module WHERE course_code='JAVA-2025' AND sequence_number=1);

INSERT INTO module (course_code, title, sequence_number)
SELECT 'PYTH-2025','Manejo de librerías',1 FROM dual
WHERE NOT EXISTS (SELECT 1 FROM module WHERE course_code='PYTH-2025' AND sequence_number=1);

INSERT INTO module (course_code, title, sequence_number)
SELECT 'WEBF-2025','Fundamentos de HTML y CSS',1 FROM dual
WHERE NOT EXISTS (SELECT 1 FROM module WHERE course_code='WEBF-2025' AND sequence_number=1);

SELECT * FROM module;


-- ===========================
--       Tabla: ENROLLMENT
-- ===========================
INSERT INTO enrollment (student_code, course_code)
SELECT 'LHCT-00001','SQLB-2025' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM enrollment WHERE student_code='LHCT-00001' AND course_code='SQLB-2025');

INSERT INTO enrollment (student_code, course_code)
SELECT 'LHCT-00002','JAVA-2025' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM enrollment WHERE student_code='LHCT-00002' AND course_code='JAVA-2025');

INSERT INTO enrollment (student_code, course_code)
SELECT 'LHCT-00003','PYTH-2025' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM enrollment WHERE student_code='LHCT-00003' AND course_code='PYTH-2025');

INSERT INTO enrollment (student_code, course_code)
SELECT 'LHCT-00004','WEBF-2025' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM enrollment WHERE student_code='LHCT-00004' AND course_code='WEBF-2025');

SELECT * FROM enrollment;
-- ===========================
--       Tabla: STUDENT_PROGRESS
-- ===========================
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date)
SELECT 1, 1, 'Y', SYSTIMESTAMP FROM dual
WHERE NOT EXISTS (
    SELECT 1 
    FROM student_progress 
    WHERE enrollment_id = 1 AND module_id = 1
);

INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date)
SELECT 2,2,'N',NULL FROM dual
WHERE NOT EXISTS (SELECT 1 FROM student_progress WHERE enrollment_id=2 AND module_id=2);

INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date)
SELECT 3,3,'Y',SYSTIMESTAMP FROM dual
WHERE NOT EXISTS (SELECT 1 FROM student_progress WHERE enrollment_id=3 AND module_id=3);

INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date)
SELECT 4,4,'N',NULL FROM dual
WHERE NOT EXISTS (SELECT 1 FROM student_progress WHERE enrollment_id=4 AND module_id=4);

SELECT * FROM student_progress;

COMMIT;
