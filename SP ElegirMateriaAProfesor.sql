CREATE PROCEDURE ElegirMateriaAProfesor
AS
BEGIN
    -- Mostrar IDs de profesores
    PRINT 'IDs de Profesores:'
    SELECT id, nombre, apellido FROM Profesores;

    -- Mostrar IDs de materias
    PRINT 'IDs de Materias:'
    SELECT id, Nombre FROM Materias;
END;
GO


-- Llamar al procedimiento almacenado
EXEC ElegirMateriaAProfesor