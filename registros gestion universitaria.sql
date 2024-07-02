USE Gestion_Universitaria

GO
--Administradores, Aulas, Estudiantes, Profesores, Materias, Carreras


INSERT INTO Administrativos (Nombre, Apellido, Telefono, Email, FechaNacimiento, Sexo)
VALUES 
('Juan', 'P�rez', '011-1234-5678', 'juan.perez@gmail.com', '1970-03-14', 'M'),
('Mar�a', 'L�pez', '011-2345-6789', 'maria.lopez@hotmail.com', '1980-07-22', 'F'),
('Carlos', 'Garc�a', '011-3456-7890', 'carlos.garcia@yahoo.com', '1965-01-05', 'M'),
('Laura', 'Mart�nez', '011-4567-8901', 'laura.martinez@gmail.com', '1990-11-30', 'F'),
('Alejandro', 'Rodr�guez', '011-5678-9012', 'alejandro.rodriguez@hotmail.com', '1985-08-19', 'M'),
('Ana', 'S�nchez', '011-6789-0123', 'ana.sanchez@yahoo.com', '1995-02-27', 'F'),
('Luis', 'Hern�ndez', '011-7890-1234', 'luis.hernandez@gmail.com', '1968-12-12', 'M'),
('Sof�a', 'D�az', '011-8901-2345', 'sofia.diaz@hotmail.com', '1992-04-18', 'F'),
('Pablo', 'Torres', '011-9012-3456', 'pablo.torres@yahoo.com', '1982-09-09', 'M'),
('Marta', 'Gonz�lez', '011-0123-4567', 'marta.gonzalez@gmail.com', '1975-06-25', 'F'),
('David', 'Romero', '011-1234-5678', 'david.romero@hotmail.com', '1987-03-03', 'M'),
('Elena', 'Garc�a', '011-2345-6789', 'elena.garcia@yahoo.com', '1972-07-17', 'F'),
('Javier', 'Ruiz', '011-3456-7890', 'javier.ruiz@gmail.com', '1998-01-23', 'M'),
('Laura', 'L�pez', '011-4567-8901', 'laura.lopez@hotmail.com', '1962-10-10', 'F'),
('Mar�a', 'Mart�n', '011-5678-9012', 'maria.martin@yahoo.com', '1978-05-04', 'F'),
('Carlos', 'S�nchez', '011-6789-0123', 'carlos.sanchez@gmail.com', '1967-12-01', 'M'),
('Andrea', 'P�rez', '011-7890-1234', 'andrea.perez@hotmail.com', '1993-11-05', 'F'),
('Juan', 'D�az', '011-8901-2345', 'juan.diaz@yahoo.com', '1981-03-22', 'M'),
('Elena', 'Torres', '011-9012-3456', 'elena.torres@gmail.com', '1999-08-30', 'F'),
('Luisa', 'Gonz�lez', '011-0123-4567', 'luisa.gonzalez@hotmail.com', '1964-05-15', 'F');



INSERT INTO Aulas (nombre, capacidad) VALUES
('Aula 101', 30),
('Aula 102', 40),
('Aula 103', 50),
('Aula 104', 35),
('Aula 105', 25),
('Aula 106', 45),
('Aula 107', 55),
('Aula 108', 60),
('Aula 109', 20),
('Aula 110', 70),
('Aula 201', 30),
('Aula 202', 40),
('Aula 203', 50),
('Aula 204', 35),
('Aula 205', 25),
('Aula 206', 45),
('Aula 207', 55),
('Aula 208', 60),
('Aula 209', 20),
('Aula 210', 70);


