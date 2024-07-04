USE Gestion_Universitaria;
GO
-- Crear el procedimiento almacenado para listar los estudiantes inscritos en una carrera específica
CREATE PROCEDURE ListarEstudiantesPorCarrera
    @NombreCarrera NVARCHAR(255)
AS
BEGIN
    SELECT 
        E.nombre AS Nombre_Estudiante,
        E.apellido AS Apellido_Estudiante,
        E.email AS Email_Estudiante,
        C.nombre AS Nombre_Carrera
    FROM 
        Estudiantes E
    INNER JOIN 
        Inscripciones I ON E.id = I.id_alumno
    INNER JOIN 
        Carreras C ON I.id_carrera = C.id
    WHERE 
        C.nombre = @NombreCarrera
    ORDER BY 
        E.apellido, E.nombre;
END;
GO

