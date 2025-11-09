-- 1. Ver Progreso Detallado de Lecciones
-- Mostrar checklist de módulos completados o pendientes al ingresar a un curso.

SET SERVEROUTPUT ON;

DECLARE
    v_cursor        SYS_REFCURSOR;
    v_module_title  VARCHAR2(200);
    v_completed     CHAR(1);
    v_comp_date     DATE;
BEGIN
    Luis3.sp_get_progress_by_enrollment(
        p_enrollment_id => 1,
        o_cursor        => v_cursor
    );

    DBMS_OUTPUT.PUT_LINE('--- Progreso en Base de Datos ---');
    LOOP
        FETCH v_cursor INTO v_module_title, v_completed, v_comp_date;
        EXIT WHEN v_cursor%NOTFOUND;
        IF v_completed = 'Y' THEN
            DBMS_OUTPUT.PUT_LINE('[COMPLETADO] ' || v_module_title);
        ELSE
            DBMS_OUTPUT.PUT_LINE('[PENDIENTE]  ' || v_module_title);
        END IF;
    END LOOP;
    CLOSE v_cursor;
END;
/

-- Consulta para verificar
SELECT 
    s.student_code,
    s.name || ' ' || s.last_name AS student_name,
    c.course_code,
    c.title AS course_title,
    m.module_id,
    m.title AS module_title,
    sp.completed,
    sp.completion_date
FROM 
    Luis3.student_progress sp
JOIN 
    Karla2.enrollment e ON sp.enrollment_id = e.enrollment_id
JOIN 
    Lucas1.student s ON e.student_code = s.student_code
JOIN 
    Lucas1.course c ON e.course_code = c.course_code
JOIN 
    Karla2.module m ON sp.module_id = m.module_id
WHERE 
    sp.enrollment_id = 3
ORDER BY 
    m.module_id;



-- 2. Ver Lecciones Completadas
-- Mostrar los módulos completados de un estudiante (solo consulta)

SELECT 
    m.module_id,
    m.title AS module_title,
    CASE sp.completed
        WHEN 'Y' THEN 'Completado'
        ELSE 'Pendiente'
    END AS status
FROM Luis3.student_progress sp
JOIN Karla2.module m ON sp.module_id = m.module_id
JOIN Karla2.enrollment e ON sp.enrollment_id = e.enrollment_id
WHERE e.student_code = 'STU001'
ORDER BY m.module_id;



-- 3. Desmarcar Lección (Reiniciar)
-- Opción para que el estudiante vuelva a marcar una lección como no completada, borrando la fecha.

-- Desmarcar módulo
BEGIN
    Luis3.sp_uncomplete_module(
        p_enrollment_id => 1,
        p_module_id     => 2
    );
END;
/

-- Consulta para verificar que el módulo fue desmarcado
SELECT module_id, completed, completion_date 
FROM Luis3.student_progress 
WHERE enrollment_id = 1 AND module_id = 2;


-- 4. Ver Resumen General del Curso
-- Mostrar un resumen o barra de progreso mis Cursos

SET SERVEROUTPUT ON;

DECLARE
    v_resumen VARCHAR2(200);
BEGIN
    Luis3.sp_get_student_course_summary(
        p_student_code => 'STU001',
        p_course_code  => 'C001',
        o_summary      => v_resumen
    );

    DBMS_OUTPUT.PUT_LINE('Resumen del Curso "Base de Datos":');
    DBMS_OUTPUT.PUT_LINE(v_resumen);
END;
/

-- Consulta para verificar manualmente el resumen

SELECT 
    COUNT(*) AS total_modules,
    SUM(CASE WHEN sp.completed = 'Y' THEN 1 ELSE 0 END) AS completed_modules
FROM 
    Luis3.student_progress sp
JOIN 
    Karla2.enrollment e ON sp.enrollment_id = e.enrollment_id
WHERE 
    e.student_code = 'STU001'
    AND e.course_code = 'C001';
