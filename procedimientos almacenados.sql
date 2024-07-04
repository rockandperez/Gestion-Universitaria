--EXEC ListarLegajosEstudiantes; --lista todos los legajos de los estudiantes

--EXEC AsignarMateriaAProfesor @ID_PROFESOR = 11, @id_materia = 11; -- Llamar al procedimiento almacenado con los parámetros profe y materia 

--EXEC ListarCalificacionesDeAlumno @id_alumno = 21;  --- se debe ingresar id de alumno

--EXEC ElegirMateriaAProfesor;  -- lista todos los profesores y materias mostrando su id respectivo

--EXEC CalificarAlumno --ingresa calificacion a alumno ingresando legajo, nota, tipo examen (id) y estado ( 1	APROBADO, 2	DESAPROBADO, 3	RINDE FINAL, 4	RECURSA)

--		@IDLEGAJO = 1004,
--		@NOTA = 10,
--		@IDEXAMEN = 14,
--		@ESTADO = 1;

--SELECT * FROM VISTA_ESTUDIANTES_APROBADOS; --Lista todas las calificaciones, estudiantes con nombre y apellido y los examenes y materias en el que aprobaron (Estado = 1)

--EXEC EliminarEstudiantePorLegajo @id_legajo = 1001; -- Elimina todos los registros relacionados al legajo que se ingresa

--EXEC InsertarEstudianteConInscripcion --Crea el registro de un estudiante nuevo y todos los registros relacionados con la inscripcion del mismo
--		@nombre = 'Facundo',
--		@apellido = 'Luna',
--		@email = 'Facundo2001@gmail.com',
--		@FechaNacimiento ='2001-12-06',
--		@Sexo = 'M',
--		@id_carrera = 1,
--		@id_admin = 1 ;

-- EXEC ListarCalificacionesDeAlumno @id_alumno = 21; -- Busco todas las calficaciones del alumno seleccionado

-- EXEC ListarEstudiantes; --Listo todos los estudiantes

-- EXEC ListarEstudiantesPorCarrera @NombreCarrera = 'Medicina'; --Listo todos los estudiantes que se inscribieron en una carrera especifica.

--EXEC ListarLegajosEstudiantes -- LISTO Todos los legajos registrados.

-- EXEC ListarLicenciaturas -- LISTO Todas las licenciaturas existentes.

-- EXEC ListarProfesorados -- LISTO Todos los profesorados existentes.