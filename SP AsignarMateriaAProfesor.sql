USE Gestion_Universitaria;
GO

CREATE PROCEDURE AsignarMateriaAProfesor
    @id_profesor INT,
    @id_materia INT
AS
BEGIN
    -- Declaración de variables para almacenar nombres
    DECLARE @nombre_profesor NVARCHAR(255);
    DECLARE @nombre_materia NVARCHAR(255);

    -- Iniciar transacción
    BEGIN TRANSACTION;

    BEGIN TRY
        -- Comprobación de la existencia del profesor
        IF NOT EXISTS (SELECT 1 FROM Profesores WHERE id = @id_profesor)
        BEGIN
            PRINT 'El docente con id ' + CAST(@id_profesor AS NVARCHAR) + ' no existe.';
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Comprobación de la existencia de la materia
        IF NOT EXISTS (SELECT 1 FROM Materias WHERE id = @id_materia)
        BEGIN
            PRINT 'La materia con id ' + CAST(@id_materia AS NVARCHAR) + ' no existe.';
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Obtener nombres del profesor y la materia
        SELECT @nombre_profesor = nombre + ' ' + apellido FROM Profesores WHERE id = @id_profesor;
        SELECT @nombre_materia = Nombre FROM Materias WHERE id = @id_materia;

        -- Inserción en la tabla Profesor_Materia
        INSERT INTO Profesor_Materia (id_profesor, id_materia)
        VALUES (@id_profesor, @id_materia);

        -- Confirmar transacción
        COMMIT TRANSACTION;
        PRINT 'La materia ' + @nombre_materia + ' ha sido asignada correctamente al docente ' + @nombre_profesor + '.';
    END TRY
    BEGIN CATCH
        -- Manejo de errores y reversión de transacción
        ROLLBACK TRANSACTION;
        PRINT 'Ocurrió un error al asignar la materia al docente. Transacción revertida.';
    END CATCH;
END
GO



-- Llamar al procedimiento almacenado con los parámetros profe y materia 

EXEC AsignarMateriaAProfesor @id_profesor = 12, @id_materia = 112;
