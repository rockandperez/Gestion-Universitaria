SELECT * FROM [Gestion_Universitaria].[dbo].[Administrativos]

  -- Eliminar la columna calculada clave_alfanumerica de la tabla Inscripciones
ALTER TABLE Administrativos
DROP COLUMN clave_alfanumerica;



