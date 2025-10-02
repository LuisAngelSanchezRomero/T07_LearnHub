-- Relaciones desde Karla2 hacia Lucas1
ALTER TABLE enrollment
ADD CONSTRAINT fk_enrollment_student FOREIGN KEY (student_code)
REFERENCES Lucas1.student(student_code);

ALTER TABLE enrollment
ADD CONSTRAINT fk_enrollment_course FOREIGN KEY (course_code)
REFERENCES Lucas1.course(course_code);

ALTER TABLE module
ADD CONSTRAINT fk_module_course FOREIGN KEY (course_code)
REFERENCES Lucas1.course(course_code);

-- Dar permisos a Luis3
GRANT SELECT, REFERENCES ON enrollment TO Luis3;
GRANT SELECT, REFERENCES ON module TO Luis3;
