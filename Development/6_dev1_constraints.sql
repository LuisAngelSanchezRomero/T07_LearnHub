-- Constraints de Lucas1

-- Relación enrollment (Karla2) → student (Lucas1)

ALTER TABLE Karla2.enrollment
ADD CONSTRAINT fk_enrollment_student FOREIGN KEY (student_code)
REFERENCES Lucas1.student(student_code);

-- Relación enrollment (Karla2) → course (Lucas1)

ALTER TABLE Karla2.enrollment
ADD CONSTRAINT fk_enrollment_course FOREIGN KEY (course_code)
REFERENCES Lucas1.course(course_code);
