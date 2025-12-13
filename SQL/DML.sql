INSERT INTO vehiculo (matricula, marca, modelo, tipo, año) VALUES 
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


INSERT INTO departamento (id, nombre, telefono, direccion) VALUES
(1, 'Recursos Humanos', '+34 612 345 678', 'Calle Mayor 12, Madrid'),
(2, 'Finanzas', '+34 691 123 456', 'Avenida Libertad 45, Madrid'),
(3, 'Marketing', '+34 620 555 189', 'Calle Sol 22, Barcelona'),
(4, 'Informática', '+34 623 456 789', 'Paseo Central 10, Valencia'),
(5, 'Logística', '+34 651 987 654', 'Calle Norte 8, Sevilla'),
(6, 'Compras', '+34 634 567 890', 'Avenida del Puerto 33, Bilbao'),
(7, 'Producción', '+34 655 998 765', 'Camino Industrial 101, Zaragoza'),
(8, 'Calidad', '+34 652 876 543', 'Calle Sur 55, Málaga'),
(9, 'Ventas', '+34 681 234 567', 'Boulevard Este 19, Murcia'),
(10, 'Atención al Cliente', '+34 670 345 678', 'Calle Larga 5, Granada');


INSERT INTO agente (numPlaca, nombre, fnac, telefono, rango, matrículaVehiculo, idDepartamento) VALUES
(1001, 'Carlos Méndez', '1985-03-12', '+34 612 345 678', 'Sargento', 'ABC1234', 1),
(1002, 'Lucía Herrera', '1990-07-25', '+34 691 112 345', 'Cabo', 'DEF5678', 2),
(1003, 'Javier Gómez', '1982-11-05', '+34 620 555 014', 'Teniente', 'GHI9012', 3),
(1004, 'Marina López', '1995-01-18', '+34 612 345 678', 'Agente', 'JKL3456', 4),
(1005, 'Sergio Ramírez', '1988-09-30', '+34 651 234 567', 'Capitán', 'MNO7890', 5),
(1006, 'Elena Torres', '1993-04-09', '+34 634 567 890', 'Agente', 'PQR1122', 6),
(1007, 'Adrián Silva', '1987-06-21', '+34 655 987 654', 'Cabo', 'STU3344', 7),
(1008, 'Paula Navarro', '1991-12-15', '+34 652 123 456', 'Sargento', 'VWX5566', 8),
(1009, 'Héctor Ruiz', '1984-02-27', '+34 681 234 567', 'Teniente', 'YZA7788', 9),
(1010, 'Natalia Cruz', '1996-10-03', '+34 670 234 567', 'Agente', 'BCD9900', 10);


INSERT INTO caso (numCaso, descripcionCaso, tipoCaso, fApertura, estadoCaso) VALUES
(1, 'Robo en establecimiento comercial con denuncia de testigos.', 'Robo', '2023-01-15', 'Abierto'),
(2, 'Accidente de tráfico con daños materiales y leves lesiones.', 'Accidente', '2023-02-10', 'Cerrado'),
(3, 'Investigación por fraude electrónico reportado por una entidad bancaria.', 'Fraude', '2023-03-05', 'En Proceso'),
(4, 'Conflicto vecinal por ruidos prolongados en horario nocturno.', 'Disturbio', '2023-04-22', 'Abierto'),
(5, 'Desaparición de persona mayor reportada por la familia.', 'Desaparición', '2023-05-18', 'En Proceso'),
(6, 'Daños a propiedad pública en parque municipal.', 'Vandalismo', '2023-06-11', 'Cerrado'),
(7, 'Operativo por posible tráfico de sustancias ilícitas.', 'Narcóticos', '2023-07-29', 'Abierto'),
(8, 'Estafa telefónica reportada por varios ciudadanos.', 'Estafa', '2023-08-03', 'En Proceso'),
(9, 'Violencia doméstica con intervención inmediata.', 'Violencia Doméstica', '2023-09-14', 'Cerrado'),
(10, 'Intento de robo de vehículo en estacionamiento público.', 'Robo', '2023-10-09', 'Abierto');


INSERT INTO investigar (numPlaca, numCaso) VALUES
(1001, 1),
(1002, 2),
(1003, 3),
(1004, 4),
(1005, 5),
(1006, 6),
(1007, 7),
(1008, 8),
(1009, 9),
(1010, 10);