INSERT INTO Carreras (Nombre, descripcion) VALUES
('Ingenier�a Civil', 'Carrera de grado - Ingenieria civil'),
('Ingenier�a Inform�tica', 'Carrera de grado - Ingenieria en informatica'),
('Medicina', 'Carrera de grado - Medico'),
('Derecho', 'Carrera de grado - Abogacia'),
('Psicolog�a', 'Carrera de grado - Licenciatura en Psicologia'),
('Administraci�n de Empresas', 'Carrera de grado - Licenciatura en Administracion de empresas'),
('Contabilidad', 'Carrera de grado - Contador Publico'),
('Arquitectura', 'Carrera de grado - Arquitectura'),
('Dise�o Gr�fico', 'Carrera de grado - Licenciatura en Dise�o Grafico'),
('Comunicaci�n Social', 'Carrera de grado - Licenciatura en Comunicaci�n Social'),
('Relaciones Internacionales', 'Carrera de grado - Licenciatura en Relaciones Internacionales'),
('Educaci�n', 'Carrera de grado - Licenciatura en Educacion'),
('Biolog�a', 'Carrera de grado - Licenciatura en Biologia molecular'),
('Qu�mica', 'Carrera de grado - Licenciatura en Quimica organica'),
('F�sica', 'Carrera de grado - Licenciatura en Fisica'),
('Matem�ticas', 'Carrera de grado - Profesorado de Matematicas'),
('Filosof�a', 'Carrera de grado - Licenciatura en Filosofia'),
('Historia', 'Carrera de grado - Profesorador en Historia'),
('Geograf�a','Carrera de grado - Profesorador en Geografia'),
('Literatura', 'Carrera de grado - Profesorador en Literatura')

INSERT INTO Profesores (Nombre, Apellido, email, FechaNacimiento, Sexo) VALUES
('Pablo', 'Fern�ndez', 'pablo.fernandez@universidad.edu', '1990-12-03', 'M'),
('Sof�a', 'Gonz�lez', 'sofia.gonzalez@universidad.edu', '1985-12-02', 'F'),
('Mart�n', 'P�rez', 'martin.perez@universidad.edu', '1978-04-08', 'M'),
('Luc�a', 'L�pez', 'lucia.lopez@universidad.edu', '1978-03-06', 'F'),
('Carlos', 'Garc�a', 'carlos.garcia@universidad.edu', '1968-11-07', 'M'),
('Valentina', 'Mart�nez', 'valentina.martinez@universidad.edu', '1999-02-07', 'F'),
('Francisco', 'Rodr�guez', 'francisco.rodriguez@universidad.edu', '2000-01-11', 'M'),
('Marta', 'S�nchez', 'marta.sanchez@universidad.edu', '1993-11-11', 'F'),
('Diego', 'Ram�rez', 'diego.ramirez@universidad.edu', '1987-09-08', 'M'),
('Julia', 'Torres', 'julia.torres@universidad.edu', '1965-10-07', 'F'),
('Andr�s', 'Romero',  'andres.romero@universidad.edu', '1991-12-10', 'M'),
('Camila', 'D�az', 'camila.diaz@universidad.edu', '1998-12-12', 'F'),
('Pedro', 'Vega', 'pedro.vega@universidad.edu', '2001-11-05' , 'M'),
('Carolina', 'Ortiz', 'carolina.ortiz@universidad.edu', '1992-10-06' , 'F'),
('Gabriel', 'G�mez', 'gabriel.gomez@universidad.edu', '1975-02-05' , 'M'),
('Mariana', 'Ruiz', 'mariana.ruiz@universidad.edu', '1988-06-12' , 'F'),
('Nicol�s', '�lvarez', 'nicolas.alvarez@universidad.edu', '2005-05-05', 'M'),
('Laura', 'Ben�tez', 'laura.benitez@universidad.edu', '1985-04-11' , 'F'),
('Javier', 'Mu�oz', 'javier.munoz@universidad.edu', '1965-09-19', 'M'),
('Gloria', 'Navarro', 'gloria.navarro@universidad.edu', '1991-05-12', 'F');

