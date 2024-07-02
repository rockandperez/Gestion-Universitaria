USE Gestion_Universitaria

GO
--Administradores, Aulas, Estudiantes, Profesores, Materias, Carreras


INSERT INTO Administrativos (Nombre, Apellido, Telefono, Email, FechaNacimiento, Sexo)
VALUES 
('Juan', 'Pérez', '011-1234-5678', 'juan.perez@gmail.com', '1970-03-14', 'M'),
('María', 'López', '011-2345-6789', 'maria.lopez@hotmail.com', '1980-07-22', 'F'),
('Carlos', 'García', '011-3456-7890', 'carlos.garcia@yahoo.com', '1965-01-05', 'M'),
('Laura', 'Martínez', '011-4567-8901', 'laura.martinez@gmail.com', '1990-11-30', 'F'),
('Alejandro', 'Rodríguez', '011-5678-9012', 'alejandro.rodriguez@hotmail.com', '1985-08-19', 'M'),
('Ana', 'Sánchez', '011-6789-0123', 'ana.sanchez@yahoo.com', '1995-02-27', 'F'),
('Luis', 'Hernández', '011-7890-1234', 'luis.hernandez@gmail.com', '1968-12-12', 'M'),
('Sofía', 'Díaz', '011-8901-2345', 'sofia.diaz@hotmail.com', '1992-04-18', 'F'),
('Pablo', 'Torres', '011-9012-3456', 'pablo.torres@yahoo.com', '1982-09-09', 'M'),
('Marta', 'González', '011-0123-4567', 'marta.gonzalez@gmail.com', '1975-06-25', 'F'),
('David', 'Romero', '011-1234-5678', 'david.romero@hotmail.com', '1987-03-03', 'M'),
('Elena', 'García', '011-2345-6789', 'elena.garcia@yahoo.com', '1972-07-17', 'F'),
('Javier', 'Ruiz', '011-3456-7890', 'javier.ruiz@gmail.com', '1998-01-23', 'M'),
('Laura', 'López', '011-4567-8901', 'laura.lopez@hotmail.com', '1962-10-10', 'F'),
('María', 'Martín', '011-5678-9012', 'maria.martin@yahoo.com', '1978-05-04', 'F'),
('Carlos', 'Sánchez', '011-6789-0123', 'carlos.sanchez@gmail.com', '1967-12-01', 'M'),
('Andrea', 'Pérez', '011-7890-1234', 'andrea.perez@hotmail.com', '1993-11-05', 'F'),
('Juan', 'Díaz', '011-8901-2345', 'juan.diaz@yahoo.com', '1981-03-22', 'M'),
('Elena', 'Torres', '011-9012-3456', 'elena.torres@gmail.com', '1999-08-30', 'F'),
('Luisa', 'González', '011-0123-4567', 'luisa.gonzalez@hotmail.com', '1964-05-15', 'F');



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
('Ingeniería Civil', 'Carrera de grado - Ingenieria civil'),
('Ingeniería Informática', 'Carrera de grado - Ingenieria en informatica'),
('Medicina', 'Carrera de grado - Medico'),
('Derecho', 'Carrera de grado - Abogacia'),
('Psicología', 'Carrera de grado - Licenciatura en Psicologia'),
('Administración de Empresas', 'Carrera de grado - Licenciatura en Administracion de empresas'),
('Contabilidad', 'Carrera de grado - Contador Publico'),
('Arquitectura', 'Carrera de grado - Arquitectura'),
('Diseño Gráfico', 'Carrera de grado - Licenciatura en Diseño Grafico'),
('Comunicación Social', 'Carrera de grado - Licenciatura en Comunicación Social'),
('Relaciones Internacionales', 'Carrera de grado - Licenciatura en Relaciones Internacionales'),
('Educación', 'Carrera de grado - Licenciatura en Educacion'),
('Biología', 'Carrera de grado - Licenciatura en Biologia molecular'),
('Química', 'Carrera de grado - Licenciatura en Quimica organica'),
('Física', 'Carrera de grado - Licenciatura en Fisica'),
('Matemáticas', 'Carrera de grado - Profesorado de Matematicas'),
('Filosofía', 'Carrera de grado - Licenciatura en Filosofia'),
('Historia', 'Carrera de grado - Profesorador en Historia'),
('Geografía','Carrera de grado - Profesorador en Geografia'),
('Literatura', 'Carrera de grado - Profesorador en Literatura')

