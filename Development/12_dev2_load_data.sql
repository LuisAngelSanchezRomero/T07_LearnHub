-- Inserts MODULE
INSERT INTO module (course_code, title, sequence_number) VALUES ('C001','Introducción a SQL',1);
INSERT INTO module (course_code, title, sequence_number) VALUES ('C001','Joins y Subconsultas',2);
INSERT INTO module (course_code, title, sequence_number) VALUES ('C002','POO en Java',1);
INSERT INTO module (course_code, title, sequence_number) VALUES ('C002','Colecciones en Java',2);
INSERT INTO module (course_code, title, sequence_number) VALUES ('C002','Streams y Lambdas',3);
INSERT INTO module (course_code, title, sequence_number) VALUES ('C003','Scrum y Kanban',1);
INSERT INTO module (course_code, title, sequence_number) VALUES ('C003','Planificación Ágil',2);
INSERT INTO module (course_code, title, sequence_number) VALUES ('C004','Introducción a Redes',1);
INSERT INTO module (course_code, title, sequence_number) VALUES ('C004','Subnetting',2);
INSERT INTO module (course_code, title, sequence_number) VALUES ('C005','Introducción a Python para Datos',1);

-- Inserts ENROLLMENT
INSERT INTO enrollment (student_code, course_code) VALUES ('STU001','C001');
INSERT INTO enrollment (student_code, course_code) VALUES ('STU002','C002');
INSERT INTO enrollment (student_code, course_code) VALUES ('STU003','C003');
INSERT INTO enrollment (student_code, course_code) VALUES ('STU004','C004');
INSERT INTO enrollment (student_code, course_code) VALUES ('STU005','C005');
INSERT INTO enrollment (student_code, course_code) VALUES ('STU006','C002');
INSERT INTO enrollment (student_code, course_code) VALUES ('STU007','C006');
INSERT INTO enrollment (student_code, course_code) VALUES ('STU008','C007');
INSERT INTO enrollment (student_code, course_code) VALUES ('STU009','C001');
INSERT INTO enrollment (student_code, course_code) VALUES ('STU010','C003');

COMMIT;
