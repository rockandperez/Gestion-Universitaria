USE Gestion_Universitaria;
GO

-- Crear el procedimiento almacenado
CREATE PROCEDURE EliminarEstudiantePorLegajo
    @id_legajo BIGINT
AS
BEGIN
   
    DECLARE @id_alumno INT;  -- Declarar variables para almacenar el id_alumno asociado al legajo

    -- Iniciar una transacción
    BEGIN TRANSACTION;

    SELECT @id_alumno = id_alumno -- Obtener el id_alumno asociado al legajo
    FROM Legajos
    WHERE id = @id_legajo;

    IF @id_alumno IS NULL  -- Verificar si el id_alumno existe
    BEGIN
        ROLLBACK TRANSACTION; -- Si no existe, deshacer la transacción y salir
        RETURN;
    END

    DELETE FROM Inscripciones WHERE id_alumno = @id_alumno; -- Eliminar las inscripciones del estudiante

    DELETE FROM Inscripciones_Asignaturas WHERE id_legajo = @id_legajo; -- Eliminar las inscripciones en asignaturas del estudiante

    DELETE FROM Calificaciones_Alumnos WHERE id_legajo = @id_legajo; -- Eliminar las calificaciones del estudiante

    DELETE FROM Legajos WHERE id = @id_legajo; -- Eliminar el legajo del estudiante

    DELETE FROM Estudiantes WHERE id = @id_alumno; -- Eliminar el registro del estudiante en la tabla Estudiantes

    COMMIT TRANSACTION; -- Confirmar la transacción
END;
GO



