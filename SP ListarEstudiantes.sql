USE [Gestion_Universitaria]
GO

CREATE PROCEDURE ListarEstudiantes
AS
BEGIN
    SELECT nombre, apellido FROM Estudiantes
END;