INSERT INTO Profesores (Nombre, Apellido, email, FechaNacimiento, Sexo) VALUES
('Pablo', 'Fernández', 'pablo.fernandez@universidad.edu', '1990-12-03', 'M'),
('Sofía', 'González', 'sofia.gonzalez@universidad.edu', '1985-12-02', 'F'),
('Martín', 'Pérez', 'martin.perez@universidad.edu', '1978-04-08', 'M'),
('Lucía', 'López', 'lucia.lopez@universidad.edu', '1978-03-06', 'F'),
('Carlos', 'García', 'carlos.garcia@universidad.edu', '1968-11-07', 'M'),
('Valentina', 'Martínez', 'valentina.martinez@universidad.edu', '1999-02-07', 'F'),
('Francisco', 'Rodríguez', 'francisco.rodriguez@universidad.edu', '2000-01-11', 'M'),
('Marta', 'Sánchez', 'marta.sanchez@universidad.edu', '1993-11-11', 'F'),
('Diego', 'Ramírez', 'diego.ramirez@universidad.edu', '1987-09-08', 'M'),
('Julia', 'Torres', 'julia.torres@universidad.edu', '1965-10-07', 'F'),
('Andrés', 'Romero',  'andres.romero@universidad.edu', '1991-12-10', 'M'),
('Camila', 'Díaz', 'camila.diaz@universidad.edu', '1998-12-12', 'F'),
('Pedro', 'Vega', 'pedro.vega@universidad.edu', '2001-11-05' , 'M'),
('Carolina', 'Ortiz', 'carolina.ortiz@universidad.edu', '1992-10-06' , 'F'),
('Gabriel', 'Gómez', 'gabriel.gomez@universidad.edu', '1975-02-05' , 'M'),
('Mariana', 'Ruiz', 'mariana.ruiz@universidad.edu', '1988-06-12' , 'F'),
('Nicolás', 'Álvarez', 'nicolas.alvarez@universidad.edu', '2005-05-05', 'M'),
('Laura', 'Benítez', 'laura.benitez@universidad.edu', '1985-04-11' , 'F'),
('Javier', 'Muñoz', 'javier.munoz@universidad.edu', '1965-09-19', 'M'),
('Gloria', 'Navarro', 'gloria.navarro@universidad.edu', '1991-05-12', 'F');

INSERT INTO Estudiantes (nombre, apellido, email, FechaNacimiento, Sexo) VALUES
('Juan Manuel', 'Aguilar', 'juan.manuel.aguilar@gmail.com', '1988-05-12', 'M'),
('María', 'López', 'maria.lopez@yahoo.com', '1991-08-22', 'F'),
('Carlos', 'García', 'carlos.garcia@hotmail.com', '1992-03-10', 'M'),
('Lucía', 'Martínez', 'lucia.martinez@gmail.com', '1993-11-25', 'F'),
('Pablo', 'González', 'pablo.gonzalez@yahoo.com', '1994-01-14', 'M'),
('Sofía', 'Rodríguez', 'sofia.rodriguez@hotmail.com', '1995-06-30', 'F'),
('Martín', 'Fernández', 'martin.fernandez@gmail.com', '1996-09-17', 'M'),
('Ana', 'Gómez', 'ana.gomez@yahoo.com', '1997-12-05', 'F'),
('Miguel', 'Díaz', 'miguel.diaz@hotmail.com', '1998-04-22', 'M'),
('Laura', 'Sánchez', 'laura.sanchez@gmail.com', '1999-07-10', 'F'),
('David', 'Ramírez', 'david.ramirez@yahoo.com', '2000-10-03', 'M'),
('Elena', 'Torres', 'elena.torres@hotmail.com', '2001-02-19', 'F'),
('Diego', 'Vargas', 'diego.vargas@gmail.com', '1990-06-15', 'M'),
('Marta', 'Castro', 'marta.castro@yahoo.com', '1991-09-27', 'F'),
('Luis', 'Reyes', 'luis.reyes@hotmail.com', '1992-12-09', 'M'),
('Patricia', 'Ruiz', 'patricia.ruiz@gmail.com', '1993-03-21', 'F'),
('Javier', 'Romero', 'javier.romero@yahoo.com', '1994-07-30', 'M'),
('Verónica', 'Ortiz', 'veronica.ortiz@hotmail.com', '1995-10-18', 'F'),
('Ricardo', 'Núñez', 'ricardo.nunez@gmail.com', '1996-01-05', 'M'),
('Sandra', 'Iglesias', 'sandra.iglesias@yahoo.com', '1997-04-14', 'F');


