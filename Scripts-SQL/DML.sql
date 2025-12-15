-- VEHICULO
INSERT INTO VEHICULO (matricula, marca, modelo, tipo, anyo) VALUES
('ABC1234', 'Toyota', 'Corolla', 'Sedán', 2019),
('DEF5678', 'Honda', 'Civic', 'Sedán', 2020),
('GHI9012', 'Ford', 'Focus', 'Hatchback', 2018),
('JKL3456', 'Nissan', 'Qashqai', 'SUV', 2021),
('MNO7890', 'Mazda', 'CX-5', 'SUV', 2022),
('PQR1122', 'Hyundai', 'Tucson', 'SUV', 2020),
('STU3344', 'Kia', 'Rio', 'Compacto', 2017),
('VWX5566', 'Volkswagen', 'Golf', 'Hatchback', 2019),
('YZA7788', 'Chevrolet', 'Cruze', 'Sedán', 2018),
('BCD9900', 'Renault', 'Clio', 'Compacto', 2021);

-- DEPARTAMENTO (IDs inician en 100)
INSERT INTO DEPARTAMENTO (nombre, telefono, direccion) VALUES
('Recursos Humanos', '+34 612 345 678', 'Calle Mayor 12, Madrid'),
('Finanzas', '+34 691 123 456', 'Avenida Libertad 45, Madrid'),
('Marketing', '+34 620 555 189', 'Calle Sol 22, Barcelona'),
('Informática', '+34 623 456 789', 'Paseo Central 10, Valencia'),
('Logística', '+34 651 987 654', 'Calle Norte 8, Sevilla'),
('Compras', '+34 634 567 890', 'Avenida del Puerto 33, Bilbao'),
('Producción', '+34 655 998 765', 'Camino Industrial 101, Zaragoza'),
('Calidad', '+34 652 876 543', 'Calle Sur 55, Málaga'),
('Ventas', '+34 681 234 567', 'Boulevard Este 19, Murcia'),
('Atención al Cliente', '+34 670 345 678', 'Calle Larga 5, Granada');

-- AGENTE
INSERT INTO AGENTE (numPlaca, nombre, fnac, telefono, rango, matriculaVehiculo, idDepartamento) VALUES
('A1001', 'Carlos Méndez', '1985-03-12', '+34 612 345 678', 'Sargento', 'ABC1234', 100),
('B1002', 'Lucía Herrera', '1990-07-25', '+34 691 112 345', 'Cabo', 'DEF5678', 101),
('C1003', 'Javier Gómez', '1982-11-05', '+34 620 555 014', 'Teniente', 'GHI9012', 102),
('D1004', 'Marina López', '1995-01-18', '+34 612 345 678', 'Agente', 'JKL3456', 103),
('E1005', 'Sergio Ramírez', '1988-09-30', '+34 651 234 567', 'Capitán', 'MNO7890', 104),
('F1006', 'Elena Torres', '1993-04-09', '+34 634 567 890', 'Agente', 'PQR1122', 105),
('G1007', 'Adrián Silva', '1987-06-21', '+34 655 987 654', 'Cabo', 'STU3344', 106),
('H1008', 'Paula Navarro', '1991-12-15', '+34 652 123 456', 'Sargento', 'VWX5566', 107),
('I1009', 'Héctor Ruiz', '1984-02-27', '+34 681 234 567', 'Teniente', 'YZA7788', 108),
('J1010', 'Natalia Cruz', '1996-10-03', '+34 670 234 567', 'Agente', 'BCD9900', 109);