INSERT INTO Estudiantes (nombre, apellido, email, FechaNacimiento, Sexo) VALUES
('Juan Manuel', 'Aguilar', 'juan.manuel.aguilar@gmail.com', '1988-05-12', 'M'),
('Mar�a', 'L�pez', 'maria.lopez@yahoo.com', '1991-08-22', 'F'),
('Carlos', 'Garc�a', 'carlos.garcia@hotmail.com', '1992-03-10', 'M'),
('Luc�a', 'Mart�nez', 'lucia.martinez@gmail.com', '1993-11-25', 'F'),
('Pablo', 'Gonz�lez', 'pablo.gonzalez@yahoo.com', '1994-01-14', 'M'),
('Sof�a', 'Rodr�guez', 'sofia.rodriguez@hotmail.com', '1995-06-30', 'F'),
('Mart�n', 'Fern�ndez', 'martin.fernandez@gmail.com', '1996-09-17', 'M'),
('Ana', 'G�mez', 'ana.gomez@yahoo.com', '1997-12-05', 'F'),
('Miguel', 'D�az', 'miguel.diaz@hotmail.com', '1998-04-22', 'M'),
('Laura', 'S�nchez', 'laura.sanchez@gmail.com', '1999-07-10', 'F'),
('David', 'Ram�rez', 'david.ramirez@yahoo.com', '2000-10-03', 'M'),
('Elena', 'Torres', 'elena.torres@hotmail.com', '2001-02-19', 'F'),
('Diego', 'Vargas', 'diego.vargas@gmail.com', '1990-06-15', 'M'),
('Marta', 'Castro', 'marta.castro@yahoo.com', '1991-09-27', 'F'),
('Luis', 'Reyes', 'luis.reyes@hotmail.com', '1992-12-09', 'M'),
('Patricia', 'Ruiz', 'patricia.ruiz@gmail.com', '1993-03-21', 'F'),
('Javier', 'Romero', 'javier.romero@yahoo.com', '1994-07-30', 'M'),
('Ver�nica', 'Ortiz', 'veronica.ortiz@hotmail.com', '1995-10-18', 'F'),
('Ricardo', 'N��ez', 'ricardo.nunez@gmail.com', '1996-01-05', 'M'),
('Sandra', 'Iglesias', 'sandra.iglesias@yahoo.com', '1997-04-14', 'F');


INSERT INTO Materias (Nombre, Descripcion)
VALUES 
('Matem�ticas I', 'Introducci�n a los conceptos b�sicos de �lgebra y geometr�a.'),
('F�sica I', 'Estudio de los principios fundamentales de la mec�nica y la termodin�mica.'),
('Qu�mica General', 'Conceptos b�sicos de qu�mica inorg�nica y org�nica.'),
('Biolog�a General', 'Introducci�n a la biolog�a celular y molecular.'),
('Historia Universal', 'Estudio de los eventos hist�ricos m�s relevantes desde la antig�edad hasta la era moderna.'),
('Literatura Universal', 'An�lisis de obras literarias representativas de distintas �pocas y culturas.'),
('Programaci�n I', 'Introducci�n a los conceptos b�sicos de programaci�n y algoritmos.'),
('Econom�a', 'Estudio de los principios econ�micos b�sicos y su aplicaci�n.'),
('Psicolog�a General', 'Introducci�n a las teor�as y pr�cticas fundamentales de la psicolog�a.'),
('Sociolog�a', 'Estudio de la estructura y din�mica de la sociedad humana.'),
('Filosof�a', 'Introducci�n a los principales conceptos y problemas filos�ficos.'),
('Derecho Constitucional', 'Estudio de los principios y estructuras del derecho constitucional.'),
('Estad�stica I', 'Introducci�n a los m�todos estad�sticos y su aplicaci�n.'),
('Qu�mica Org�nica', 'Estudio de las estructuras, propiedades y reacciones de los compuestos org�nicos.'),
('F�sica II', 'Continuaci�n del estudio de la f�sica, enfoc�ndose en electricidad y magnetismo.'),
('Matem�ticas II', 'Estudio avanzado de �lgebra, c�lculo diferencial e integral.'),
('Ingenier�a de Software', 'Conceptos y pr�cticas para el desarrollo de software a gran escala.'),
('Microeconom�a', 'An�lisis de las decisiones individuales de consumidores y empresas.'),
('Macroeconom�a', 'Estudio de los sistemas econ�micos a nivel global y nacional.'),
('Arte y Cultura', 'Exploraci�n de las manifestaciones art�sticas y culturales a trav�s del tiempo.');

