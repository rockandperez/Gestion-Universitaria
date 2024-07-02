USE Gestion_Universitaria;
GO

CREATE TRIGGER trg_InsertAdministrativo
ON Administrativos
AFTER INSERT
AS
BEGIN
    -- Insertar la clave alfanumérica para el nuevo registro insertado
    UPDATE Administrativos
    SET clave = 'adm' + RIGHT('00' + CAST(inserted.id AS NVARCHAR(10)), 2)
    FROM Administrativos
    INNER JOIN inserted ON Administrativos.id = inserted.id;
END;
