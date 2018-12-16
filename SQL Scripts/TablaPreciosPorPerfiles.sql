USE [EnglishMentor]
GO

/****** Object:  Table [dbo].[Clientes]    Script Date: 12/14/2018 4:33:53 PM ******/
SET ANSI_NULLS ON
GO

DROP TABLE [dbo].[PrecioPerfiles]

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[PrecioPerfiles](
	[IdPerfil] [numeric](18, 0) NOT NULL PRIMARY KEY,
	[Perioricidad] [varchar](200) NULL,
	[PrecioNormal] [numeric](18, 0) NOT NULL,
	[Iva] [numeric](18, 0) NOT NULL,
	[PrecioFinal] [numeric](18, 0) NOT NULL,

	[DescuentoMaximoReferenciaPCT] [numeric](3, 0) NULL,
	[DescuentoMaximoReferencia] [numeric](20, 0) NULL,

	[DescuentoReferencia1PCT] [numeric](3, 0) NULL,
	[DescuentoReferencia2PCT] [numeric](3, 0) NULL,
	[DescuentoReferencia3PCT] [numeric](3, 0) NULL,
	[DescuentoReferencia4PCT] [numeric](3, 0) NULL,


	[DescuentoReferencia1] [numeric](3, 0) NULL,
	[DescuentoReferencia2] [numeric](3, 0) NULL,
	[DescuentoReferencia3] [numeric](3, 0) NULL,
	[DescuentoReferencia4] [numeric](3, 0) NULL,

	
	
	[ComisionSistemasPCT] [numeric](18, 0) NULL,
	[ComisionSistemas] [numeric](18, 2) NULL,
	[ImpuestoSistemas] [numeric](18, 2) NULL,
	[ComisionDespImpuestoSistemas] [numeric](18, 2) NULL,


	[ComisionInstructorPCT] [numeric](18, 0) NULL,
	[ComisionInstructor] [numeric](18, 2) NULL,
	[ImpuestoInstructor] [numeric](18, 2) NULL,
	[ComisionDespImpuestoInstructor] [numeric](18, 2) NULL,


	[ComisionVendedorPCT] [numeric](18, 0) NULL,
	[ComisionVendedor] [numeric](18, 2) NULL,
	[ImpuestoVendedor] [numeric](18, 2) NULL,
	[ComisionDespImpuestoVendedor] [numeric](18, 2) NULL,


	
	[GananciaNeta] [numeric](18, 2) NULL,
	



	[FechaActualizacion] [date] NULL,
	[UsuarioActualiza] [varchar](200) NULL,
	[Status] [numeric](18, 0) NOT NULL
	
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

GO

INSERT INTO [dbo].[PrecioPerfiles]([IdPerfil],[Perioricidad],[PrecioNormal],[Iva],[PrecioFinal],[DescuentoMaximoReferenciaPCT],[DescuentoMaximoReferencia],[DescuentoReferencia1PCT],[DescuentoReferencia2PCT],[DescuentoReferencia3PCT],[DescuentoReferencia4PCT],[DescuentoReferencia1],[DescuentoReferencia2],[DescuentoReferencia3],[DescuentoReferencia4],[ComisionSistemasPCT],[ComisionSistemas],[ImpuestoSistemas],[ComisionDespImpuestoSistemas],[ComisionInstructorPCT],[ComisionInstructor],[ImpuestoInstructor],[ComisionDespImpuestoInstructor],[ComisionVendedorPCT],[ComisionVendedor],[ImpuestoVendedor],[ComisionDespImpuestoVendedor],[GananciaNeta],[FechaActualizacion],[UsuarioActualiza],[Status])
     VALUES (1,'M',500,16,420,20,336,10,5,3,2,33,16,10,7,5,5,16,11,25,67,16,53,20,38,16,33,153,'2018-12-10','SYS',1)



INSERT INTO [dbo].[PrecioPerfiles]([IdPerfil],[Perioricidad],[PrecioNormal],[Iva],[PrecioFinal],[DescuentoMaximoReferenciaPCT],[DescuentoMaximoReferencia],[DescuentoReferencia1PCT],[DescuentoReferencia2PCT],[DescuentoReferencia3PCT],[DescuentoReferencia4PCT],[DescuentoReferencia1],[DescuentoReferencia2],[DescuentoReferencia3],[DescuentoReferencia4],[ComisionSistemasPCT],[ComisionSistemas],[ImpuestoSistemas],[ComisionDespImpuestoSistemas],[ComisionInstructorPCT],[ComisionInstructor],[ImpuestoInstructor],[ComisionDespImpuestoInstructor],[ComisionVendedorPCT],[ComisionVendedor],[ImpuestoVendedor],[ComisionDespImpuestoVendedor],[GananciaNeta],[FechaActualizacion],[UsuarioActualiza],[Status])
     VALUES (2,'M',500,16,420,20,336,10,5,3,2,33,16,10,7,5,5,16,11,25,67,16,53,20,38,16,33,153,'2018-12-10','SYS',1)

GO
