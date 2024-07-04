USE Gestion_Universitaria;
GO

CREATE TRIGGER trg_AsignarAulaDisponible
ON [Profesor_Materia]
AFTER UPDATE
AS
BEGIN
	DECLARE @ID_PROFESOR_MATERIA INT;
	DECLARE @ID_AULA INT;

	SELECT @ID_PROFESOR_MATERIA = inserted.id FROM inserted

	SELECT TOP 1 @ID_AULA = A.id FROM Aulas A 
	join Aulas_Disponibilidad AD on A.id = AD.id_aula
	WHERE AD.disponible != 0; 

	IF (@ID_AULA IS NOT NULL)
		BEGIN
			UPDATE Aulas_Disponibilidad
			SET disponible = 0, id_evento = 1, id_Profesor_Materia = @ID_PROFESOR_MATERIA
			WHERE id_aula = @ID_AULA;
		END
	ELSE
		BEGIN
			PRINT('NO EXISTE UN AULA DISPONIBLE')
		END
END
