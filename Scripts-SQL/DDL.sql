CREATE DATABASE IF NOT EXISTS COMISARIA;
USE COMISARIA;

CREATE TABLE VEHICULO (
    matricula VARCHAR(7),
    marca VARCHAR(64),
    modelo VARCHAR(64),
    tipo VARCHAR(64),
    anyo INT,

    CONSTRAINT PK_VEHICULO PRIMARY KEY (matricula)
);

CREATE TABLE DEPARTAMENTO (
    id INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(128),
    telefono VARCHAR(16),
    direccion VARCHAR(128),

    CONSTRAINT PK_DEPARTAMENTO PRIMARY KEY (id)
);

ALTER TABLE DEPARTAMENTO AUTO_INCREMENT = 100;

CREATE TABLE CASO (
    numCaso INT UNSIGNED AUTO_INCREMENT,
    descripcionCaso VARCHAR(1024),
    tipoCaso VARCHAR(64),
    fApertura DATE,
    estadoCaso VARCHAR(32),

    CONSTRAINT PK_CASO PRIMARY KEY (numCaso)
);

CREATE TABLE AGENTE (
    numPlaca VARCHAR(16),
    nombre VARCHAR(128),
    fnac DATE,
    telefono VARCHAR(16),
    rango VARCHAR(64),
    matriculaVehiculo VARCHAR(7),
    idDepartamento INT UNSIGNED,

    CONSTRAINT PK_AGENTE PRIMARY KEY (numPlaca),
    CONSTRAINT FK_AGENTE_DEPARTAMENTO FOREIGN KEY (idDepartamento) REFERENCES DEPARTAMENTO(id),
    CONSTRAINT FK_AGENTE_VEHICULO FOREIGN KEY (matriculaVehiculo) REFERENCES VEHICULO(matricula)
);

CREATE TABLE INVESTIGAR (
    numPlaca VARCHAR(16),
    numCaso INT UNSIGNED,

    CONSTRAINT PK_INVESTIGAR PRIMARY KEY (numPlaca, numCaso),
    CONSTRAINT FK_INV_AGE FOREIGN KEY (numPlaca) REFERENCES AGENTE(numPlaca),
    CONSTRAINT FK_INV_CAS FOREIGN KEY (numCaso) REFERENCES CASO(numCaso)
);

CREATE TABLE CIUDADANO (
    dni VARCHAR(9),
    nombre VARCHAR(128),
    direccion VARCHAR(128),
    telefono VARCHAR(16),

    CONSTRAINT PK_CIUDADANO PRIMARY KEY (dni)
);

CREATE TABLE TESTIGO (
    dni VARCHAR(9),
    declaracion VARCHAR(512),
    numCaso INT UNSIGNED,

    -- La clave primaria compuesta permite al mismo DNI ser testigo en distintos casos.
    CONSTRAINT PK_TESTIGO PRIMARY KEY (dni, numCaso), 
    CONSTRAINT FK_TES_CIU FOREIGN KEY (dni) REFERENCES CIUDADANO(dni),
    CONSTRAINT FK_TES_CAS FOREIGN KEY (numCaso) REFERENCES CASO(numCaso)
);

CREATE TABLE VICTIMA (
    dni VARCHAR(9),
    testimonio VARCHAR(512),
    numCaso INT UNSIGNED,

    -- Clave compuesta para ser víctima en múltiples casos.
    CONSTRAINT PK_VICTIMA PRIMARY KEY (dni, numCaso),
    CONSTRAINT FK_VIC_CIU FOREIGN KEY (dni) REFERENCES CIUDADANO(dni),
    CONSTRAINT FK_VIC_CAS FOREIGN KEY (numCaso) REFERENCES CASO(numCaso)
);

CREATE TABLE SOSPECHOSO (
    dni VARCHAR(9),
    antecedentes VARCHAR(512),
    numCaso INT UNSIGNED,

    -- Clave compuesta para ser sospechoso en múltiples casos.
    CONSTRAINT PK_SOSPECHOSO PRIMARY KEY (dni, numCaso),
    CONSTRAINT FK_SOS_CIU FOREIGN KEY (dni) REFERENCES CIUDADANO(dni),
    CONSTRAINT FK_SOS_CAS FOREIGN KEY (numCaso) REFERENCES CASO(numCaso)
);

CREATE TABLE EVIDENCIA (
    id INT UNSIGNED AUTO_INCREMENT,
    numCaso INT UNSIGNED NOT NULL,
    descripcion VARCHAR(512),
    tipo VARCHAR(64),

    CONSTRAINT PK_EVIDENCIA PRIMARY KEY (id),
    CONSTRAINT FK_EVI_CAS FOREIGN KEY (numCaso) REFERENCES CASO(numCaso)
);

