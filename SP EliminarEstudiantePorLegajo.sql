USE Gestion_Universitaria;
GO

-- Crear el procedimiento almacenado

CREATE PROCEDURE EliminarEstudiantePorLegajo
    @id_legajo BIGINT
AS
BEGIN
    -- Declarar variables para almacenar el id_alumno asociado al legajo
    DECLARE @id_alumno INT;

    -- Iniciar una transacción
    BEGIN TRANSACTION;

    -- Obtener el id_alumno asociado al legajo
    SELECT @id_alumno = id_alumno
    FROM Legajos
    WHERE id = @id_legajo;

    -- Verificar si el id_alumno existe
    IF @id_alumno IS NULL
    BEGIN
        -- Si no existe, deshacer la transacción y salir
        ROLLBACK TRANSACTION;
        RETURN;
    END
	    
    DELETE FROM Inscripciones WHERE id_alumno = @id_alumno; -- Eliminar las inscripciones del estudiante 
    
	DELETE FROM Inscripciones_Asignaturas WHERE id_legajo = @id_legajo; -- Eliminar las inscripciones en asignaturas del estudiante
	
    DELETE FROM Calificaciones_Alumnos WHERE id_legajo = @id_legajo;  -- Eliminar las calificaciones del estudiante

    DELETE FROM Legajos WHERE id = @id_legajo; -- Eliminar el legajo del estudiante

    DELETE FROM Estudiantes WHERE id = @id_alumno; -- Eliminar el registro del estudiante en la tabla Estudiantes

    COMMIT TRANSACTION; -- Confirmar la transacción
END;
GO


EXEC ListarLegajosEstudiantes  -- Busco legajo

EXEC EliminarEstudiantePorLegajo @id_legajo = 1022;  --<-- Número de legajo a eliminar