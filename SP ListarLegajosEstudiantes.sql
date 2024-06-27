USE [Gestion_Universitaria]
GO

CREATE PROCEDURE ListarLegajosEstudiantes
AS
BEGIN
    -- Consulta para listar estudiantes con su número de legajo
SELECT E.nombre, E.apellido, E.email, L.id_alumno AS 'Numero de Legajo'
    FROM Estudiantes E
    INNER JOIN Legajos L ON E.id = L.id_alumno
    ORDER BY L.id_alumno ASC; -- Ordenar por número de legajo en orden ascendente
END;

EXECUTE ListarLegajosEstudiantes

