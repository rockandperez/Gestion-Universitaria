USE Gestion_Universitaria;
GO
-- Crear el trigger para insertar un nuevo registro en Legajos después de insertar en Estudiantes
CREATE TRIGGER trg_InsertarLegajo
ON Estudiantes
AFTER INSERT
AS
BEGIN
    -- Insertar un nuevo registro en la tabla Legajos
    INSERT INTO Legajos (id_alumno)
    SELECT id
    FROM inserted;
END;

