# Base de Datos de Gestión Policial (COMISARÍA)

## Descripción General del Proyecto

Este proyecto consiste en el diseño e implementación de una base de datos relacional para gestionar la información esencial de una comisaría de policía. El objetivo es modelar las relaciones complejas entre los agentes, los vehículos asignados, los departamentos, los casos de investigación y los ciudadanos involucrados (testigos, víctimas y sospechosos).

La base de datos, denominada `COMISARIA`, permite un seguimiento eficiente de las operaciones y la evidencia asociada a cada investigación.

## Modelo de Datos y Esquema Relacional

El esquema se basa en un modelo de especialización/herencia **solapada** donde `CIUDADANO` es la superclase. La principal adaptación al modelo físico fue el uso de **tablas de unión** para implementar relaciones Muchos a Muchos (N:M) y permitir que un ciudadano participe en múltiples casos con cualquier.

### Tablas Principales

| Tabla | Descripción | Clave Primaria | Relaciones Clave |
| :--- | :--- | :--- | :--- |
| **CIUDADANO** | Registro base de todas las personas involucradas (PK por DNI). | `dni` | Padre de Testigo, Víctima, Sospechoso. |
| **AGENTE** | Información del personal policial. | `numPlaca` | FK a `DEPARTAMENTO` y `VEHICULO`. |
| **CASO** | Detalle de las investigaciones activas o cerradas. | `numCaso` | Las fechas de apertura se generan por defecto (`DEFAULT CURRENT_DATE`)]. |
| **INVESTIGAR** | Relación M:N entre AGENTE y CASO (Asignación de agentes a casos). | `(numPlaca, numCaso)` | FK a `AGENTE` y `CASO`. |
| **TESTIGO** | Tabla de Rol. Ciudadanos que son testigos. | `dni` | FK a `CIUDADANO`. |
| **VICTIMA** | Tabla de Rol. Ciudadanos afectados. | `dni` | FK a `CIUDADANO`. |
| **SOSPECHOSO**| Tabla de Rol. Ciudadanos bajo investigación. | `dni` | FK a `CIUDADANO`. |

### Tablas de Unión (N:M)

Estas tablas resuelven las relaciones Muchos a Muchos entre las Tablas de Rol y `CASO`, y almacenan los atributos de la relación:

| Tabla | Descripción | Clave Primaria | Atributo de la Relación |
| :--- | :--- | :--- | :--- |
| **INVOLUCRAR\_T** | Vincula a un `TESTIGO` con un `CASO`. | `(dniTestigo, numCaso)` | `declaracion` |
| **INVOLUCRAR\_V** | Vincula a una `VICTIMA` con un `CASO`. | `(dniVictima, numCaso)` | `testimonio` |
| **INVOLUCRAR\_S** | Vincula a un `SOSPECHOSO` con un `CASO`. | `(dniSospechoso, numCaso)` | `antecedentes` |

### Integridad y Restricciones Adicionales

  * **Claves Compuestas (N:M):** La clave primaria compuesta reside en las tablas de unión (`INVOLUCRAR_T/V/S`), asegurando que la combinación de persona y caso sea única.
  * **`AUTO_INCREMENT` Simple:** La entidad `EVIDENCIA` fue corregida para tener una PK simple (`id`), permitiendo el uso de `AUTO_INCREMENT`.
  * **`ON DELETE CASCADE`:** Se implementó esta restricción en todas las claves foráneas relevantes (Roles `CIUDADANO`, Unión `CASO`, `EVIDENCIA` `CASO`). Esto garantiza la limpieza automática de registros dependientes al eliminar un caso o un ciudadano.

## Tecnología

  * **SGBD (Sistema de Gestión de Bases de Datos):** MariaDB / MySQL.
  * **Lenguaje:** SQL (Structured Query Language).
  * **Herramientas:** Cliente MariaDB/MySQL (Ej: DBeaver, MySQL, phpMyAdmin o terminal CLI).

## Instalación y Uso

### 1\. Clonar el Repositorio

```bash
git clone https://github.com/alexanderwdev/DB-ComisariaPolicia.git
cd DB-ComisariaPolicia
```
