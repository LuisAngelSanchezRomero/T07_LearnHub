-- ============================================
-- SCRIPT DE CREACIÓN DE RELACIONES
-- Lucas1
-- ============================================

ALTER TABLE enrollment
ADD CONSTRAINT fk_enrollment_student FOREIGN KEY (student_code)
REFERENCES student(student_code);

ALTER TABLE enrollment
ADD CONSTRAINT fk_enrollment_course FOREIGN KEY (course_code)
REFERENCES course(course_code);

ALTER TABLE module
ADD CONSTRAINT fk_module_course FOREIGN KEY (course_code)
REFERENCES course(course_code);

ALTER TABLE student_progress
ADD CONSTRAINT fk_progress_enrollment FOREIGN KEY (enrollment_id)
REFERENCES enrollment(enrollment_id);

ALTER TABLE student_progress
ADD CONSTRAINT fk_progress_module FOREIGN KEY (module_id)
REFERENCES module(module_id);