-- Inserci�n de datos en la tabla Examenes
INSERT INTO Examenes (nombre, descripcion, fecha, id_examen_materia)
VALUES
('PARCIAL', 'Primer parcial del curso', '2024-07-01', 1),
('FINAL', 'Examen final del curso', '2023-07-15', 2),
('RECUPERATORIO', 'Recuperatorio del primer parcial', '2023-07-08', 3),
('PARCIAL', 'Segundo parcial del curso', '2023-08-01', 4),
('FINAL', 'Examen final del curso', '2023-08-15', 5),
('RECUPERATORIO', 'Recuperatorio del segundo parcial', '2023-08-08', 6),
('PARCIAL', 'Primer parcial del curso', '2023-09-01', 7),
('FINAL', 'Examen final del curso', '2023-09-15', 8),
('RECUPERATORIO', 'Recuperatorio del primer parcial', '2023-09-08', 9),
('PARCIAL', 'Segundo parcial del curso', '2023-10-01', 10);

INSERT INTO Calificaciones (Estado)
VALUES
('APROBADO'),
('DESAPROBADO'),
('RINDE FINAL'),
('RECURSA')

-- Inserci�n de datos en la tabla Calificaciones_Alumnos
INSERT INTO Calificaciones_Alumnos (id_legajo, Nota, id_examen, id_estado)
VALUES
(1000, 8, 11, 1),
(1001, 7, 12, 1),
(1002, 5, 13, 1),
(1003, 3, 14, 2),
(1004, 10, 15, 1),
(1005, 2, 16, 2),
(1006, 6, 17, 1),
(1007, 9, 18, 1),
(1008, 4, 19, 1),
(1009, 7, 13, 1),
(1010, 5, 16, 1),
(1011, 8, 15, 1),
(1012, 3, 13, 2),
(1013, 6, 11, 1),
(1014, 2, 12, 2),
(1015, 9, 13, 1),
(1016, 4, 11, 1),
(1017, 1, 11, 2),
(1018, 7, 16, 1),
(1019, 10, 15, 1);

-- Inserci�n de inscripciones de estudiantes en carreras
INSERT INTO Inscripciones (id_alumno, id_carrera, id_admin) VALUES
(21, 1, 42),  -- Juan Manuel Aguilar - Ingenier�a Civil
(22, 2, 43),  -- Mar�a L�pez - Ingenier�a Inform�tica
(23, 3, 41),  -- Carlos Garc�a - Medicina
(24, 4, 42),  -- Luc�a Mart�nez - Derecho
(25, 5, 43),  -- Pablo Gonz�lez - Psicolog�a
(26, 6, 41),  -- Sof�a Rodr�guez - Administraci�n de Empresas
(27, 7, 42),  -- Mart�n Fern�ndez - Contabilidad
(28, 8, 43),  -- Ana G�mez - Arquitectura
(29, 9, 41),  -- Miguel D�az - Dise�o Gr�fico
(30, 10, 42), -- Laura S�nchez - Comunicaci�n Social
(31, 11, 43), -- David Ram�rez - Relaciones Internacionales
(32, 12, 41), -- Elena Torres - Educaci�n
(33, 13, 42), -- Diego Vargas - Biolog�a
(34, 14, 43), -- Marta Castro - Qu�mica
(35, 15, 41), -- Luis Reyes - F�sica
(36, 16, 42), -- Patricia Ruiz - Matem�ticas
(37, 17, 43), -- Javier Romero - Filosof�a
(38, 18, 41), -- Ver�nica Ortiz - Historia
(39, 19, 42), -- Ricardo N��ez - Geograf�a
(40, 20, 43); -- Sandra Iglesias - Literatura
GO