-- Relaciones desde Luis3 hacia Karla2

ALTER TABLE student_progress
ADD CONSTRAINT fk_progress_enrollment FOREIGN KEY (enrollment_id)
REFERENCES Karla2.enrollment(enrollment_id);

ALTER TABLE student_progress
ADD CONSTRAINT fk_progress_module FOREIGN KEY (module_id)
REFERENCES Karla2.module(module_id);