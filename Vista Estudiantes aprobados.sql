USE Gestion_Universitaria;
GO

-- Crear la vista para mostrar los estudiantes con notas mayores o iguales a 4
CREATE VIEW Vista_Estudiantes_Aprobados 
AS
SELECT 
	CA.Nota,
    L.id As Legajo,
    E.nombre AS Nombre,
    E.apellido AS Apellido,
    EX.nombre AS Examen,
    EX.fecha AS Fecha,
    M.Nombre AS Materia
FROM 
    [Calificaciones_Alumnos] CA 
	join
	[Legajos] L on L.id = CA.id_legajo 
	join 
	[Estudiantes] E on E.id = L.id_alumno 
	join
	[Examenes] EX on EX.id = CA.id_examen 
	join
	[Materias] M on M.id = EX.id_examen_materia WHERE CA.Nota >= 6;

GO



Select * FROM Vista_Estudiantes_Aprobados;