-- CASO (numCaso se autoincrementa)
INSERT INTO CASO (descripcionCaso, tipoCaso, fApertura, estadoCaso) VALUES
('Robo en establecimiento comercial con denuncia de testigos.', 'Robo', '2023-01-15', 'Abierto'), 
('Accidente de tráfico con daños materiales y leves lesiones.', 'Accidente', '2023-02-10', 'Cerrado'), 
('Investigación por fraude electrónico reportado por una entidad bancaria.', 'Fraude', '2023-03-05', 'En Proceso'), 
('Conflicto vecinal por ruidos prolongados en horario nocturno.', 'Disturbio', '2023-04-22', 'Abierto'), 
('Desaparición de persona mayor reportada por la familia.', 'Desaparición', '2023-05-18', 'En Proceso'), 
('Daños a propiedad pública en parque municipal.', 'Vandalismo', '2023-06-11', 'Cerrado'), 
('Operativo por posible tráfico de sustancias ilícitas.', 'Narcóticos', '2023-07-29', 'Abierto'), 
('Estafa telefónica reportada por varios ciudadanos.', 'Estafa', '2023-08-03', 'En Proceso'), 
('Violencia doméstica con intervención inmediata.', 'Violencia Doméstica', '2023-09-14', 'Cerrado'), 
('Intento de robo de vehículo en estacionamiento público.', 'Robo', '2023-10-09', 'Abierto'); 

-- INVESTIGAR
INSERT INTO INVESTIGAR (numPlaca, numCaso) VALUES
('A1001', 1), ('B1002', 2), ('C1003', 3), ('D1004', 4), ('E1005', 5),
('F1006', 6), ('G1007', 7), ('H1008', 8), ('I1009', 9), ('J1010', 10);

-- CIUDADANO
INSERT INTO CIUDADANO (dni, nombre, direccion, telefono) VALUES
('12345678A', 'Laura Martínez', 'Calle Mayor 14, Madrid', '+34 612 345 678'),
('23456789B', 'Jorge Sánchez', 'Avenida del Puerto 22, Valencia', '+34 691 112 345'),
('34567890C', 'María López', 'Calle Sol 9, Sevilla', '+34 620 555 014'),
('45678901D', 'Diego Fernández', 'Paseo Central 33, Barcelona', '+34 612 345 678'),
('56789012E', 'Lucía Ramos', 'Calle Norte 5, Bilbao', '+34 651 234 567'),
('67890123F', 'Andrés Torres', 'Calle Sur 18, Málaga', '+34 634 567 890'),
('78901234G', 'Paula Navarro', 'Avenida Libertad 77, Zaragoza', '+34 655 987 654'),
('89012345H', 'Ricardo Gómez', 'Boulevard Este 40, Murcia', '+34 652 123 456'),
('90123456J', 'Elena Castro', 'Calle Larga 21, Granada', '+34 681 234 567'),
('01234567K', 'Mateo Ruiz', 'Camino Real 3, Santander', '+34 670 234 567');

-- TABLAS HIJOS DE CIUDADANO
INSERT INTO TESTIGO (dni) VALUES 
('12345678A'), ('23456789B'), ('34567890C'), ('45678901D'), ('56789012E'), 
('67890123F'), ('78901234G'), ('89012345H'), ('90123456J'), ('01234567K');

INSERT INTO VICTIMA (dni) VALUES
('12345678A'), ('23456789B'), ('34567890C'), ('45678901D'), ('56789012E'), 
('67890123F'), ('78901234G'), ('89012345H'), ('90123456J'), ('01234567K');

INSERT INTO SOSPECHOSO (dni) VALUES
('12345678A'), ('23456789B'), ('34567890C'), ('45678901D'), ('56789012E'), 
('67890123F'), ('78901234G'), ('89012345H'), ('90123456J'), ('01234567K');

-- TABLAS DE UNIÓN

