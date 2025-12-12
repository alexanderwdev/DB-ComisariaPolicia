CREATE DATABASE IF NOT EXISTS Comisaria;
USE Comisaria;

CREATE TABLE Vehiculo (
    matricula VARCHAR(7),
    marca VARCHAR(64),
    modelo VARCHAR(64),
    tipo VARCHAR(64),
    anyo INT,

    CONSTRAINT PK_Vehiculo PRIMARY KEY (matricula)
);

CREATE TABLE Departamento (
    id INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(128),
    telefono VARCHAR(16),
    direccion VARCHAR(128),

    CONSTRAINT PK_Departamento PRIMARY KEY (id)
);

ALTER TABLE Departamento AUTO_INCREMENT = 100;

CREATE TABLE Caso (
    numCaso INT UNSIGNED AUTO_INCREMENT,
    descripcionCaso VARCHAR(1024),
    tipoCaso VARCHAR(64),
    fApertura DATE,
    estadoCaso VARCHAR(32),

    CONSTRAINT PK_Caso PRIMARY KEY (numCaso)
);

CREATE TABLE Agente (
    numPlaca INT,
    nombre VARCHAR(128),
    fnac DATE,
    telefono VARCHAR(16),
    rango VARCHAR(64),
    matriculaVehiculo VARCHAR(7),
    idDepartamento INT UNSIGNED NOT NULL,

    CONSTRAINT PK_Agente PRIMARY KEY (numPlaca),
    CONSTRAINT FK_Agente_Departamento FOREIGN KEY (idDepartamento) REFERENCES Departamento(id),
    CONSTRAINT FK_Agente_Vehiculo FOREIGN KEY (matriculaVehiculo) REFERENCES Vehiculo(matricula)
);

CREATE TABLE Investigar (
    numPlaca INT,
    numCaso INT UNSIGNED,

    CONSTRAINT PK_Investigar PRIMARY KEY (numPlaca, numCaso),
    CONSTRAINT FK_Inv_Age FOREIGN KEY (numPlaca) REFERENCES Agente(numPlaca),
    CONSTRAINT FK_Inv_Cas FOREIGN KEY (numCaso) REFERENCES Caso(numCaso)
);

CREATE TABLE Ciudadano (
    dni VARCHAR(9),
    nombre VARCHAR(128),
    direccion VARCHAR(128),
    telefono VARCHAR(16),

    CONSTRAINT PK_Ciudadano PRIMARY KEY (dni)
);

CREATE TABLE Testigo (
    dni VARCHAR(9),
    declaracion VARCHAR(512),
    numCaso INT UNSIGNED,

    CONSTRAINT PK_Testigo PRIMARY KEY (dni),
    CONSTRAINT FK_Tes_Ciu FOREIGN KEY (dni) REFERENCES Ciudadano(dni),
    CONSTRAINT FK_Tes_Cas FOREIGN KEY (numCaso) REFERENCES Caso(numCaso)
);

CREATE TABLE Victima (
    dni VARCHAR(9),
    testimonio VARCHAR(512),
    numCaso INT UNSIGNED,

    CONSTRAINT PK_Victima PRIMARY KEY (dni),
    CONSTRAINT FK_Vic_Ciu FOREIGN KEY (dni) REFERENCES Ciudadano(dni),
    CONSTRAINT FK_Vic_Cas FOREIGN KEY (numCaso) REFERENCES Caso(numCaso)
);

CREATE TABLE Sospechoso (
    dni VARCHAR(9),
    antecedentes VARCHAR(512),
    numCaso INT UNSIGNED,

    CONSTRAINT PK_Sospechoso PRIMARY KEY (dni),
    CONSTRAINT FK_Sos_Ciu FOREIGN KEY (dni) REFERENCES Ciudadano(dni),
    CONSTRAINT FK_Sos_Cas FOREIGN KEY (numCaso) REFERENCES Caso(numCaso)
);

CREATE TABLE Evidencia (
    id INT UNSIGNED AUTO_INCREMENT,
    numCaso INT UNSIGNED,
    descripcion VARCHAR(512),
    tipo VARCHAR(64),

    CONSTRAINT PK_Evidencia PRIMARY KEY (id),
    CONSTRAINT FK_Evi_Cas FOREIGN KEY (numCaso) REFERENCES Caso(numCaso)
);