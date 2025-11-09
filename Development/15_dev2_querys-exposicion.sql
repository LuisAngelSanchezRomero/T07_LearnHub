-- CASO 01: LISTAR TEMARIO DEL CURSO:
SET SERVEROUTPUT ON;

DECLARE
    v_cursor  SYS_REFCURSOR;
    v_module_id   NUMBER;
    v_title       VARCHAR2(200);
    v_seq         NUMBER;
BEGIN
    -- Se le pide a la BD la lista de módulos del curso C001
    Karla2.sp_get_modules_by_course(
        p_course_code => 'C001',
        o_cursor      => v_cursor
    );

    -- La aplicación recorre la lista para mostrar cada módulo
    DBMS_OUTPUT.PUT_LINE('Temario del Curso: Base de Datos');
    LOOP
        FETCH v_cursor INTO v_module_id, v_title, v_seq;
        EXIT WHEN v_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_seq || '. ' || v_title);
    END LOOP;
    CLOSE v_cursor;
END;
/

-- CASO 02 Y 03: Inscribir un Curso
-- Intento 1: Inscripción exitosa
BEGIN
    Karla2.sp_enroll_student_safe(
        p_student_code => 'STU007',
        p_course_code  => 'C002'
    );
     DBMS_OUTPUT.PUT_LINE('¡Inscripción exitosa para STU007 en C002!');
END;
/

-- Intento 2: Si el usuario vuelve a hacer clic, la BD lo rechaza
BEGIN
    Karla2.sp_enroll_student_safe(
        p_student_code => 'STU007',
        p_course_code  => 'C002'
    );
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: El estudiante ya está inscrito en este curso.');
END;
/

-- Caso 04: Estadisticas de Inscripcion:
SET SERVEROUTPUT ON;

DECLARE
    v_cursor  SYS_REFCURSOR;
    v_course_title   VARCHAR2(200);
    v_student_count  NUMBER;
BEGIN
    -- Se le pide a la BD las estadísticas de inscripción
    Karla2.sp_get_enrollment_stats(o_cursor => v_cursor);

    -- La aplicación recorre los resultados para mostrarlos en una tabla
    DBMS_OUTPUT.PUT_LINE('--- Reporte de Popularidad de Cursos ---');
    LOOP
        FETCH v_cursor INTO v_course_title, v_student_count;
        EXIT WHEN v_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('"' || v_course_title || '": ' || v_student_count || ' estudiantes');
    END LOOP;
    CLOSE v_cursor;
END;
/