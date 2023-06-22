USE [master]
GO
/****** Object:  Database [PersonajeYPeliculas]    Script Date: 5/6/2023 00:31:46 ******/
CREATE DATABASE [PersonajeYPeliculas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PersonajeYPeliculas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\PersonajeYPeliculas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PersonajeYPeliculas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\PersonajeYPeliculas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PersonajeYPeliculas] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PersonajeYPeliculas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PersonajeYPeliculas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET ARITHABORT OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PersonajeYPeliculas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PersonajeYPeliculas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PersonajeYPeliculas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PersonajeYPeliculas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PersonajeYPeliculas] SET  MULTI_USER 
GO
ALTER DATABASE [PersonajeYPeliculas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PersonajeYPeliculas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PersonajeYPeliculas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PersonajeYPeliculas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PersonajeYPeliculas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PersonajeYPeliculas] SET QUERY_STORE = OFF
GO
USE [PersonajeYPeliculas]
GO
/****** Object:  Table [dbo].[Conexiones]    Script Date: 5/6/2023 00:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conexiones](
	[IDPelicula] [int] NOT NULL,
	[IDPersonaje] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Conexiones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 5/6/2023 00:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[IDPelicula] [int] IDENTITY(1,1) NOT NULL,
	[Imagen] [varchar](max) NOT NULL,
	[Titulo] [varchar](max) NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[Calificacion] [float] NOT NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[IDPelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personajes]    Script Date: 5/6/2023 00:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personajes](
	[IDPersonaje] [int] IDENTITY(1,1) NOT NULL,
	[Imagen] [varchar](max) NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[Edad] [int] NOT NULL,
	[Peso] [float] NOT NULL,
	[Historia] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Personajes] PRIMARY KEY CLUSTERED 
(
	[IDPersonaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Conexiones]  WITH CHECK ADD  CONSTRAINT [FK_Conexiones_Peliculas] FOREIGN KEY([IDPelicula])
REFERENCES [dbo].[Peliculas] ([IDPelicula])
GO
ALTER TABLE [dbo].[Conexiones] CHECK CONSTRAINT [FK_Conexiones_Peliculas]
GO
ALTER TABLE [dbo].[Conexiones]  WITH CHECK ADD  CONSTRAINT [FK_Conexiones_Personajes] FOREIGN KEY([IDPersonaje])
REFERENCES [dbo].[Personajes] ([IDPersonaje])
GO
ALTER TABLE [dbo].[Conexiones] CHECK CONSTRAINT [FK_Conexiones_Personajes]
GO
USE [master]
GO
ALTER DATABASE [PersonajeYPeliculas] SET  READ_WRITE 
GO
