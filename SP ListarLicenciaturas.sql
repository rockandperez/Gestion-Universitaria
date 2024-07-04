USE [Gestion_Universitaria];
GO

CREATE PROCEDURE ListarLicenciaturas
AS
BEGIN
    SELECT nombre, descripcion
    FROM Carreras
    WHERE descripcion LIKE '%Licenciatura%';
END;


EXECUTE ListarLicenciaturas
