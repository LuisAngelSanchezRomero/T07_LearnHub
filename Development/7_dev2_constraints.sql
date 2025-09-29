-- Constraints de Karla2

-- Relación module (Karla2) → course (Lucas1)

ALTER TABLE Karla2.module
ADD CONSTRAINT fk_module_course FOREIGN KEY (course_code)
REFERENCES Lucas1.course(course_code);

-- Relación student_progress (Luis3) → enrollment (Karla2)

ALTER TABLE Luis3.student_progress
ADD CONSTRAINT fk_progress_enrollment FOREIGN KEY (enrollment_id)
REFERENCES Karla2.enrollment(enrollment_id);

-- Relación student_progress (Luis3) → module (Karla2)

ALTER TABLE Luis3.student_progress
ADD CONSTRAINT fk_progress_module FOREIGN KEY (module_id)
REFERENCES Karla2.module(module_id);
