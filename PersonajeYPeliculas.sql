USE [master]
GO
/****** Object:  Database [PersonajeYPeliculas]    Script Date: 29/6/2023 22:11:51 ******/
CREATE DATABASE [PersonajeYPeliculas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PersonajeYPeliculas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PersonajeYPeliculas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PersonajeYPeliculas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PersonajeYPeliculas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[Conexiones]    Script Date: 29/6/2023 22:11:51 ******/
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
/****** Object:  Table [dbo].[Peliculas]    Script Date: 29/6/2023 22:11:51 ******/
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
/****** Object:  Table [dbo].[Personajes]    Script Date: 29/6/2023 22:11:51 ******/
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
SET IDENTITY_INSERT [dbo].[Conexiones] ON 

INSERT [dbo].[Conexiones] ([IDPelicula], [IDPersonaje], [Id]) VALUES (2, 1, 1)
INSERT [dbo].[Conexiones] ([IDPelicula], [IDPersonaje], [Id]) VALUES (2, 3, 2)
INSERT [dbo].[Conexiones] ([IDPelicula], [IDPersonaje], [Id]) VALUES (2, 5, 3)
INSERT [dbo].[Conexiones] ([IDPelicula], [IDPersonaje], [Id]) VALUES (5, 6, 4)
INSERT [dbo].[Conexiones] ([IDPelicula], [IDPersonaje], [Id]) VALUES (5, 8, 5)
INSERT [dbo].[Conexiones] ([IDPelicula], [IDPersonaje], [Id]) VALUES (5, 9, 6)
INSERT [dbo].[Conexiones] ([IDPelicula], [IDPersonaje], [Id]) VALUES (6, 10, 7)
INSERT [dbo].[Conexiones] ([IDPelicula], [IDPersonaje], [Id]) VALUES (6, 11, 8)
INSERT [dbo].[Conexiones] ([IDPelicula], [IDPersonaje], [Id]) VALUES (6, 12, 9)
INSERT [dbo].[Conexiones] ([IDPelicula], [IDPersonaje], [Id]) VALUES (7, 13, 10)
INSERT [dbo].[Conexiones] ([IDPelicula], [IDPersonaje], [Id]) VALUES (7, 14, 11)
INSERT [dbo].[Conexiones] ([IDPelicula], [IDPersonaje], [Id]) VALUES (7, 15, 12)
INSERT [dbo].[Conexiones] ([IDPelicula], [IDPersonaje], [Id]) VALUES (8, 16, 13)
INSERT [dbo].[Conexiones] ([IDPelicula], [IDPersonaje], [Id]) VALUES (8, 17, 14)
INSERT [dbo].[Conexiones] ([IDPelicula], [IDPersonaje], [Id]) VALUES (8, 18, 15)
SET IDENTITY_INSERT [dbo].[Conexiones] OFF
GO
SET IDENTITY_INSERT [dbo].[Peliculas] ON 

INSERT [dbo].[Peliculas] ([IDPelicula], [Imagen], [Titulo], [FechaCreacion], [Calificacion]) VALUES (2, N'https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/44113588A82F0120384F7EAC784C17778D9CA454B2436FF9492404902CF49013/scale?width=1200&aspectRatio=1.78&format=jpeg', N'Winnie Pooh: su gran aventura', CAST(N'1997-02-27' AS Date), 4)
INSERT [dbo].[Peliculas] ([IDPelicula], [Imagen], [Titulo], [FechaCreacion], [Calificacion]) VALUES (5, N'https://pics.filmaffinity.com/Star_Wars_Episodio_III_La_venganza_de_los_sith-974479162-large.jpg', N'Star wars: episodio III - la venganza de los sith', CAST(N'2005-05-19' AS Date), 5)
INSERT [dbo].[Peliculas] ([IDPelicula], [Imagen], [Titulo], [FechaCreacion], [Calificacion]) VALUES (6, N'https://i.blogs.es/150151/breaking-bad/1366_2000.jpeg', N'Breaking Bad', CAST(N'2008-02-07' AS Date), 5)
INSERT [dbo].[Peliculas] ([IDPelicula], [Imagen], [Titulo], [FechaCreacion], [Calificacion]) VALUES (7, N'https://pics.filmaffinity.com/wwii_in_color_road_to_victory-748502745-mmed.jpg', N'La Segunda Guerra Mundial a todo color
', CAST(N'2009-03-14' AS Date), 5)
INSERT [dbo].[Peliculas] ([IDPelicula], [Imagen], [Titulo], [FechaCreacion], [Calificacion]) VALUES (8, N'https://www.riotgames.com/darkroom/1440/b540da2b9afe5ec83e842a2d84f6dbb1:e95535ecd35e48592908762c9353926a/arcane-final-poster-16x9-no-text-no-border.jpg', N'Arcane', CAST(N'2021-11-06' AS Date), 5)
SET IDENTITY_INSERT [dbo].[Peliculas] OFF
GO
SET IDENTITY_INSERT [dbo].[Personajes] ON 

INSERT [dbo].[Personajes] ([IDPersonaje], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (1, N'https://static.wikia.nocookie.net/disney/images/5/54/Pooh-bear-clip-art-winniepooh_1_800_800.jpg/revision/latest?cb=20180730235326&path-prefix=es', N'Winnie Pooh', 19, 95, N'Oso mágico que vive con sus amigos y le gusta la miel.')
INSERT [dbo].[Personajes] ([IDPersonaje], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (3, N'https://lumiere-a.akamaihd.net/v1/images/9e259a68c3fceb6265860399bfc98fb56e098960.jpeg?region=0%2C0%2C600%2C600', N'Puerquito', 17, 10, N'Amigo de Winnie Pooh que lo acompaña en sus aventuras.')
INSERT [dbo].[Personajes] ([IDPersonaje], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (5, N'https://static.wikia.nocookie.net/disney/images/4/48/Eeyore_.jpg/revision/latest?cb=20180804135858&path-prefix=es', N'Ígor', 18, 85, N'Burro malhumorado que igualmente acompaña a su amigo Winnie Pooh en sus aventuras.')
INSERT [dbo].[Personajes] ([IDPersonaje], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (6, N'https://img.europapress.es/fotoweb/fotonoticia_20181221175313_1200.jpg', N'Anakin Skywalker', 22, 68, N'Caballero Jedi que se ve atraído lentamente hacia el lado oscuro de la fuerza.')
INSERT [dbo].[Personajes] ([IDPersonaje], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (8, N'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2021/10/star-wars-sheev-palpatine-darth-sidious-ian-mcdiarmid-2515405.jpg?tf=3840x', N'Sheev Palpatine', 52, 65, N'Maestro del lado oscuro de la fuerza que toma control de la galaxia.')
INSERT [dbo].[Personajes] ([IDPersonaje], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (9, N'https://televisa.brightspotcdn.com/dims4/default/0eeb873/2147483647/strip/true/crop/1205x678+0+113/resize/1200x675!/quality/90/?url=https%3A%2F%2Ftelevisa-brightspot.s3.amazonaws.com%2Fapi%2Fa1%2F4d%2F7ed9d6f84ba7b55d888894c7106d%2Fjesus.png', N'Obi-Wan-Kenobi', 39, 73, N'Maestro Jedi que intentará detener la conversión de Anakin al lado oscuro.')
INSERT [dbo].[Personajes] ([IDPersonaje], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (10, N'https://i.kym-cdn.com/entries/icons/facebook/000/041/670/walterwhiteminecraft.jpg', N'Walter White', 50, 67, N'Exprofesor de química que se convierte en rey del narcotráfico.')
INSERT [dbo].[Personajes] ([IDPersonaje], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (11, N'https://static.wikia.nocookie.net/breakingbad/images/5/52/BB_S5A_Jesse_Pinkman.png/revision/latest?cb=20221026171345&path-prefix=es', N'Jesse Pinkman', 24, 65, N'Amigo y colaborador en el tráfico de drogas de su exprofesor Walter White.')
INSERT [dbo].[Personajes] ([IDPersonaje], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (12, N'https://i.kym-cdn.com/entries/icons/original/000/040/491/cover10.jpg', N'Mike Ehrmantraut', 67, 71, N'Guardaespaldas del rey del pollo Gustavo Fring y luego colega del imperio de drogas de Walter White.')
INSERT [dbo].[Personajes] ([IDPersonaje], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (13, N'https://cdn.britannica.com/58/129958-050-C3FE2DD2/Adolf-Hitler-1933.jpg', N'Adolf Hitler', 50, 70, N'Lider de la Alemania Nazi en la Segunda Guerra Mundial, cometiendo atrocidades contra muchas poblaciones.')
INSERT [dbo].[Personajes] ([IDPersonaje], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (14, N'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Iosif_Stalin.jpg/800px-Iosif_Stalin.jpg', N'Joseph Stalin', 60, 73, N'Lider de la URSS en la Segunda Guerra Mundial, combatiendo contra la Alemania Nazi de Hitler.')
INSERT [dbo].[Personajes] ([IDPersonaje], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (15, N'https://c.files.bbci.co.uk/14057/production/_105370028_churchill_pa.jpg', N'Winston Churchill', 66, 72, N'Lider del Reino Unido en la Segunda Guerra Mundial, combatiendo contra los intentos de')
INSERT [dbo].[Personajes] ([IDPersonaje], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (16, N'https://static.wikia.nocookie.net/ficcion-sin-limites/images/9/96/Arcane_vi-1-scaled.jpg/revision/latest/scale-to-width-down/700?cb=20211125050929&path-prefix=es', N'Vi', 25, 75, N'Residente de Zaun que luego se convierte en parte de la policia de Piltover.')
INSERT [dbo].[Personajes] ([IDPersonaje], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (17, N'https://cdnb.artstation.com/p/assets/images/images/043/504/725/large/bo-chen-arcane-jinx-final-2k.jpg?1637470038', N'Jinx', 18, 58, N'Hija de Vander y hermana de Vi que desciende en la locura y se transforma en criminal.')
INSERT [dbo].[Personajes] ([IDPersonaje], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (18, N'https://pbs.twimg.com/media/FwQjeNMaEAAIMGQ.jpg:large', N'Aatrox', 2000, 942, N'Exascendido de Shurima que se convirtió en un Darkin luego de la "muerte" del emperador Azir, y ahora busca la destrucción de todo.')
SET IDENTITY_INSERT [dbo].[Personajes] OFF
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

