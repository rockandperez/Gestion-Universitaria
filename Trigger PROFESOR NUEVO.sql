USE Gestion_Universitaria;
GO
-- Creo el registro en la tabla Profesor_Materia para posteriormente agregar una materia.
CREATE TRIGGER TRG_CrearRegistroProfesorNuevo
ON Profesores
AFTER INSERT
AS
BEGIN
	DECLARE @ID_PROFESOR INT
	
	SELECT @ID_PROFESOR = inserted.id FROM inserted

	INSERT INTO Profesor_Materia (id_profesor)
	VALUES (@ID_PROFESOR);
END


