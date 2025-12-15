### VEHICULO (<u>matricula</u>, marca, modelo, tipo, año)​
- `PK` (matricula)​

### DEPARTAMENTO (<u>id</u>, nombre, teléfono, dirección)​
- `PK` (id)​

### CIUDADANO (<u>dni</u>, nombre, dirección, teléfono)​
- `PK` (dni)​

### CASO (<u>numCaso</u>, descripción, tipo, fApertura, estado)​
- `PK` (numCaso)​

### TESTIGO (<u>dni*</u>)​
- `PK` (dni)​
- `FK` (dni) → CIUDADANO (dni)​

### INVOLUCRAR_T (<u>dniTestigo*, numCaso*</u>, declaración)
- `PK` (dniTestigo, numCaso)
- `FK` (dniTestigo) → TESTIGO (dni)
- `FK` (numCaso) → CASO (numCaso)​

### VICTIMA (<u>dni*</u>)​
- `PK` (dni)​
- `FK` (dni) → CIUDADANO (dni)

### INVOLUCRAR_V (<u>dniVictima*, numCaso*</u>, testimonio)
- `PK` (dniVictima, numCaso)
- `FK` (dniVictima) → VICTIMA (dni)
- `FK` (numCaso) → CASO (numCaso)​​

### SOSPECHOSO (<u>dni*</u>)​
- `PK` (dni)​
- `FK` (dni) → CIUDADANO (dni)

### INVOLUCRAR_S (<u>dniSospechoso*, numCaso*</u>, antecedentes)
- `PK` (dniSospechoso, numCaso)
- `FK` (dniSospechoso) → SOSPECHOSO (dni)
- `FK` (numCaso) → CASO (numCaso)​​

### AGENTE (<u>numPlaca</u>, fnac, teléfono, nombre, rango, matricula*, idDepartamento*)​
- `PK` (numPlaca)​
- `FK` (idDepartamento) → DEPARTAMENTO (id)​
- `FK` (matricula) → VEHICULO (matricula)​​

### INVESTIGAR (<u>numPlaca*, numCaso*</u>)​
- `PK` (numPlaca, numCaso)​
- `FK` (numPlaca) → AGENTE (numPlaca)​
- `FK` (numCaso) → CASO (numCaso)​

### EVIDENCIA (<u>id</u>, numCaso*, descripción, tipo)​
- `PK` (id)​
- `FK` (numCaso) → CASO (numCaso)
- `VNN` (numCaso)​


