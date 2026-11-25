
# Base de Datos RRHH

Base de datos relacional para la gestión de recursos humanos, desarrollada en MySQL y diseñada mediante MySQL Workbench 8.0.

## Descripción

Este proyecto permite organizar información relacionada con empleados, cargos, departamentos y ubicaciones geográficas.

Incluye claves primarias y foráneas para mantener las relaciones entre las tablas.

## Estructura de la base de datos

La base de datos `rrhh` contiene siete tablas:

| Tabla | Descripción |
|---|---|
| paises | Almacena los países. |
| ciudades | Registra ciudades y sus países. |
| localizaciones | Contiene direcciones y ubicaciones. |
| departamentos | Organiza los departamentos de la empresa. |
| cargos | Define cargos y rangos salariales. |
| empleados | Almacena los datos de los empleados. |
| historico | Registra información histórica de cargos y departamentos. |

## Tecnologías

- MySQL
- MySQL Workbench 8.0
- SQL

## Archivos del proyecto

- `rrhh_tablas.sql`: crea las tablas y sus relaciones.
- `rrhh_datos.sql`: inserta los registros de ejemplo.
- `rrhh_modelo.mwb.zip`: contiene el modelo de MySQL Workbench comprimido.

## Instalación

1. Abrir MySQL Workbench o SQLServer.
2. Conectarse a un servidor MySQL.
3. Crear la base de datos ejecutando:

```sql
```

4. Ejecutar `rrhh_tablas.sql`.
5. Ejecutar `rrhh_datos.sql`.
6. Actualizar el panel SCHEMAS para consultar las tablas.

## Autor
MARYAN PAOLA PINZÓN MANRIQUE 
CAMILO ANDRES LOZANO CARDENAS
CRISTIAN CAMILO DURÁN TORRES
SANTIAGO PARRA PUERTAS 
LEANDRO PATIÑO GUZMAN  
