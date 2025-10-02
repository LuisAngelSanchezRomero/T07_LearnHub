-- Para STU001 en curso C001 (enrollment_id = 1)
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (1, 1, 'Y', SYSDATE);
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (1, 2, 'N', NULL);

-- Para STU002 en curso C002 (enrollment_id = 2)
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (2, 3, 'Y', SYSDATE);
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (2, 4, 'N', NULL);
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (2, 5, 'N', NULL);

-- Para STU003 en curso C003 (enrollment_id = 3)
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (3, 6, 'Y', SYSDATE);
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (3, 7, 'N', NULL);

-- Para STU004 en curso C004 (enrollment_id = 4)
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (4, 8, 'N', NULL);
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (4, 9, 'Y', SYSDATE);

-- Para STU005 en curso C005 (enrollment_id = 5)
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (5, 10, 'Y', SYSDATE);

-- Para STU006 en curso C002 (enrollment_id = 6)
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (6, 3, 'Y', SYSDATE);
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (6, 4, 'N', NULL);
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (6, 5, 'N', NULL);

-- Para STU009 en curso C001 (enrollment_id = 9)
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (9, 1, 'Y', SYSDATE);
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (9, 2, 'N', NULL);

-- Para STU010 en curso C003 (enrollment_id = 10)
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (10, 6, 'Y', SYSDATE);
INSERT INTO student_progress (enrollment_id, module_id, completed, completion_date) 
VALUES (10, 7, 'N', NULL);

COMMIT;
