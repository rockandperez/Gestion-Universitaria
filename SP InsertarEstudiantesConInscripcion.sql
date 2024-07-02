USE Gestion_Universitaria;
GO

-- Crear el procedimiento almacenado
CREATE PROCEDURE InsertarEstudianteConInscripcion
    @nombre NVARCHAR(255),
    @apellido NVARCHAR(255),
    @email NVARCHAR(255),
    @FechaNacimiento DATE,
    @Sexo CHAR(1),
    @id_carrera INT,
    @id_admin INT
AS
BEGIN
    -- Iniciar una transacción
    BEGIN TRANSACTION;

    -- Insertar el nuevo estudiante en la tabla Estudiantes
    INSERT INTO Estudiantes (nombre, apellido, email, FechaNacimiento, Sexo)
    VALUES (@nombre, @apellido, @email, @FechaNacimiento, @Sexo);

    -- Obtener el ID del nuevo estudiante insertado
    DECLARE @id_alumno INT;
    SET @id_alumno = SCOPE_IDENTITY();

    -- Insertar la inscripción del estudiante en la carrera
    INSERT INTO Inscripciones (id_alumno, id_carrera, id_admin)
    VALUES (@id_alumno, @id_carrera, @id_admin);

    -- Confirmar la transacción
    COMMIT TRANSACTION;
END;
GO


EXEC InsertarEstudianteConInscripcion
    @nombre = 'Jorgelina',
    @apellido = 'Bocci',
    @email = 'jorgelina.bocci@gmail.com',
    @FechaNacimiento = '1993-02-21',
    @Sexo = 'F',
    @id_carrera = 1,   -- ID de la carrera en la que se inscribe
    @id_admin = 41;    -- ID del administrador que realiza la inscripción

