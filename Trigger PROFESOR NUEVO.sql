USE Gestion_Universitaria;
GO

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


