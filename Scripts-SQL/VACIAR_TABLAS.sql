-- 1. Deshabilitar temporalmente la verificación de claves foráneas.
-- Esto permite truncar tablas con relaciones sin error.
SET FOREIGN_KEY_CHECKS = 0;

-- 2. TRUNCAR LAS TABLAS
-- TRUNCATE TABLE es la forma más rápida de eliminar todos los datos y reiniciar AUTO_INCREMENT.

-- Tablas de relaciones y entidades débiles (se pueden truncar primero)
TRUNCATE TABLE INVESTIGAR;
TRUNCATE TABLE TESTIGO;
TRUNCATE TABLE VICTIMA;
TRUNCATE TABLE SOSPECHOSO;
TRUNCATE TABLE EVIDENCIA;

-- Tablas de entidades principales (en un orden seguro)
TRUNCATE TABLE AGENTE;
TRUNCATE TABLE CASO;
TRUNCATE TABLE DEPARTAMENTO;
TRUNCATE TABLE VEHICULO;
TRUNCATE TABLE CIUDADANO;


-- 3. REINICIAR CONTADORES AUTO_INCREMENT
-- MySQL reinicia automáticamente el contador al truncar, pero es buena práctica asegurarlo.
-- Si hay un valor inicial (como 100 para DEPARTAMENTO), se restablece ese valor.

ALTER TABLE DEPARTAMENTO AUTO_INCREMENT = 100;
ALTER TABLE CASO AUTO_INCREMENT = 1;
ALTER TABLE EVIDENCIA AUTO_INCREMENT = 1;


-- 4. Habilitar de nuevo la verificación de claves foráneas.
SET FOREIGN_KEY_CHECKS = 1;