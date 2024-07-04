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
  [telefono] nvarchar(255),
  [clave] nvarchar (10)
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
  [id_legajo] bigint
)
GO

CREATE TABLE [Aulas] (
  [id] int IDENTITY (1,1) PRIMARY KEY,
  [nombre] nvarchar(255),
  [capacidad] int
);
GO

create table [Aulas_Disponibilidad](
	id_aula int not null,
	id_evento int null,
	id_Profesor_Materia int null,
	disponible bit
);
GO

CREATE TABLE [Eventos] (
  [id] int IDENTITY (1,1) PRIMARY KEY,
  [nombre] nvarchar(255),
  [descripcion] nvarchar(255),
  [fecha] datetime
);
GO

CREATE TABLE [Examenes] (
  [id] int IDENTITY (1,1) PRIMARY KEY,
  [nombre] nvarchar(255),
  [descripcion] nvarchar(255),
  [fecha] date,
  [id_examen_materia] int not null
);
GO

CREATE TABLE [Calificaciones] (
  [id] int IDENTITY (1,1) PRIMARY KEY,
  [Estado] varchar(20),
);
GO

Create Table [Calificaciones_Alumnos](
	id_legajo bigint not null,
	Nota int not null,
	id_examen int not null,
	id_estado int not null
);
GO

ALTER TABLE [Profesor_Materia] ADD FOREIGN KEY ([id_profesor]) REFERENCES [Profesores] ([id]);
GO

ALTER TABLE [Profesor_Materia] ADD FOREIGN KEY ([id_materia]) REFERENCES [Materias] ([id]);
GO

ALTER TABLE [Legajos] ADD FOREIGN KEY ([id_alumno]) REFERENCES [Estudiantes] ([id]);
GO

ALTER TABLE [Legajos] ADD FOREIGN KEY ([id_carrera]) REFERENCES [Carreras] ([id]);
GO

ALTER TABLE [Inscripciones] ADD FOREIGN KEY ([id_alumno]) REFERENCES [Estudiantes] ([id]);
GO

ALTER TABLE [Inscripciones] ADD FOREIGN KEY ([id_carrera]) REFERENCES [Carreras] ([id]);
GO

ALTER TABLE [Inscripciones] ADD FOREIGN KEY ([id_admin]) REFERENCES [Administrativos] ([id]);
GO

ALTER TABLE [Inscripciones_Asignaturas] ADD FOREIGN KEY ([id_Inscripcion]) REFERENCES [Inscripciones] ([id]);
GO

ALTER TABLE [Inscripciones_Asignaturas] ADD FOREIGN KEY ([id_asignatura]) REFERENCES [Materias] ([id]);
GO

ALTER TABLE [Inscripciones_Asignaturas] ADD FOREIGN KEY ([id_legajo]) REFERENCES [Legajos] ([id]);
GO

ALTER Table [Examenes] ADD FOREIGN KEY ([id_examen_materia]) REFERENCES [Materias] ([id]);
GO

ALTER TABLE [Aulas_Disponibilidad] ADD FOREIGN KEY ([id_evento]) REFERENCES [Eventos] ([id]);
GO

ALTER TABLE [Aulas_Disponibilidad] ADD FOREIGN KEY ([id_aula]) REFERENCES [Aulas] ([id]);
GO

ALTER TABLE [Aulas_Disponibilidad] ADD FOREIGN KEY ([id_Profesor_materia]) REFERENCES [Profesor_Materia] ([id]);
GO

ALTER TABLE [Calificaciones_Alumnos] ADD FOREIGN KEY ([id_legajo]) REFERENCES [Legajos] ([id]);
GO

ALTER TABLE [Calificaciones_Alumnos] ADD FOREIGN KEY ([id_examen]) REFERENCES [Examenes] ([id]);
GO

ALTER TABLE [Calificaciones_Alumnos] ADD FOREIGN KEY ([id_estado]) REFERENCES [Calificaciones] ([id]);
GO

