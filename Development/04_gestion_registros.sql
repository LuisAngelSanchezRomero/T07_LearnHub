-- ============================================
-- SCRIPT DE INSERCIÓN DE REGISTROS DE PRUEBA
-- Lucas1
-- ============================================

-- Inserts STUDENT
INSERT INTO student (student_code, document_type, document_number, name, last_name, phone_number, email, password)
VALUES ('STU001', 'D', '12345678', 'Luis', 'Pérez', '987654321', 'luis@mail.com', 'pwd123');

INSERT INTO student (student_code, document_type, document_number, name, last_name, email, password)
VALUES ('STU002', 'C', '87654321', 'Ana', 'Ramírez', 'ana@mail.com', 'pwd456');

INSERT INTO student (student_code, document_type, document_number, name, last_name, email, password)
VALUES ('STU003', 'P', '45678912', 'Carlos', 'Gómez', 'carlos@mail.com', 'pwd789');

-- Inserts COURSE
INSERT INTO course (course_code, title, description, category, instructor)
VALUES ('C001', 'Base de Datos', 'Curso de SQL y modelado', 'Tecnología', 'Dr. Ruiz');

INSERT INTO course (course_code, title, description, category, instructor)
VALUES ('C002', 'Programación Java', 'POO y patrones de diseño', 'Tecnología', 'Ing. Lara');

INSERT INTO course (course_code, title, description, category, instructor)
VALUES ('C003', 'Gestión de Proyectos', 'Metodologías ágiles', 'Administración', 'Lic. Soto');

-- Inserts MODULE
INSERT INTO module (course_code, title, sequence_number) VALUES ('C001', 'Introducción a SQL', 1);
INSERT INTO module (course_code, title, sequence_number) VALUES ('C001', 'Joins y Subconsultas', 2);
INSERT INTO module (course_code, title, sequence_number) VALUES ('C002', 'POO en Java', 1);

-- Inserts ENROLLMENT
INSERT INTO enrollment (student_code, course_code) VALUES ('STU001', 'C001');
INSERT INTO enrollment (student_code, course_code) VALUES ('STU002', 'C002');
INSERT INTO enrollment (student_code, course_code) VALUES ('STU003', 'C003');

-- Inserts STUDENT_PROGRESS
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) VALUES (1, 1, 'Y', SYSDATE);
INSERT INTO student_progress (enrollment_id, module_id, completed) VALUES (1, 2, 'N');
INSERT INTO student_progress (enrollment_id, module_id, completed) VALUES (2, 3, 'N');

COMMIT;

-- Ejecutar con: Lucas1
GRANT ALL ON student TO Karla2;
GRANT ALL ON course TO Karla2;
GRANT ALL ON module TO Karla2;
GRANT ALL ON enrollment TO Karla2;
GRANT ALL ON student_progress TO Karla2;

-- 5. Consultando las tablas

SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM module;
SELECT * FROM enrollment;
SELECT * FROM student_progress;
