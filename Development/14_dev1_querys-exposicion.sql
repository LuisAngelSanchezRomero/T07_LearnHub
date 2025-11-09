SET SERVEROUTPUT ON;

DECLARE
   v_name VARCHAR2(200);  
   v_email VARCHAR2(150); 
   v_date TIMESTAMP;      
BEGIN
   sp_get_student_details(
       p_student_code => 'STU015',      
       o_student_name => v_name,        
       o_email        => v_email,       
       o_registration_date => v_date    
   );
   
   DBMS_OUTPUT.PUT_LINE('Mostrando perfil de: ' || v_name);
   DBMS_OUTPUT.PUT_LINE('Email de contacto: ' || v_email);
  
END;
/

BEGIN

   sp_register_student(
       p_student_code    => 'STU015',           
       p_document_type   => 'P',                
       p_document_number => '15151588',         
       p_name            => 'Maria',         
       p_last_name       => 'Rodriguez',       
       p_phone_number    => '911667799',        
       p_email           => 'maria@mail.com',
       p_password        => 'pwd015'            
   );
END;
/

BEGIN

   sp_update_student_phone(
       p_student_code => 'STU015',      
       p_new_phone    => '911667755'    
   );
END;
/


SET SERVEROUTPUT ON;

DECLARE
   v_cursor SYS_REFCURSOR;
   v_course_code VARCHAR2(10);   
   v_title VARCHAR2(200);        
   v_instructor VARCHAR2(150);   
BEGIN
   sp_get_courses_by_category(
       p_category => 'Tecnología',  
       o_cursor   => v_cursor 
   );
   
   LOOP
       FETCH v_cursor INTO v_course_code, v_title, v_instructor;
       EXIT WHEN v_cursor%NOTFOUND;
       DBMS_OUTPUT.PUT_LINE('Curso: ' || v_title || ' (Instructor: ' || v_instructor || ')');
   END LOOP;
   
   CLOSE v_cursor;
END;
/