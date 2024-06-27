use master;
GO

CREATE DATABASE Gestion_Universitaria;
GO

USE Gestion_Universitaria;
GO

CREATE TABLE [Estudiantes] (
  [id] int IDENTITY (1,1) PRIMARY KEY,
  [nombre] nvarchar(255),
  [apellido] nvarchar(255),
  [email] nvarchar(255),
  [FechaNacimiento] date,
  [Sexo] char(1)
)
GO

CREATE TABLE [Profesores] (
  [id] int IDENTITY (1,1) PRIMARY KEY,
  [nombre] nvarchar(255),
  [apellido] nvarchar(255),
  [email] nvarchar(255),
  [FechaNacimiento] date,
  [Sexo] char(1)
)
GO

CREATE TABLE [Administrativos] (
  [id] int IDENTITY (1,1) PRIMARY KEY,
  [nombre] nvarchar(255),
  [apellido] nvarchar(255),
  [email] nvarchar(255),
  [FechaNacimiento] date,
  [Sexo] char(1),
  [telefono] nvarchar(255)
)
GO

CREATE TABLE [Materias] (
  [id] int IDENTITY (1,1) PRIMARY KEY,
  [Nombre] nvarchar(255),
  [descripcion] nvarchar(255)
)
GO

CREATE TABLE [Profesor_Materia] (
  [id] int IDENTITY (1,1) PRIMARY KEY,
  [id_profesor] int,
  [id_materia] int
)
GO

CREATE TABLE [Legajos] (
  [id] bigint IDENTITY (1000,1) PRIMARY KEY,
  [id_alumno] int,
  [id_carrera] int
)
GO

CREATE TABLE [Carreras] (
  [id] int IDENTITY (1,1) PRIMARY KEY,
  [nombre] nvarchar(255),
  [descripcion] nvarchar(255)
)
GO

CREATE TABLE [Inscripciones] (
  [id] int IDENTITY (1,1) PRIMARY KEY,
  [id_alumno] int,
  [id_carrera] int,
  [id_admin] int
)
GO

CREATE TABLE [Inscripciones_Asignaturas] (
  [id_Inscripcion] int,
  [id_asignatura] int,
  [id_alumno] int
)
GO

CREATE TABLE [Aulas] (
  [id] int IDENTITY (1,1) PRIMARY KEY,
  [nombre] nvarchar(255),
  [capacidad] int
)
GO

CREATE TABLE [Aula_Cursada] (
  [id_aula] int IDENTITY (1,1) PRIMARY KEY,
  [id_profesor_materia] int
)
GO

CREATE TABLE [Turnos] (
  [id] int IDENTITY (1,1) PRIMARY KEY,
  [nombre] nvarchar(255),
)
GO

-- Insertar los registros de turnos
INSERT INTO Turnos (nombre) VALUES ('mañana');
INSERT INTO Turnos (nombre) VALUES ('tarde');
INSERT INTO Turnos (nombre) VALUES ('noche');
GO

CREATE TABLE [Eventos] (
  [id] int IDENTITY (1,1) PRIMARY KEY,
  [nombre] nvarchar(255),
  [descripcion] nvarchar(255),
  [fecha] datetime
)
GO

CREATE TABLE [Examenes] (
  [id] int IDENTITY (1,1) PRIMARY KEY,
  [nombre] nvarchar(255),
  [descripcion] nvarchar(255),
  [fecha] datetime
)
GO

CREATE TABLE [Calificaciones] (
  [id] int IDENTITY (1,1) PRIMARY KEY,
  [nota] int,
)
GO


ALTER TABLE [Profesor_Materia] ADD FOREIGN KEY ([id_profesor]) REFERENCES [Profesores] ([id])
GO

ALTER TABLE [Profesor_Materia] ADD FOREIGN KEY ([id_materia]) REFERENCES [Materias] ([id])
GO

ALTER TABLE [Legajos] ADD FOREIGN KEY ([id_alumno]) REFERENCES [Estudiantes] ([id])
GO

ALTER TABLE [Legajos] ADD FOREIGN KEY ([id_carrera]) REFERENCES [Carreras] ([id])
GO

ALTER TABLE [Inscripciones] ADD FOREIGN KEY ([id_alumno]) REFERENCES [Estudiantes] ([id])
GO

ALTER TABLE [Inscripciones] ADD FOREIGN KEY ([id_carrera]) REFERENCES [Carreras] ([id])
GO

ALTER TABLE [Inscripciones] ADD FOREIGN KEY ([id_admin]) REFERENCES [Administrativos] ([id])
GO

ALTER TABLE [Inscripciones_Asignaturas] ADD FOREIGN KEY ([id_Inscripcion]) REFERENCES [Inscripciones] ([id])
GO

ALTER TABLE [Inscripciones_Asignaturas] ADD FOREIGN KEY ([id_asignatura]) REFERENCES [Materias] ([id])
GO

ALTER TABLE [Inscripciones_Asignaturas] ADD FOREIGN KEY ([id_alumno]) REFERENCES [Estudiantes] ([id])
GO

ALTER TABLE [Administrativos] ADD clave AS 'adm' + RIGHT('00' + CAST(id AS NVARCHAR(10)), 2) PERSISTED;
GO

