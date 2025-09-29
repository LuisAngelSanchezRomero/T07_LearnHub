# LearnHub - Plataforma de Cursos Online 
## TEAM07 | Lucas | Karla | Luis

## Descripción del Proyecto

LearnHub es una plataforma de educación en línea que se especializa en ofrecer cursos en las áreas de tecnología y sostenibilidad. Para gestionar sus operaciones, necesitan una base de datos robusta y bien estructurada que les permita administrar eficientemente a los estudiantes, los cursos que ofrecen, las inscripciones a estos cursos y el seguimiento del progreso de cada estudiante.

El proyecto se enfoca en crear una solución de base de datos utilizando Oracle XE 21c en Docker. Esta elección de tecnología responde a la necesidad de una solución que sea portátil y fácil de automatizar, ideal para su entorno de servidor local con recursos limitados.

## Problemas a Resolver

Actualmente, LearnHub enfrenta varios desafíos con la gestión de sus datos:

* **Datos duplicados:** Existe un problema recurrente con estudiantes que se registran varias veces, lo que genera inconsistencia y redundancia en la información.
* **Dificultad en el seguimiento:** Es complicado para la plataforma rastrear de manera precisa el progreso de los estudiantes dentro de los cursos que están tomando.
* **Análisis limitado:** La estructura de datos actual no facilita la generación de reportes cruciales, como el porcentaje de finalización de cursos, lo que impide un análisis efectivo del rendimiento de los estudiantes y la popularidad de los cursos.

## Requisitos Operativos del Sistema

La nueva base de datos debe ser capaz de cumplir con los siguientes requisitos operativos para garantizar una gestión eficiente y precisa:

* **Registro de estudiantes:** Permitir el registro de nuevos estudiantes, capturando su información personal y credenciales de acceso.
* **Gestión de cursos:** Facilitar la administración de cursos, incluyendo detalles como el título, una descripción, el instructor a cargo y la categoría a la que pertenece el curso.
* **Inscripciones:** Registrar las inscripciones de los estudiantes a cursos específicos de manera ordenada.
* **Seguimiento del progreso:** Rastrear el avance de los estudiantes, incluyendo los módulos que han completado y su porcentaje de progreso general.
* **Generación de reportes:** Habilitar la creación de reportes analíticos para obtener información valiosa, como la cantidad de estudiantes por curso, cuáles son los cursos más populares y el progreso promedio de los estudiantes.

La implementación de una base de datos normalizada es fundamental para resolver estos problemas, ya que ayudará a eliminar las redundancias, mantener la integridad de los datos y facilitar la generación de los reportes necesarios para el negocio.