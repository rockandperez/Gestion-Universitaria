USE [Gestion_Universitaria];
GO

CREATE PROCEDURE ListarLegajosEstudiantes
AS
BEGIN
SELECT
    E.id AS id_alumno,
    E.nombre,
    E.apellido,
    L.id AS 'Legajo N°'
FROM
    Estudiantes E
    INNER JOIN Legajos L ON E.id = L.id_alumno
ORDER BY
    L.id;
END;

EXECUTE ListarLegajosEstudiantes

