-- Crear la vista para mostrar los estudiantes con notas mayores o iguales a 4
CREATE VIEW Vista_Estudiantes_Aprobados 
AS
SELECT 
    E.id AS Id_Estudiante,
    E.nombre AS Nombre,
    E.apellido AS Apellido,
    CA.Nota,
    EX.nombre AS Examen,
    EX.fecha AS Fecha,
    M.Nombre AS Materia
FROM 
    Estudiantes E
INNER JOIN 
    Legajos L ON E.id = L.id_alumno
INNER JOIN 
    Calificaciones_Alumnos CA ON L.id = CA.id_legajo
INNER JOIN 
    Examenes EX ON CA.id_examen = EX.id
INNER JOIN 
    Materias M ON EX.id_examen_materia = M.id
WHERE 
    CA.Nota >= 4;
GO

-- Seleccionar datos desde la vista para verificar
SELECT * FROM Vista_Estudiantes_Aprobados
order by Apellido
GO



