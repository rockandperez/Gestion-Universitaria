
CREATE PROCEDURE ListarCalificacionesDeAlumno
    @id_alumno INT
AS
BEGIN
    -- Verificar si el alumno existe
    IF NOT EXISTS (SELECT 1 FROM Estudiantes WHERE id = @id_alumno)
    BEGIN
        PRINT 'El alumno con el ID especificado no existe.';
        RETURN;
    END

    -- Verificar si el alumno tiene calificaciones
    IF NOT EXISTS (
        SELECT 1 
        FROM Calificaciones_Alumnos ca
        JOIN Legajos l ON ca.id_legajo = l.id
        WHERE l.id_alumno = @id_alumno
    )
    BEGIN
        PRINT 'El alumno no tiene calificaciones registradas.';
        RETURN;
    END

    -- Si el alumno existe y tiene calificaciones, mostrar las calificaciones
    SELECT 
        e.nombre AS Nombre_Alumno,
        e.apellido AS Apellido_Alumno,
        c.Nombre AS Nombre_Materia,
        ex.nombre AS Nombre_Examen,
        ca.Nota AS Calificacion,
        ca.id_estado AS Estado_Calificacion
    FROM 
        Calificaciones_Alumnos ca
    JOIN 
        Legajos l ON ca.id_legajo = l.id
    JOIN 
        Estudiantes e ON l.id_alumno = e.id
    JOIN 
        Examenes ex ON ca.id_examen = ex.id
    JOIN 
        Materias c ON ex.id_examen_materia = c.id
    WHERE 
        e.id = @id_alumno;
END
GO


EXEC ListarCalificacionesDeAlumno @id_alumno = 39;