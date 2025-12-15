# DICCIONARIO DE DATOS COMISARIA

### Tabla de Vehículo

| Columna | Tipo de dato | Restricción | Descripción |
| :--- | :--- | :--- | :--- |
| **matricula** | VARCHAR (7) | PK | Matrícula del vehículo. |
| **marca** | VARCHAR (64) | | Nombre de la marca del vehículo. |
| **modelo** | VARCHAR (64) | | Modelo del vehículo. |
| **tipo** | VARCHAR (64) | | Tipo de vehículo. |
| **anyo** | INT | | Año de matriculación del vehículo. |

### Tabla de Departamento

| Columna | Tipo de dato | Restricción | Descripción |
| :--- | :--- | :--- | :--- |
| **id** | INT UNSIGNED | PK, AI (inicia en 100) | Identificador del departamento. |
| **nombre** | VARCHAR (128) | | Nombre del departamento. |
| **telefono** | VARCHAR(16) | | Número de teléfono del departamento. |
| **direccion** | VARCHAR (128) | | Dirección del departamento. |

### Tabla de Agente

| Columna | Tipo de dato | Restricción | Descripción |
| :--- | :--- | :--- | :--- |
| **numPlaca** | VARCHAR (16) | PK | Número de la placa del agente. (Se actualizó de INT a VARCHAR) |
| **nombre** | VARCHAR (128) | | Nombre del agente. |
| **fnac** | DATE | | Fecha de nacimiento del agente. |
| **telefono** | VARCHAR(16) | | Número de teléfono del agente. |
| **rango** | VARCHAR (64) | | Rango / Puesto del agente. |
| **matriculaVehiculo** | VARCHAR (7) | FK | Matrícula del vehículo del agente, proviene de `VEHICULO`. |
| **idDepartamento** | INT UNSIGNED | FK | ID del departamento al que el agente pertenece, proviene de `DEPARTAMENTO`. |

### Tabla de Caso

| Columna | Tipo de dato | Restricción | Descripción |
| :--- | :--- | :--- | :--- |
| **numCaso** | INT UNSIGNED | PK, AI | Número identificador del caso. |
| **descripcionCaso** | VARCHAR (1024) | | Descripción del caso. |
| **tipoCaso** | VARCHAR (64) | | Tipo de caso. |
| **fApertura** | DATE | DEFAULT CURRENT\_DATE | Fecha de apertura del caso (se establece automáticamente si no se especifica). |
| **estadoCaso** | VARCHAR (32) | | Estado actual del caso. |

### Tabla de Investigar

| Columna | Tipo de dato | Restricción | Descripción |
| :--- | :--- | :--- | :--- |
| **numPlaca** | VARCHAR (16) | PK, FK | Número de placa del agente, proviene de `AGENTE` (ON DELETE CASCADE). |
| **numCaso** | INT UNSIGNED | PK, FK | Número del caso, proviene de `CASO` (ON DELETE CASCADE). |

### Tabla de Ciudadano

| Columna | Tipo de dato | Restricción | Descripción |
| :--- | :--- | :--- | :--- |
| **dni** | VARCHAR (9) | PK | DNI del ciudadano. |
| **nombre** | VARCHAR (128) | | Nombre del ciudadano. |
| **direccion** | VARCHAR (128) | | Dirección del ciudadano. |
| **telefono** | VARCHAR(16) | | Número de teléfono del ciudadano. |

### Tabla de Testigo

| Columna | Tipo de dato | Restricción | Descripción |
| :--- | :--- | :--- | :--- |
| **dni** | VARCHAR (9) | PK, FK | DNI del ciudadano que ha sido testigo. Proviene de `CIUDADANO` (ON DELETE CASCADE). |

### Tabla INVOLUCRAR_T

| Columna | Tipo de dato | Restricción | Descripción |
| :--- | :--- | :--- | :--- |
| **dniTestigo** | VARCHAR (9) | PK, FK | DNI del testigo, proviene de `TESTIGO` (ON DELETE CASCADE). |
| **numCaso** | INT UNSIGNED | PK, FK | Número del caso al que el testigo está vinculado, proviene de `CASO` (ON DELETE CASCADE). |
| **declaracion** | VARCHAR (512) | | Declaración del testigo sobre el caso. |

### Tabla de Víctima

| Columna | Tipo de dato | Restricción | Descripción |
| :--- | :--- | :--- | :--- |
| **dni** | VARCHAR (9) | PK, FK | DNI del ciudadano que es víctima. Proviene de `CIUDADANO` (ON DELETE CASCADE). |

### Tabla INVOLUCRAR_V

| Columna | Tipo de dato | Restricción | Descripción |
| :--- | :--- | :--- | :--- |
| **dniVictima** | VARCHAR (9) | PK, FK | DNI de la víctima, proviene de `VICTIMA` (ON DELETE CASCADE). |
| **numCaso** | INT UNSIGNED | PK, FK | Número del caso al que la víctima está vinculada, proviene de `CASO` (ON DELETE CASCADE). |
| **testimonio** | VARCHAR (512) | | Testimonio de la víctima sobre el caso. |

### Tabla de Sospechoso

| Columna | Tipo de dato | Restricción | Descripción |
| :--- | :--- | :--- | :--- |
| **dni** | VARCHAR (9) | PK, FK | DNI del ciudadano que es sospechoso. Proviene de `CIUDADANO` (ON DELETE CASCADE). |

### Tabla INVOLUCRAR_S

| Columna | Tipo de dato | Restricción | Descripción |
| :--- | :--- | :--- | :--- |
| **dniSospechoso** | VARCHAR (9) | PK, FK | DNI del sospechoso, proviene de `SOSPECHOSO` (ON DELETE CASCADE). |
| **numCaso** | INT UNSIGNED | PK, FK | Número del caso al que el sospechoso está vinculado, proviene de `CASO` (ON DELETE CASCADE). |
| **antecedentes** | VARCHAR (512) | | Antecedentes o perfil del sospechoso. |

### Tabla de Evidencia

| Columna | Tipo de dato | Restricción | Descripción |
| :--- | :--- | :--- | :--- |
| **id** | INT UNSIGNED | PK, AI | Número identificador de la evidencia. |
| **numCaso** | INT UNSIGNED | FK, VNN | Número de caso al que pertenece la evidencia. Proviene de `CASO` (ON DELETE CASCADE). |
| **descripcion** | VARCHAR (512) | | Descripción de la evidencia. |
| **tipo** | VARCHAR (64) | | Tipo de evidencia. |
