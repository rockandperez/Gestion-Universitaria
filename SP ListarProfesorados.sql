USE [Gestion_Universitaria]
GO
CREATE PROCEDURE ListarProfesorados
AS
BEGIN
    SELECT nombre, descripcion
    FROM Carreras
    WHERE descripcion LIKE '%Profesorado%';
END;

EXEC ListarProfesorados