-- INVOLUCRAR_T (Testigos)
INSERT INTO INVOLUCRAR_T (dniTestigo, numCaso, declaracion) VALUES
('12345678A', 1, 'Vi cómo el sospechoso salía del establecimiento con una bolsa grande.'),
('23456789B', 2, 'Observé un accidente de tráfico y ayudé a las personas involucradas.'),
('34567890C', 3, 'Recibí un correo sospechoso que luego resultó ser un fraude.'),
('45678901D', 4, 'Escuché ruidos fuertes provenientes del apartamento de mi vecino.'),
('56789012E', 5, 'Vi que la persona desaparecida salió de su casa sola por la mañana.'),
('67890123F', 6, 'Presencié cómo se dañaba un parque público durante la noche.'),
('78901234G', 7, 'Noté movimientos sospechosos cerca de una zona conocida por narcotráfico.'),
('89012345H', 8, 'Recibí llamadas extrañas solicitando dinero bajo engaños.'),
('90123456J', 9, 'Fui testigo de un caso de violencia doméstica que requirió intervención.'),
('01234567K', 10, 'Vi un intento de robo de coche en el estacionamiento del centro comercial.');

-- INVOLUCRAR_V (Víctimas)
INSERT INTO INVOLUCRAR_V (dniVictima, numCaso, testimonio) VALUES
('12345678A', 1, 'Fui víctima de un robo en mi tienda, me llevaron varios objetos de valor.'),
('23456789B', 2, 'Sufrí un accidente de tráfico donde mi coche quedó seriamente dañado.'),
('34567890C', 3, 'Recibí un correo de phishing que me hizo perder dinero de mi cuenta bancaria.'),
('45678901D', 4, 'Mi vecino me causó molestias continuas por ruidos en la noche.'),
('56789012E', 5, 'Una persona mayor desapareció y temíamos por su seguridad.'),
('67890123F', 6, 'Mi propiedad pública en el parque fue dañada sin motivo alguno.'),
('78901234G', 7, 'Fui víctima de un intento de tráfico de drogas cerca de mi zona.'),
('89012345H', 8, 'Recibí llamadas fraudulentas que intentaban engañarme.'),
('90123456J', 9, 'Sufrí violencia doméstica que requirió intervención policial.'),
('01234567K', 10, 'Intentaron robar mi coche en el estacionamiento público.');

-- INVOLUCRAR_S (Sospechosos)
INSERT INTO INVOLUCRAR_S (dniSospechoso, numCaso, antecedentes) VALUES
('12345678A', 1, 'Tiene antecedentes por hurto menor hace 3 años.'),
('23456789B', 2, 'No registra antecedentes penales.'),
('34567890C', 3, 'Fue detenido anteriormente por fraude electrónico.'),
('45678901D', 4, 'Sin antecedentes conocidos.'),
('56789012E', 5, 'Tiene antecedentes por vandalismo.'),
('67890123F', 6, 'No registra antecedentes penales.'),
('78901234G', 7, 'Fue investigado previamente por tráfico de drogas.'),
('89012345H', 8, 'Sin antecedentes conocidos.'),
('90123456J', 9, 'Tiene antecedentes por violencia doméstica.'),
('01234567K', 10, 'No registra antecedentes penales.');

-- EVIDENCIA
INSERT INTO EVIDENCIA (numCaso, descripcion, tipo) VALUES
(1, 'Cámara de seguridad del local que muestra al sospechoso.', 'Video'),
(2, 'Informe pericial de daños del vehículo involucrado.', 'Documento'),
(3, 'Registro de correos electrónicos fraudulentos enviados al banco.', 'Digital'),
(4, 'Grabaciones de audio de quejas de vecinos sobre ruidos.', 'Audio'),
(5, 'Informe policial sobre la desaparición de la persona mayor.', 'Documento'),
(6, 'Fotos de los daños ocasionados en el parque público.', 'Imagen'),
(7, 'Grabación de vigilancia mostrando tráfico de sustancias ilícitas.', 'Video'),
(8, 'Capturas de pantalla de las llamadas fraudulentas.', 'Digital'),
(9, 'Informe médico y fotografías de lesiones por violencia doméstica.', 'Documento'),
(10, 'Fotografía del intento de robo de vehículo en el estacionamiento.', 'Imagen');