INSERT INTO Materias (Nombre, Descripcion)
VALUES 
('Matemáticas I', 'Introducción a los conceptos básicos de álgebra y geometría.'),
('Física I', 'Estudio de los principios fundamentales de la mecánica y la termodinámica.'),
('Química General', 'Conceptos básicos de química inorgánica y orgánica.'),
('Biología General', 'Introducción a la biología celular y molecular.'),
('Historia Universal', 'Estudio de los eventos históricos más relevantes desde la antigüedad hasta la era moderna.'),
('Literatura Universal', 'Análisis de obras literarias representativas de distintas épocas y culturas.'),
('Programación I', 'Introducción a los conceptos básicos de programación y algoritmos.'),
('Economía', 'Estudio de los principios económicos básicos y su aplicación.'),
('Psicología General', 'Introducción a las teorías y prácticas fundamentales de la psicología.'),
('Sociología', 'Estudio de la estructura y dinámica de la sociedad humana.'),
('Filosofía', 'Introducción a los principales conceptos y problemas filosóficos.'),
('Derecho Constitucional', 'Estudio de los principios y estructuras del derecho constitucional.'),
('Estadística I', 'Introducción a los métodos estadísticos y su aplicación.'),
('Química Orgánica', 'Estudio de las estructuras, propiedades y reacciones de los compuestos orgánicos.'),
('Física II', 'Continuación del estudio de la física, enfocándose en electricidad y magnetismo.'),
('Matemáticas II', 'Estudio avanzado de álgebra, cálculo diferencial e integral.'),
('Ingeniería de Software', 'Conceptos y prácticas para el desarrollo de software a gran escala.'),
('Microeconomía', 'Análisis de las decisiones individuales de consumidores y empresas.'),
('Macroeconomía', 'Estudio de los sistemas económicos a nivel global y nacional.'),
('Arte y Cultura', 'Exploración de las manifestaciones artísticas y culturales a través del tiempo.');

-- Inserción de datos en la tabla Examenes
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

-- Inserción de datos en la tabla Calificaciones_Alumnos
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

-- Inserción de inscripciones de estudiantes en carreras
INSERT INTO Inscripciones (id_alumno, id_carrera, id_admin) VALUES
(21, 1, 42),  -- Juan Manuel Aguilar - Ingeniería Civil
(22, 2, 43),  -- María López - Ingeniería Informática
(23, 3, 41),  -- Carlos García - Medicina
(24, 4, 42),  -- Lucía Martínez - Derecho
(25, 5, 43),  -- Pablo González - Psicología
(26, 6, 41),  -- Sofía Rodríguez - Administración de Empresas
(27, 7, 42),  -- Martín Fernández - Contabilidad
(28, 8, 43),  -- Ana Gómez - Arquitectura
(29, 9, 41),  -- Miguel Díaz - Diseño Gráfico
(30, 10, 42), -- Laura Sánchez - Comunicación Social
(31, 11, 43), -- David Ramírez - Relaciones Internacionales
(32, 12, 41), -- Elena Torres - Educación
(33, 13, 42), -- Diego Vargas - Biología
(34, 14, 43), -- Marta Castro - Química
(35, 15, 41), -- Luis Reyes - Física
(36, 16, 42), -- Patricia Ruiz - Matemáticas
(37, 17, 43), -- Javier Romero - Filosofía
(38, 18, 41), -- Verónica Ortiz - Historia
(39, 19, 42), -- Ricardo Núñez - Geografía
(40, 20, 43); -- Sandra Iglesias - Literatura
GO