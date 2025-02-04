USE [Gestion_Universitaria];
GO

ALTER PROCEDURE CalificarAlumno
	@IDLEGAJO bigint,
	@NOTA INT,
	@IDEXAMEN INT,
	@ESTADO INT
AS
BEGIN
	IF (@NOTA >= 4)
		BEGIN 
			SELECT @ESTADO = id from Calificaciones WHERE Estado LIKE '%APROBADO%';
		END
	ELSE
		BEGIN
			SELECT @ESTADO = id from Calificaciones WHERE Estado LIKE '%DESAPROBADO%';
		END

	IF EXISTS (SELECT ID FROM Legajos WHERE id = @IDLEGAJO)
		BEGIN
			IF EXISTS (SELECT ID FROM Examenes WHERE id = @IDEXAMEN)
				BEGIN
					INSERT INTO Calificaciones_Alumnos VALUES (@IDLEGAJO, @NOTA, @IDEXAMEN, @ESTADO)
				END
			ELSE
				BEGIN
					PRINT('NO EXISTE EL ID DEL EXAMEN')
				END
		END
	ELSE
	BEGIN
		PRINT ('NO EXISTE EL LEGAJO')
	END
END