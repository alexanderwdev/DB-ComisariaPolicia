# Base de Datos de Gestión Policial (COMISARÍA)

## Descripción General del Proyecto

Este proyecto consiste en el diseño e implementación de una base de datos relacional para gestionar la información esencial de una comisaría de policía. El objetivo es modelar las relaciones complejas entre los agentes, los vehículos asignados, los departamentos, los casos de investigación y los ciudadanos involucrados (testigos, víctimas y sospechosos).

La base de datos, denominada `COMISARIA`, permite un seguimiento eficiente de las operaciones y la evidencia asociada a cada investigación.

## Modelo de Datos y Esquema Relacional

El esquema se ha diseñado bajo un modelo de especialización/herencia, donde la tabla `CIUDADANO` actúa como superclase, y las tablas de rol (`TESTIGO`, `VICTIMA`, `SOSPECHOSO`) actúan como subclases.

### Tablas Principales

| Tabla | Descripción | Clave Primaria | Relaciones Clave |
| :--- | :--- | :--- | :--- |
| **CIUDADANO** | Registro base de todas las personas involucradas (PK por DNI). | `dni` | Padre de Testigo, Víctima, Sospechoso. |
| **AGENTE** | Información del personal policial. | `numPlaca` | FK a `DEPARTAMENTO` y `VEHICULO`. |
| **CASO** | Detalle de las investigaciones activas o cerradas. | `numCaso` | Padre de `EVIDENCIA`. |
| **INVESTIGAR** | Relación M:N entre AGENTE y CASO (Asignación de agentes a casos). | `(numPlaca, numCaso)` | FK a `AGENTE` y `CASO`. |
| **TESTIGO** | Ciudadanos que proporcionan declaraciones. | `(dni, numCaso)` | FK a `CIUDADANO` y `CASO`. |
| **VICTIMA** | Ciudadanos afectados por el caso. | `(dni, numCaso)` | FK a `CIUDADANO` y `CASO`. |
| **SOSPECHOSO**| Ciudadanos bajo investigación. | `(dni, numCaso)` | FK a `CIUDADANO` y `CASO`. |

**Nota sobre Claves Compuestas:** Las tablas de rol (`TESTIGO`, `VICTIMA`, `SOSPECHOSO`) utilizan una clave primaria compuesta (`dni`, `numCaso`). Esto asegura que un mismo ciudadano (`dni`) puede participar en múltiples casos (`numCaso`) con el mismo rol, lo cual modela de forma correcta la realidad de las investigaciones policiales.

## Tecnología

* **SGBD (Sistema de Gestión de Bases de Datos):** MariaDB / MySQL
* **Lenguaje:** SQL (Structured Query Language)
* **Herramientas:** Cliente MariaDB/MySQL (Ej: DBeaver, MySQL Workbench, phpMyAdmin o terminal CLI).

## Instalación y Uso

### 1. Clonar el Repositorio

```bash
git clone https://github.com/alexanderwdev/DB-ComisariaPolicia.git
cd DB-ComisariaPolicia