INSERT INTO ciudadano (dni, nombre, direccion, telefono) VALUES
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


INSERT INTO testigo (dni, declaracion, numCaso) VALUES
('12345678A', 'Vi cómo el sospechoso salía del establecimiento con una bolsa grande.', 1),
('23456789B', 'Observé un accidente de tráfico y ayudé a las personas involucradas.', 2),
('34567890C', 'Recibí un correo sospechoso que luego resultó ser un fraude.', 3),
('45678901D', 'Escuché ruidos fuertes provenientes del apartamento de mi vecino.', 4),
('56789012E', 'Vi que la persona desaparecida salió de su casa sola por la mañana.', 5),
('67890123F', 'Presencié cómo se dañaba un parque público durante la noche.', 6),
('78901234G', 'Noté movimientos sospechosos cerca de una zona conocida por narcotráfico.', 7),
('89012345H', 'Recibí llamadas extrañas solicitando dinero bajo engaños.', 8),
('90123456J', 'Fui testigo de un caso de violencia doméstica que requirió intervención.', 9),
('01234567K', 'Vi un intento de robo de coche en el estacionamiento del centro comercial.', 10);


INSERT INTO victima (dni, testimonio, numCaso) VALUES
('12345678A', 'Fui víctima de un robo en mi tienda, me llevaron varios objetos de valor.', 1),
('23456789B', 'Sufrí un accidente de tráfico donde mi coche quedó seriamente dañado.', 2),
('34567890C', 'Recibí un correo de phishing que me hizo perder dinero de mi cuenta bancaria.', 3),
('45678901D', 'Mi vecino me causó molestias continuas por ruidos en la noche.', 4),
('56789012E', 'Una persona mayor desapareció y temíamos por su seguridad.', 5),
('67890123F', 'Mi propiedad pública en el parque fue dañada sin motivo alguno.', 6),
('78901234G', 'Fui víctima de un intento de tráfico de drogas cerca de mi zona.', 7),
('89012345H', 'Recibí llamadas fraudulentas que intentaban engañarme.', 8),
('90123456J', 'Sufrí violencia doméstica que requirió intervención policial.', 9),
('01234567K', 'Intentaron robar mi coche en el estacionamiento público.', 10);


INSERT INTO sospechoso (dni, antecedentes, numCaso) VALUES
('12345678A', 'Tiene antecedentes por hurto menor hace 3 años.', 1),
('23456789B', 'No registra antecedentes penales.', 2),
('34567890C', 'Fue detenido anteriormente por fraude electrónico.', 3),
('45678901D', 'Sin antecedentes conocidos.', 4),
('56789012E', 'Tiene antecedentes por vandalismo.', 5),
('67890123F', 'No registra antecedentes penales.', 6),
('78901234G', 'Fue investigado previamente por tráfico de drogas.', 7),
('89012345H', 'Sin antecedentes conocidos.', 8),
('90123456J', 'Tiene antecedentes por violencia doméstica.', 9),
('01234567K', 'No registra antecedentes penales.', 10);


INSERT INTO evidencia (id, numCaso, descripcion, tipo) VALUES
(1, 1, 'Cámara de seguridad del local que muestra al sospechoso.', 'Video'),
(2, 2, 'Informe pericial de daños del vehículo involucrado.', 'Documento'),
(3, 3, 'Registro de correos electrónicos fraudulentos enviados al banco.', 'Digital'),
(4, 4, 'Grabaciones de audio de quejas de vecinos sobre ruidos.', 'Audio'),
(5, 5, 'Informe policial sobre la desaparición de la persona mayor.', 'Documento'),
(6, 6, 'Fotos de los daños ocasionados en el parque público.', 'Imagen'),
(7, 7, 'Grabación de vigilancia mostrando tráfico de sustancias ilícitas.', 'Video'),
(8, 8, 'Capturas de pantalla de las llamadas fraudulentas.', 'Digital'),
(9, 9, 'Informe médico y fotografías de lesiones por violencia doméstica.', 'Documento'),
(10, 10, 'Fotografía del intento de robo de vehículo en el estacionamiento.', 'Imagen');
