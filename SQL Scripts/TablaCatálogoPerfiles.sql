USE [EnglishMentor]
GO

/****** Object:  Table [dbo].[Clientes]    Script Date: 12/14/2018 4:33:53 PM ******/
SET ANSI_NULLS ON
GO
DROP TABLE [dbo].[CatalogoPerfiles]

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CatalogoPerfiles](
	[Id] [numeric](18, 0) NOT NULL PRIMARY KEY,
	[Nombre] [varchar](200) NOT NULL,
	[Perioricidad] [varchar](200) NULL,

	[FechaActualizacion] [date] NULL,
	[UsuarioActualiza] [varchar](200) NULL,
	[Status] [numeric](18, 0) NOT NULL

	) ON [PRIMARY]

GO
--Insertar Datos predeterminados
INSERT INTO [dbo].[CatalogoPerfiles]([Id],[Nombre],[Perioricidad],[FechaActualizacion],[UsuarioActualiza],[Status])VALUES(1,'Socio','M','2018-12-01','Sys',1)
INSERT INTO [dbo].[CatalogoPerfiles]([Id],[Nombre],[Perioricidad],[FechaActualizacion],[UsuarioActualiza],[Status])VALUES(2,'Asociado','M','2018-12-01','Sys',1)
INSERT INTO [dbo].[CatalogoPerfiles]([Id],[Nombre],[Perioricidad],[FechaActualizacion],[UsuarioActualiza],[Status])VALUES(3,'Afiliado','M','2018-12-01','Sys',1)
INSERT INTO [dbo].[CatalogoPerfiles]([Id],[Nombre],[Perioricidad],[FechaActualizacion],[UsuarioActualiza],[Status])VALUES(4,'Referenciado','M','2018-12-01','Sys',1)


SET ANSI_PADDING OFF
GO


