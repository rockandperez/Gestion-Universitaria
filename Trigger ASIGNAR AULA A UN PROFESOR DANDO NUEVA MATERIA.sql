USE Gestion_Universitaria;
GO

-- Se ejecuta cuando se asigna una materia a un profesor.
CREATE TRIGGER trg_AsignarAulaDisponible
ON [Profesor_Materia]
AFTER UPDATE
AS
BEGIN
	DECLARE @ID_PROFESOR_MATERIA INT;
	DECLARE @ID_AULA INT;
	
	-- Busco el id del profesor al que le asignaron la materia nueva
	SELECT @ID_PROFESOR_MATERIA = inserted.id FROM inserted

	-- Busco el id de la primera aula disponible
	SELECT TOP 1 @ID_AULA = A.id FROM Aulas A 
	join Aulas_Disponibilidad AD on A.id = AD.id_aula
	WHERE AD.disponible != 0; 

	-- Verfico si se selecciono un id de aula
	IF (@ID_AULA IS NOT NULL)
		BEGIN
			-- asigno el profesor y el evento (Cursada) y modifico la disponibilidad a 0 (OCUPADA)
			UPDATE Aulas_Disponibilidad
			SET disponible = 0, id_evento = 1, id_Profesor_Materia = @ID_PROFESOR_MATERIA
			WHERE id_aula = @ID_AULA;
		END
	ELSE
		BEGIN
			-- Informo que no existen aulas disponibles
			PRINT('NO HAY AULAS DISPONIBLES')
		END
END
