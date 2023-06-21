USE [master]
GO
/****** Object:  Database [PersonajeYPeliculas ]    Script Date: 20/6/2023 20:39:20 ******/
CREATE DATABASE [PersonajeYPeliculas ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PersonajeYPelicula', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PersonajeYPelicula .mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PersonajeYPelicula _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PersonajeYPelicula _log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PersonajeYPeliculas ] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PersonajeYPeliculas ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PersonajeYPeliculas ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET ARITHABORT OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET RECOVERY FULL 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET  MULTI_USER 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PersonajeYPeliculas ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PersonajeYPeliculas ] SET QUERY_STORE = OFF
GO
USE [PersonajeYPeliculas ]
GO
/****** Object:  User [Personaje]    Script Date: 20/6/2023 20:39:20 ******/
CREATE USER [Personaje] FOR LOGIN [Personaje] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Personaje]
GO
/****** Object:  Table [dbo].[PeliculaSerie]    Script Date: 20/6/2023 20:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeliculaSerie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Imagen] [varchar](max) NOT NULL,
	[Titulo] [varchar](max) NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[Calificacion] [float] NOT NULL,
 CONSTRAINT [PK_PeliculaSerie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeliculaSerieYPersonaje]    Script Date: 20/6/2023 20:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeliculaSerieYPersonaje](
	[IdPersonaje] [int] NOT NULL,
	[IdPeliculaSerie] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personaje]    Script Date: 20/6/2023 20:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personaje](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Imagen] [varchar](max) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Peso] [int] NOT NULL,
	[Historia] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Personaje] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PersonajeYPeliculas ] SET  READ_WRITE 
GO
