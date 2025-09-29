-- Tablas de Lucas1 (Dev1)

CREATE TABLE student (
    student_code        VARCHAR2(20) PRIMARY KEY,
    document_type       CHAR(1) NOT NULL,
    document_number     VARCHAR2(20) NOT NULL,
    name                VARCHAR2(100) NOT NULL,
    last_name           VARCHAR2(100) NOT NULL,
    phone_number        CHAR(9),
    email               VARCHAR2(150),
    password            VARCHAR2(250) NOT NULL,
    registration_date   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE course (
    course_code     VARCHAR2(10) PRIMARY KEY,
    title           VARCHAR2(200) NOT NULL,
    description     CLOB,
    category        VARCHAR2(100) NOT NULL,
    instructor      VARCHAR2(150) NOT NULL,
    creation_date   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
