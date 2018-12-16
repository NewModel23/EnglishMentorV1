USE [EnglishMentor]
GO

/****** Object:  Table [dbo].[Clientes]    Script Date: 12/14/2018 4:41:54 PM ******/
SET ANSI_NULLS ON
GO
DROP TABLE [dbo].[Clientes]


SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Clientes](
	[Id] [numeric](18, 0) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Nombre2] [varchar](200) NULL,
	[ApellidoP] [varchar](200) NOT NULL,
	[ApellidoM] [varchar](200) NULL,
	[Telefono1] [numeric](18, 0) NOT NULL,
	[Telefono2] [numeric](18, 0) NULL,
	[CodigoPostal] [numeric](18, 0) NOT NULL,
	[Calle] [varchar](200) NULL,
	[Colonia] [varchar](200) NULL,
	[DelegacionMunicipio] [varchar](200) NULL,
	[Estado] [varchar](200) NULL,
	[Pais] [varchar](50) NULL,
	[TipoPerfil] [numeric](18, 0) NOT NULL,
	[CodigoPromo] [varchar](200) NULL,
	[FechaIngreso] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[ConteoReferenciados] [numeric](18, 0) NULL,

	[FechaActualizacion] [date] NULL,
	[UsuarioActualiza] [varchar](200) NULL,
	[Status] [numeric](18, 0) NOT NULL

	CONSTRAINT PK_Cliente PRIMARY KEY (Id,TipoPerfil)
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

--Insertar datos predeterminados
INSERT INTO [dbo].[Clientes]([Id],[Nombre],[Nombre2],[ApellidoP],[ApellidoM],[Telefono1],[Telefono2],[CodigoPostal],[Calle],[Colonia],[DelegacionMunicipio],[Estado],[Pais],[TipoPerfil],[CodigoPromo],[FechaIngreso],[FechaBaja],[ConteoReferenciados],[FechaActualizacion],[UsuarioActualiza],[Status])
   VALUES (202070,'Raul','Emiliano','Guerrero','Molina',5544986396,26296000,54715,'Av villa del carbón','Loma de los Angeles','Cuautitlán Izcalli','Mexico','Mexico',1,'GUPRM5448','2018-12-01','',0,'2018-12-01','Sys',1)

INSERT INTO [dbo].[Clientes]([Id],[Nombre],[Nombre2],[ApellidoP],[ApellidoM],[Telefono1],[Telefono2],[CodigoPostal],[Calle],[Colonia],[DelegacionMunicipio],[Estado],[Pais],[TipoPerfil],[CodigoPromo],[FechaIngreso],[FechaBaja],[ConteoReferenciados],[FechaActualizacion],[UsuarioActualiza],[Status])
   VALUES (202089,'Jose','','Hernandez','Lopez',5547640007,58892061,54720,'Poniente 2','Chamizal','Cuautitlán Izcalli','Mexico','Mexico',1,'JHLA1544','2018-11-25','',0,'2018-12-01','Sys',1)

GO