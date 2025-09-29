# T07_LearnHub

# 📖 Proyecto: Plataforma de Cursos Online
# 👥 Equipo: Karla Magallanes, Lucas Leyva, Luis Sánchez

### 📂 Estructura base
- `Case/` documentos del caso, arquitectura y diseños
- `Development/` scripts SQL del proyecto

### 🔗 Accesos rápidos
- Arquitectura (Oracle Autonomous): [Case/Arquitectura/Arquitectura_Oracle_Autonomous.md](Case/Arquitectura/Arquitectura_Oracle_Autonomous.md)
- Descripción del caso: [Case/Descripcion_caso/descripcion-caso.md](Case/Descripcion_caso/descripcion-caso.md)
- Retrospectiva: [Case/Descripcion_caso/retrospectiva.md](Case/Descripcion_caso/retrospectiva.md)
- Modelo lógico: [Case/Diseno_logico/diagramas/dl_Plataforma_Cursos-2025-09-29_09-50.png](Case/Diseno_logico/diagramas/dl_Plataforma_Cursos-2025-09-29_09-50.png)
- Diseño físico (diagrama): [Case/Diseno_fisico/Diagramas/image-diseño-fisico.png](Case/Diseno_fisico/Diagramas/image-diseño-fisico.png)
- Diccionario de datos: [Case/Diseno_fisico/Diccionario_datos/diccionario_datos.pdf](Case/Diseno_fisico/Diccionario_datos/diccionario_datos.pdf)

### ▶️ Orden de ejecución SQL (Development)
1. [Development/1_infraestructura.sql](Development/1_infraestructura.sql)
2. [Development/2_dev1_tables.sql](Development/2_dev1_tables.sql)
3. [Development/3_dev2_tables.sql](Development/3_dev2_tables.sql)
4. [Development/4_grants_from_user_dev1.sql](Development/4_grants_from_user_dev1.sql)
5. [Development/5_grants_from_user_dev2.sql](Development/5_grants_from_user_dev2.sql)
6. [Development/6_dev1_constraints.sql](Development/6_dev1_constraints.sql)
7. [Development/7_dev2_constraints.sql](Development/7_dev2_constraints.sql)
8. [Development/8_dev1_load_data.sql](Development/8_dev1_load_data.sql)
9. [Development/9_dev2_load_data.sql](Development/9_dev2_load_data.sql)

Nota: respeta dependencias lógicas (primero maestras, luego transaccionales).
