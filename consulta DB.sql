USE [master]
GO
/****** Object:  Database [Gestion_Universitaria]    Script Date: 1/7/2024 20:03:34 ******/
CREATE DATABASE [Gestion_Universitaria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gestion_Universitaria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Gestion_Universitaria.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Gestion_Universitaria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Gestion_Universitaria_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Gestion_Universitaria] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Gestion_Universitaria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Gestion_Universitaria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET ARITHABORT OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Gestion_Universitaria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Gestion_Universitaria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Gestion_Universitaria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Gestion_Universitaria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Gestion_Universitaria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Gestion_Universitaria] SET  MULTI_USER 
GO
ALTER DATABASE [Gestion_Universitaria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Gestion_Universitaria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Gestion_Universitaria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Gestion_Universitaria] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Gestion_Universitaria] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Gestion_Universitaria] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Gestion_Universitaria] SET QUERY_STORE = ON
GO
ALTER DATABASE [Gestion_Universitaria] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Gestion_Universitaria]
GO
/****** Object:  Table [dbo].[Examenes]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Examenes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](255) NULL,
	[descripcion] [nvarchar](255) NULL,
	[fecha] [date] NULL,
	[id_examen_materia] [int] NOT NULL,
 CONSTRAINT [PK__Examenes__3213E83F5798A1D1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](255) NULL,
	[apellido] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[FechaNacimiento] [date] NULL,
	[Sexo] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](255) NULL,
	[descripcion] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Legajos]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Legajos](
	[id] [bigint] IDENTITY(1000,1) NOT NULL,
	[id_alumno] [int] NULL,
	[id_carrera] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calificaciones_Alumnos]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificaciones_Alumnos](
	[id_legajo] [bigint] NOT NULL,
	[Nota] [int] NOT NULL,
	[id_examen] [int] NOT NULL,
	[id_estado] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Vista_Estudiantes_Aprobados]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Crear la vista para mostrar los estudiantes con notas mayores o iguales a 4
CREATE VIEW [dbo].[Vista_Estudiantes_Aprobados] 
AS
SELECT 
    E.id AS Id_Estudiante,
    E.nombre AS Nombre,
    E.apellido AS Apellido,
    CA.Nota,
    EX.nombre AS Examen,
    EX.fecha AS Fecha,
    M.Nombre AS Materia
FROM 
    Estudiantes E
INNER JOIN 
    Legajos L ON E.id = L.id_alumno
INNER JOIN 
    Calificaciones_Alumnos CA ON L.id = CA.id_legajo
INNER JOIN 
    Examenes EX ON CA.id_examen = EX.id
INNER JOIN 
    Materias M ON EX.id_examen_materia = M.id
WHERE 
    CA.Nota >= 4;
GO
/****** Object:  Table [dbo].[Administrativos]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrativos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](255) NULL,
	[apellido] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[FechaNacimiento] [date] NULL,
	[Sexo] [char](1) NULL,
	[telefono] [nvarchar](255) NULL,
	[clave] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aulas]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aulas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](255) NULL,
	[capacidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aulas_Disponibilidad]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aulas_Disponibilidad](
	[id_aula] [int] NOT NULL,
	[id_evento] [int] NULL,
	[id_Profesor_Materia] [int] NULL,
	[disponible] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calificaciones]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificaciones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carreras]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carreras](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](255) NULL,
	[descripcion] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eventos]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eventos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](255) NULL,
	[descripcion] [nvarchar](255) NULL,
	[fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inscripciones]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscripciones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_alumno] [int] NULL,
	[id_carrera] [int] NULL,
	[id_admin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inscripciones_Asignaturas]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscripciones_Asignaturas](
	[id_Inscripcion] [int] NULL,
	[id_asignatura] [int] NULL,
	[id_legajo] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesor_Materia]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesor_Materia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_profesor] [int] NULL,
	[id_materia] [int] NULL,
	[id_aula] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](255) NULL,
	[apellido] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[FechaNacimiento] [date] NULL,
	[Sexo] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Aulas_Disponibilidad]  WITH CHECK ADD FOREIGN KEY([id_aula])
REFERENCES [dbo].[Aulas] ([id])
GO
ALTER TABLE [dbo].[Aulas_Disponibilidad]  WITH CHECK ADD FOREIGN KEY([id_evento])
REFERENCES [dbo].[Eventos] ([id])
GO
ALTER TABLE [dbo].[Aulas_Disponibilidad]  WITH CHECK ADD FOREIGN KEY([id_Profesor_Materia])
REFERENCES [dbo].[Profesor_Materia] ([id])
GO
ALTER TABLE [dbo].[Calificaciones_Alumnos]  WITH CHECK ADD FOREIGN KEY([id_estado])
REFERENCES [dbo].[Calificaciones] ([id])
GO
ALTER TABLE [dbo].[Calificaciones_Alumnos]  WITH CHECK ADD  CONSTRAINT [FK__Calificac__id_ex__5DCAEF64] FOREIGN KEY([id_examen])
REFERENCES [dbo].[Examenes] ([id])
GO
ALTER TABLE [dbo].[Calificaciones_Alumnos] CHECK CONSTRAINT [FK__Calificac__id_ex__5DCAEF64]
GO
ALTER TABLE [dbo].[Calificaciones_Alumnos]  WITH CHECK ADD FOREIGN KEY([id_legajo])
REFERENCES [dbo].[Legajos] ([id])
GO
ALTER TABLE [dbo].[Examenes]  WITH CHECK ADD  CONSTRAINT [FK__Examenes__id_exa__59063A47] FOREIGN KEY([id_examen_materia])
REFERENCES [dbo].[Materias] ([id])
GO
ALTER TABLE [dbo].[Examenes] CHECK CONSTRAINT [FK__Examenes__id_exa__59063A47]
GO
ALTER TABLE [dbo].[Inscripciones]  WITH CHECK ADD FOREIGN KEY([id_admin])
REFERENCES [dbo].[Administrativos] ([id])
GO
ALTER TABLE [dbo].[Inscripciones]  WITH CHECK ADD FOREIGN KEY([id_alumno])
REFERENCES [dbo].[Estudiantes] ([id])
GO
ALTER TABLE [dbo].[Inscripciones]  WITH CHECK ADD FOREIGN KEY([id_carrera])
REFERENCES [dbo].[Carreras] ([id])
GO
ALTER TABLE [dbo].[Inscripciones_Asignaturas]  WITH CHECK ADD FOREIGN KEY([id_asignatura])
REFERENCES [dbo].[Materias] ([id])
GO
ALTER TABLE [dbo].[Inscripciones_Asignaturas]  WITH CHECK ADD FOREIGN KEY([id_Inscripcion])
REFERENCES [dbo].[Inscripciones] ([id])
GO
ALTER TABLE [dbo].[Inscripciones_Asignaturas]  WITH CHECK ADD FOREIGN KEY([id_legajo])
REFERENCES [dbo].[Legajos] ([id])
GO
ALTER TABLE [dbo].[Legajos]  WITH CHECK ADD FOREIGN KEY([id_alumno])
REFERENCES [dbo].[Estudiantes] ([id])
GO
ALTER TABLE [dbo].[Legajos]  WITH CHECK ADD FOREIGN KEY([id_carrera])
REFERENCES [dbo].[Carreras] ([id])
GO
ALTER TABLE [dbo].[Profesor_Materia]  WITH CHECK ADD FOREIGN KEY([id_materia])
REFERENCES [dbo].[Materias] ([id])
GO
ALTER TABLE [dbo].[Profesor_Materia]  WITH CHECK ADD FOREIGN KEY([id_profesor])
REFERENCES [dbo].[Profesores] ([id])
GO
/****** Object:  StoredProcedure [dbo].[CalificarAlumno]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CalificarAlumno]
@IDLEGAJO bigint,
@NOTA INT,
@IDEXAMEN INT,
@ESTADO INT

AS

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
GO
/****** Object:  StoredProcedure [dbo].[ListarEstudiantes]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarEstudiantes]
AS
BEGIN
    SELECT nombre, apellido FROM Estudiantes
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarLegajosEstudiantes]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ListarLegajosEstudiantes]
AS
BEGIN
    -- Consulta para listar estudiantes con su número de legajo
SELECT E.nombre, E.apellido, E.email, L.id_alumno AS 'Numero de Legajo'
    FROM Estudiantes E
    INNER JOIN Legajos L ON E.id = L.id_alumno
    ORDER BY L.id_alumno ASC; -- Ordenar por número de legajo en orden ascendente
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarLicenciaturas]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarLicenciaturas]
AS
BEGIN
    SELECT nombre, descripcion
    FROM Carreras
    WHERE descripcion LIKE '%Licenciatura%';
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarProfesorados]    Script Date: 1/7/2024 20:03:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarProfesorados]
AS
BEGIN
    SELECT nombre, descripcion
    FROM Carreras
    WHERE descripcion LIKE '%Profesorado%';
END;
GO
USE [master]
GO
ALTER DATABASE [Gestion_Universitaria] SET  READ_WRITE 
GO
