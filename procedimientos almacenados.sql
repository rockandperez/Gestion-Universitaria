EXEC ListarLegajosEstudiantes

EXEC AsignarMateriaAProfesor @ID_PROFESOR = 11, @id_materia = 11 -- Llamar al procedimiento almacenado con los parámetros profe y materia 

EXEC ListarCalificacionesDeAlumno @id_alumno = 21  --- se debe ingresar id de alumno

EXEC ElegirMateriaAProfesor  -- lista todos los profesores y materias mostrando su id respectivo

EXEC CalificarAlumno --ingresa calificacion a alumno ingresando legajo, nota, tipo examen (id) y estado ( 1	APROBADO, 2	DESAPROBADO, 3	RINDE FINAL, 4	RECURSA)

		@IDLEGAJO = 1004,
		@NOTA = 10,
		@IDEXAMEN = 14,
		@ESTADO = 1     