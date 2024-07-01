--SELECT * FROM [Gestion_Universitaria].[dbo].[Administrativos]

-- Eliminar la columna calculada clave_alfanumerica de la tabla Inscripciones
--ALTER TABLE Administrativos
--DROP COLUMN clave_alfanumerica;


create table Aulas_Disponibilidad(
	id_aula int not null,
	id_evento int null,
	id_Profesor_Materia int null
);
GO

Create Table Calificaciones_Alumnos(
	id_legajo int not null,
	Nota int not null,
	id_examen int not null,
	id_estado int not null,
);


ALTER Table [Examenes] ADD id_examen_materia int null;
GO
ALTER Table [Examenes] ADD FOREIGN KEY ([id_examen_materia]) REFERENCES [Materias] ([id]);
GO
ALTER TABLE [Aulas_eventos] ADD FOREIGN KEY ([id_evento]) REFERENCES [Eventos] ([id]);
GO
ALTER TABLE [Aulas_eventos] ADD FOREIGN KEY ([id_aula]) REFERENCES [Aulas] ([id]);
GO
ALTER TABLE [Aulas_eventos] ADD FOREIGN KEY ([id_Profesor_materia]) REFERENCES [Profesor_Materia] ([id]);
GO
ALTER TABLE [Calificaciones_Alumnos] ADD FOREIGN KEY ([id_legajo]) REFERENCES [Legajo] ([id]);
GO
ALTER TABLE [Calificaciones_Alumnos] ADD FOREIGN KEY ([id_examen]) REFERENCES [Examenes] ([id]);
GO
ALTER TABLE [Calificaciones_Alumnos] ADD FOREIGN KEY ([id_estado]) REFERENCES [Calificaciones] ([id]);
