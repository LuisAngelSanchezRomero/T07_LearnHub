# Oracle Autonomous Architecture (LearnHub)

Arquitectura simple basada en Oracle Autonomous Database (ATP) y la estructura actual del proyecto.

## Componentes mínimos
- Oracle Autonomous Database (ATP) en OCI
- SQL Developer Web para administración
- Conexión segura TCPS con wallet para clientes/aplicación

## Esquemas y responsabilidades
- `DEV1`: modelo transaccional (p. ej., `estudiante`, `curso`, `inscripcion`, `modulo`, `progreso_estudiante`) y permisos de consumo
- `DEV2`: módulos compartidos/reportes y permisos cruzados

## Flujo de implementación (según Development)
1. `1_infraestructura.sql`: crea usuarios/roles y privilegios mínimos
2. `2_dev1_tables.sql`: tablas y restricciones de Dev1
3. `3_dev2_tables.sql`: tablas de Dev2
4. `4_grants_from_user_dev1.sql`: permisos de Dev1 → Dev2
5. `5_grants_from_user_dev2.sql`: permisos de Dev2 → Dev1
6. `6_dev1_constraints.sql`: relaciones (FK) adicionales desde Dev1
7. `7_dev2_constraints.sql`: relaciones (FK) adicionales desde Dev2
8. `8_dev1_load_data.sql`: carga de datos de Dev1 (≥10 por tabla maestra y transaccional)
9. `9_dev2_load_data.sql`: carga de datos de Dev2 (≥10 por tabla maestra y transaccional)

## Buenas prácticas básicas
- Cargar primero tablas maestras, luego transaccionales (respeta FKs)
- `COMMIT` explícito; no deshabilitar constraints
- Usar secuencias/identity para llaves surrogate cuando aplique

## Conectividad
- SQL Developer Web (consulta/administración)
- Clientes con wallet mTLS (JDBC, Node-oracledb, etc.)

## Diagrama simple
```
[Cliente/Backend] --TCPS (wallet)--> [Autonomous DB (ATP)]
                 SQL Dev Web  ->    [Admin]
```
