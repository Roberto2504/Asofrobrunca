USE [SIGEEA_BD]
GO
/****** Object:  Table [dbo].[SIGEEA_AboCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_AboCliente](
	[PK_Id_AboCliente] [int] IDENTITY(1,1) NOT NULL,
	[Monto_AboCliente] [float] NOT NULL,
	[Metodo_AboCliente] [int] NOT NULL,
	[Numero_AboCliente] [varchar](25) NULL,
	[Fecha_AboCliente] [datetime] NOT NULL,
	[FK_Id_Moneda] [int] NOT NULL,
	[FK_Id_Empleado] [int] NOT NULL,
	[Estado_AboCliente] [bit] NOT NULL,
	[FK_Id_Cliente] [int] NOT NULL,
	[FK_Id_FacCliente] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_PagCliente] PRIMARY KEY CLUSTERED 
(
	[PK_Id_AboCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Anualidad]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_Anualidad](
	[PK_Id_Anualidad] [int] NOT NULL,
	[Anno_Anualidad] [numeric](4, 0) NOT NULL,
	[FK_Id_Monto] [int] NOT NULL,
	[FK_Id_Asociado] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_Asamblea]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Asamblea](
	[PK_Id_Asamblea] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_Asamblea] [date] NOT NULL,
	[Tipo_Asamblea] [int] NOT NULL,
	[NumActa_Asamblea] [varchar](30) NULL,
	[Observaciones_Asamblea] [varchar](100) NULL,
 CONSTRAINT [PK_SIGEEA_Asamblea] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Asamblea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_AsiAsamblea]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_AsiAsamblea](
	[PK_Id_AsiAsamblea] [int] IDENTITY(1,1) NOT NULL,
	[FK_Id_Asociado] [int] NOT NULL,
	[FK_Id_Asamblea] [int] NOT NULL,
	[Estado_AsiAsamblea] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_AsiAsamblea] PRIMARY KEY CLUSTERED 
(
	[PK_Id_AsiAsamblea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_Asociado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Asociado](
	[Codigo_Asociado] [varchar](10) NOT NULL,
	[Estado_Asociado] [bit] NOT NULL,
	[FecIngreso_Asociado] [date] NOT NULL,
	[FK_Id_Persona] [int] NOT NULL,
	[FK_Id_Representante] [int] NULL,
	[PK_Id_Asociado] [int] IDENTITY(1,1) NOT NULL,
	[FK_Id_Empresa] [int] NOT NULL,
	[FK_Id_CatAsociado] [int] NULL,
 CONSTRAINT [PK_SIGEEA_Asociado] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Asociado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_AsociadoXPagAsociado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_AsociadoXPagAsociado](
	[PK_Id_AsociadoXPagAsociado] [int] NOT NULL,
	[Fecha_AsociadoXPagAsociado] [datetime] NOT NULL,
	[Cancelado_AsociadoXPagAsociado] [bit] NOT NULL,
	[FK_Id_Asociado] [int] NOT NULL,
	[FK_Id_PagAsociado] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_AsociadoXPagAsociado] PRIMARY KEY CLUSTERED 
(
	[PK_Id_AsociadoXPagAsociado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_Banco]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_Banco](
	[PK_Id_Banco] [int] NOT NULL,
	[FK_Id_Empresa] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Banco] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Banco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_BitDetPagos]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_BitDetPagos](
	[PK_Id_BitDetPagos] [int] IDENTITY(1,1) NOT NULL,
	[FK_BitPagos] [int] NOT NULL,
	[FK_DetFacAsociado] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_BitDetPagos] PRIMARY KEY CLUSTERED 
(
	[PK_Id_BitDetPagos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_BitPagos]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_BitPagos](
	[PK_Id_BitPagos] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_BitPagos] [datetime] NOT NULL,
	[Metodo_BitPagos] [int] NOT NULL,
	[FK_Id_Usuario] [int] NOT NULL,
	[ChqRef_BitPagos] [varchar](100) NULL,
	[Total_BitPagos] [float] NOT NULL,
 CONSTRAINT [PK_SIGEEA_BitPagos] PRIMARY KEY CLUSTERED 
(
	[PK_Id_BitPagos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Bodega]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Bodega](
	[PK_Id_Bodega] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Bodega] [varchar](50) NOT NULL,
	[Descripcion_Bodega] [varchar](100) NULL,
	[FK_Id_Empresa] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Bodega] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Bodega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Canton]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Canton](
	[PK_Id_Canton] [int] NOT NULL,
	[Nombre_Canton] [varchar](30) NOT NULL,
	[FK_Id_Provincia] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Canton] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Canton] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_CatAsociado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_CatAsociado](
	[PK_Id_CatAsociado] [int] IDENTITY(1,1) NOT NULL,
	[CuotasProm_CatAsociado] [float] NOT NULL,
	[AsambleasProm_CatAsociado] [float] NOT NULL,
 CONSTRAINT [PK_SIGEEA_CatAsociado] PRIMARY KEY CLUSTERED 
(
	[PK_Id_CatAsociado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_CatCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_CatCliente](
	[PK_Id_CatCliente] [int] IDENTITY(1,1) NOT NULL,
	[Limite_CatCliente] [float] NOT NULL,
	[RanPagos_CatCliente] [varchar](30) NULL,
	[TieMaximo_CatCliente] [varchar](30) NULL,
	[FK_Id_TipCatCliente] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_CreCliente] PRIMARY KEY CLUSTERED 
(
	[PK_Id_CatCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Cliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_Cliente](
	[PK_Id_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[FK_Id_CatCliente] [int] NOT NULL,
	[FK_Id_Persona] [int] NOT NULL,
	[Estado_Cliente] [bit] NOT NULL,
	[FK_Id_Empresa] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Cliente] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_CodPostal]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_CodPostal](
	[PK_Id_CodPostal] [int] NOT NULL,
	[Nombre_CodPostal] [varchar](10) NOT NULL,
	[FK_Id_Estado] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_CodPostal] PRIMARY KEY CLUSTERED 
(
	[PK_Id_CodPostal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Contacto]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Contacto](
	[PK_Id_Contacto] [int] IDENTITY(1,1) NOT NULL,
	[Dato_Contacto] [varchar](30) NOT NULL,
	[FK_Id_TipContacto] [int] NOT NULL,
	[FK_Id_Persona] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Contacto] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_CreCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_CreCliente](
	[PK_Id_CreCliente] [int] IDENTITY(1,1) NOT NULL,
	[Monto_CreCliente] [float] NOT NULL,
	[Estado_CreCliente] [bit] NOT NULL,
	[FecProPago_CreCliente] [datetime] NOT NULL,
	[FecLimPago_CreCliente] [datetime] NOT NULL,
	[Fecha_CreCliente] [datetime] NOT NULL,
	[Saldo_CreCliente] [float] NOT NULL,
	[FK_Id_Cliente] [int] NOT NULL,
	[FK_Id_Moneda] [int] NULL,
	[FK_Id_FacCliente] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_CreCliente_1] PRIMARY KEY CLUSTERED 
(
	[PK_Id_CreCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_Cuenta]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Cuenta](
	[PK_Id_Cuenta] [int] NOT NULL,
	[Numero_Cuenta] [varchar](50) NOT NULL,
	[FK_Id_Moneda] [int] NOT NULL,
	[FK_Id_Banco] [int] NOT NULL,
	[FK_Id_Persona] [int] NULL,
 CONSTRAINT [PK_SIGEEA_Cuenta] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Cuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Cuota]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Cuota](
	[PK_Id_Cuota] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Cuota] [varchar](50) NOT NULL,
	[Monto_Cuota] [float] NOT NULL,
	[FecInicio_Cuota] [datetime] NOT NULL,
	[FecFin_Cuota] [datetime] NOT NULL,
	[FK_Id_Moneda] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Cuota] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Cuota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Cuota_Asociado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_Cuota_Asociado](
	[PK_Id_Cuota_Asociado] [int] IDENTITY(1,1) NOT NULL,
	[Estado_Cuota_Asociado] [bit] NOT NULL,
	[Saldo_Cuota_Asociado] [float] NOT NULL,
	[FK_Id_Cuota] [int] NOT NULL,
	[FK_Id_Asociado] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Cuota_Asociado] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Cuota_Asociado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_DetFacAsociado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_DetFacAsociado](
	[PK_Id_DetFacAsociado] [int] IDENTITY(1,1) NOT NULL,
	[CanTotal_DetFacAsociado] [float] NOT NULL,
	[CanNeta_DetFacAsociado] [float] NULL,
	[Mercado_DetFacAsociado] [int] NOT NULL,
	[FK_Id_FacAsociado] [int] NOT NULL,
	[FK_Id_PreProCompra] [int] NOT NULL,
	[FK_Id_Lote] [int] NOT NULL,
	[Cancelado_DetFacAsociado] [bit] NOT NULL,
	[Saldo_DetFacAsociado] [float] NULL,
 CONSTRAINT [PK_SIGEEA_DetFacAsociado] PRIMARY KEY CLUSTERED 
(
	[PK_Id_DetFacAsociado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_DetFacCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_DetFacCliente](
	[PK_Id_DetFacCliente] [int] IDENTITY(1,1) NOT NULL,
	[MonTotal_DetFacCliente] [float] NOT NULL,
	[MonNeto_DetFacCliente] [float] NOT NULL,
	[CanProducto_DetFacCliente] [float] NOT NULL,
	[Descuento_DetFacCliente] [float] NOT NULL,
	[PreUnidad_DetFacCliente] [float] NOT NULL,
	[Moneda_DetFacCliente] [char](3) NOT NULL,
	[FK_Id_FacCliente] [int] NOT NULL,
	[FK_Id_UniMedida] [int] NOT NULL,
	[FK_Id_TipProducto] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_DetFacCliente] PRIMARY KEY CLUSTERED 
(
	[PK_Id_DetFacCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_DetFacInsumo]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_DetFacInsumo](
	[PK_Id_DetFacInsumo] [int] IDENTITY(1,1) NOT NULL,
	[Precio_DetFacInsumo] [float] NOT NULL,
	[Cantidad_DetFacInsumo] [float] NOT NULL,
	[FK_Id_FacInsumo] [int] NOT NULL,
	[FK_Id_InvInsumo] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Pago_Compra] PRIMARY KEY CLUSTERED 
(
	[PK_Id_DetFacInsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_DetInvProductos]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_DetInvProductos](
	[PK_Id_DetInvProductos] [int] IDENTITY(1,1) NOT NULL,
	[Cantidad_DetInvProductos] [float] NOT NULL,
	[FK_Id_TipProducto] [int] NOT NULL,
	[FK_Id_InvProductos] [int] NOT NULL,
	[FK_Id_UniMedida] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_InvProductos] PRIMARY KEY CLUSTERED 
(
	[PK_Id_DetInvProductos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_DetPagEmpleados]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_DetPagEmpleados](
	[PK_Id_DetPagEmpleados] [int] IDENTITY(1,1) NOT NULL,
	[Total_DetPagEmpleados] [float] NOT NULL,
	[FK_Id_PagEmpleados] [int] NOT NULL,
	[FK_Id_HorLaboradas] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_DetPagEmpleados] PRIMARY KEY CLUSTERED 
(
	[PK_Id_DetPagEmpleados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_Direccion]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Direccion](
	[PK_Id_Direccion] [int] IDENTITY(1,1) NOT NULL,
	[Detalles_Direccion] [varchar](100) NOT NULL,
	[FK_Id_Distrito] [int] NULL,
	[FK_Id_CodPostal] [int] NULL,
 CONSTRAINT [PK_SIGEEA_Direccion] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Distrito]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Distrito](
	[PK_Id_Distrito] [int] NOT NULL,
	[Nombre_Distrito] [varchar](30) NOT NULL,
	[FK_Id_Canton] [int] NOT NULL,
 CONSTRAINT [PK_SIGGEA_Distrito] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Distrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Empleado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_Empleado](
	[FK_Id_Persona] [int] NOT NULL,
	[FK_Id_Escolaridad] [int] NOT NULL,
	[PK_Id_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[Estado_Empleado] [bit] NOT NULL,
	[FK_Id_Empresa] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Empleado] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_Empresa]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Empresa](
	[PK_Id_Empresa] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Empresa] [varchar](50) NOT NULL,
	[CedJuridica_Empresa] [varchar](30) NOT NULL,
	[Direccion_Empresa] [varchar](200) NULL,
	[Telefono_Empresa] [varchar](15) NULL,
	[Correo_Empresa] [varchar](30) NULL,
 CONSTRAINT [PK_SIGEEA_Empresa] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Escolaridad]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Escolaridad](
	[Leer_Escolaridad] [bit] NOT NULL,
	[Escribir_Escolaridad] [bit] NOT NULL,
	[GradoAcad_Escolaridad] [int] NOT NULL,
	[Observaciones_Escolaridad] [varchar](300) NULL,
	[PK_Id_Escolaridad] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SIGEEA_Escolaridad] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Escolaridad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Estado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Estado](
	[PK_Id_Estado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Estado] [varchar](25) NOT NULL,
	[FK_Id_Pais] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Estado] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Experiencia]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Experiencia](
	[PK_Id_Experiencia] [int] NOT NULL,
	[FecInicio_Experiencia] [date] NOT NULL,
	[FecFin_Experiencia] [date] NOT NULL,
	[NombreJefe_Experiencia] [varchar](100) NULL,
	[CargoJefe_Experiencia] [varchar](50) NULL,
	[DescTrabajo_Experiencia] [varchar](100) NOT NULL,
	[MotSalida_Experiencia] [varchar](100) NULL,
	[Empresa_Experiencia] [varchar](50) NOT NULL,
	[FK_Id_Empleado] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Experiencia] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Experiencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_FacAsociado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_FacAsociado](
	[PK_Id_FacAsociado] [int] IDENTITY(1,1) NOT NULL,
	[FecEntrega_FacAsociado] [date] NOT NULL,
	[FecPago_FacAsociado] [date] NOT NULL,
	[CanTotal_FacAsociado] [float] NOT NULL,
	[CanNeta_FacAsociado] [float] NULL,
	[Estado_FacAsociado] [bit] NOT NULL,
	[Observaciones_FacAsociado] [varchar](300) NULL,
	[FK_Id_Asociado] [int] NOT NULL,
	[Incompleta_FacAsociado] [bit] NOT NULL,
	[Numero_FacAsociado] [int] NULL,
 CONSTRAINT [PK_SIGEEA_FacAsociado] PRIMARY KEY CLUSTERED 
(
	[PK_Id_FacAsociado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_FacCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_FacCliente](
	[PK_Id_FacCliente] [int] IDENTITY(1,1) NOT NULL,
	[FecEntrega_FacCliente] [datetime] NOT NULL,
	[FecPago_FacCliente] [datetime] NOT NULL,
	[FecProPago_FacCliente] [datetime] NULL,
	[Observaciones_FacCliente] [varchar](300) NOT NULL,
	[FK_Id_Cliente] [int] NOT NULL,
	[Estado_FacCliente] [varchar](2) NOT NULL,
	[MonTotal_FacCliente] [float] NOT NULL,
	[MonNeto_FacCliente] [float] NOT NULL,
	[Descuento_FacCliente] [float] NOT NULL,
	[FK_Id_Moneda] [int] NOT NULL,
	[FK_Id_Empresa] [int] NOT NULL,
	[FK_Id_Empleado] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_FacCliente] PRIMARY KEY CLUSTERED 
(
	[PK_Id_FacCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_FacInsumo]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_FacInsumo](
	[PK_Id_FacInsumo] [int] IDENTITY(1,1) NOT NULL,
	[MonTotal_FacInsumo] [float] NOT NULL,
	[Descripcion_FacInsumo] [varchar](100) NOT NULL,
	[FK_Id_Proveedor] [int] NULL,
	[FK_Id_Empleado] [int] NOT NULL,
	[Estado_FacInsumo] [bit] NOT NULL,
	[Fecha_FacInsumo] [datetime] NOT NULL,
	[Credito_FacInsumo] [bit] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Compra_Producto] PRIMARY KEY CLUSTERED 
(
	[PK_Id_FacInsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Familiar]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Familiar](
	[PK_Id_Familiar] [int] IDENTITY(1,1) NOT NULL,
	[FK_Id_Asociado] [int] NOT NULL,
	[Nombre_Familiar] [varchar](300) NOT NULL,
	[Escolaridad_Familiar] [int] NOT NULL,
	[DesEstudios_Familiar] [varchar](100) NULL,
 CONSTRAINT [PK_SIGEEA_Familiar] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Familiar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Finca]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Finca](
	[PK_Id_Finca] [int] IDENTITY(1,1) NOT NULL,
	[Alquilada_Finca] [bit] NOT NULL,
	[Codigo_Finca] [varchar](10) NOT NULL,
	[FK_Id_Direccion] [int] NULL,
	[FK_Id_Asociado] [int] NOT NULL,
	[Estado_Finca] [varchar](2) NOT NULL,
	[PriNomDuenno_Finca] [varchar](30) NOT NULL,
	[SegNomDuenno_Finca] [varchar](30) NULL,
	[PriApeDuenno_Finca] [varchar](30) NOT NULL,
	[SegApeDuenno_Finca] [varchar](30) NOT NULL,
	[NumRegistro_Finca] [varchar](15) NOT NULL,
	[FK_Id_Empleado] [int] NOT NULL,
	[FecRegistro_Finca] [datetime] NOT NULL,
	[Tamanno_Finca] [float] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Finca] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Finca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_HisDelictivo]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_HisDelictivo](
	[PK_Id_HisDelictivo] [int] NOT NULL,
	[Descripcion_HisDelictivo] [varchar](100) NOT NULL,
	[FK_Id_Empleado] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_HisDelictivo] PRIMARY KEY CLUSTERED 
(
	[PK_Id_HisDelictivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_HorLaboradas]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_HorLaboradas](
	[PK_Id_HorLaboradas] [int] IDENTITY(1,1) NOT NULL,
	[HoraInicio_HorLaboradas] [datetime] NOT NULL,
	[HoraFin_HorLaboradas] [datetime] NULL,
	[Activo_HorLaboradas] [bit] NOT NULL,
	[Estado_HorLaboradas] [bit] NOT NULL,
	[FK_Id_Empleado] [int] NOT NULL,
	[FK_Id_Puesto] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_HorLaboradas] PRIMARY KEY CLUSTERED 
(
	[PK_Id_HorLaboradas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_Insumo]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Insumo](
	[PK_Id_Insumo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Insumo] [varchar](20) NOT NULL,
	[Descripcion_Insumo] [varchar](30) NOT NULL,
	[Estado_Insumo] [bit] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Producto] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Insumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_InvInsumo]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_InvInsumo](
	[PK_IdInvInsumo] [int] IDENTITY(1,1) NOT NULL,
	[Cantidad_InvInsumo] [float] NOT NULL,
	[FK_Id_Insumo] [int] NOT NULL,
	[FK_UniMedida] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_InvInsumo] PRIMARY KEY CLUSTERED 
(
	[PK_IdInvInsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_InvProductos]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_InvProductos](
	[PK_Id_InvProductos] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion_InvProductos] [varchar](100) NULL,
	[FK_Id_Bodega] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_InvProductos_1] PRIMARY KEY CLUSTERED 
(
	[PK_Id_InvProductos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Lote]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Lote](
	[PK_Id_Lote] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_Lote] [varchar](15) NOT NULL,
	[Tamanno_Lote] [nchar](10) NULL,
	[FK_Id_Finca] [int] NOT NULL,
	[Estado_Lote] [bit] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Lote] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Lote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Modulo]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Modulo](
	[PK_Id_Modulo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Modulo] [varchar](30) NOT NULL,
 CONSTRAINT [PK_SIGEEA_Modulo] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Modulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Moneda]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Moneda](
	[PK_Id_Moneda] [int] IDENTITY(1,1) NOT NULL,
	[PreCompra_Moneda] [float] NOT NULL,
	[PreVenta_Moneda] [float] NOT NULL,
	[Nombre_Moneda] [varchar](15) NOT NULL,
	[FK_Id_Empresa] [int] NOT NULL,
	[Simbolo_Moneda] [varchar](3) NOT NULL,
 CONSTRAINT [PK_SIGEEA_Moneda] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Moneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Nacionalidad]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Nacionalidad](
	[PK_Id_Nacionalidad] [int] IDENTITY(3,1) NOT NULL,
	[Nombre_Nacionalidad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SIGEEA_Nacionalidad] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Nacionalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_PagAsociado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_PagAsociado](
	[PK_Id_PagAsociado] [int] NOT NULL,
	[Monto_PagAsociado] [float] NOT NULL,
	[FecActualizacion_PagAsociado] [datetime] NOT NULL,
	[TipPago_PagAsociado] [int] NOT NULL,
	[Descripcion_PagAsociado] [varchar](100) NULL,
 CONSTRAINT [PK_SIGEEA_PagAsociado] PRIMARY KEY CLUSTERED 
(
	[PK_Id_PagAsociado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_PagEmpleados]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_PagEmpleados](
	[PK_Id_PagEmpleados] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_PagEmpleados] [date] NOT NULL,
	[FK_Id_Empleado] [int] NOT NULL,
	[FK_Id_Cuenta] [int] NULL,
 CONSTRAINT [PK_SIGEEA_PagEmpleados] PRIMARY KEY CLUSTERED 
(
	[PK_Id_PagEmpleados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_Pais]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Pais](
	[PK_Id_Pais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Pais] [varchar](20) NOT NULL,
 CONSTRAINT [PK_SIGEEA_Pais] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Parentesco]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Parentesco](
	[PK_Id_Parentesco] [int] NOT NULL,
	[Nombre_Parentesco] [varchar](15) NOT NULL,
 CONSTRAINT [PK_SIGEEA_Parentesco] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Parentesco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_PedInsumo]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_PedInsumo](
	[PK_Id_PedInsumo] [int] IDENTITY(1,1) NOT NULL,
	[Cantidad_PedInsumo] [float] NOT NULL,
	[Fecha_PedInsumo] [datetime] NOT NULL,
	[Descripcion_PedInsumo] [varchar](150) NULL,
	[FK_Id_Insumo] [int] NOT NULL,
	[FK_Id_Empleado] [int] NOT NULL,
	[Estado_Insumo] [bit] NOT NULL,
 CONSTRAINT [PK_SIGEEA_PedInsumo] PRIMARY KEY CLUSTERED 
(
	[PK_Id_PedInsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_PerExportacion]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_PerExportacion](
	[PK_Id_Permiso_Exportacion] [int] IDENTITY(1,1) NOT NULL,
	[Permiso_Exportacion] [bit] NOT NULL,
	[Numero_Permiso_Exportacion] [varchar](20) NOT NULL,
	[Descripcion_Permiso_Exportacion] [varbinary](30) NOT NULL,
	[Fecha_Emision_Permiso_Exportacion] [datetime] NOT NULL,
	[Fecha_Vencimiento_Permiso_Exportacion] [datetime] NOT NULL,
	[FK_Id_Lote] [int] NOT NULL,
	[FK_Id_Empleado] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_PerExportacion] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Permiso_Exportacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Permiso]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Permiso](
	[PK_Id_Permiso] [int] NOT NULL,
	[Nombre_Permiso] [varchar](30) NOT NULL,
 CONSTRAINT [PK_SIGEEA_Permiso] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Permiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Permiso_SubModulo]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_Permiso_SubModulo](
	[FK_Id_Permiso] [int] NOT NULL,
	[FK_Id_SubModulo] [int] NOT NULL,
	[PK_Id_PerSubmodulo] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SIGEEA_Permiso_SubModulo] PRIMARY KEY CLUSTERED 
(
	[PK_Id_PerSubmodulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_Persona]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Persona](
	[PriNombre_Persona] [varchar](30) NOT NULL,
	[SegNombre_Persona] [varchar](30) NULL,
	[PriApellido_Persona] [varchar](30) NULL,
	[SegApellido_Persona] [varchar](30) NULL,
	[Genero_Persona] [varchar](30) NULL,
	[FecNacimiento_Persona] [date] NOT NULL,
	[FK_Id_Direccion] [int] NULL,
	[FK_Id_Nacionalidad] [int] NOT NULL,
	[PK_Id_Persona] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_Persona] [bit] NOT NULL,
	[CedJuridica_Persona] [varchar](30) NULL,
	[CedParticular_Persona] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_Id_Persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_PreProCompra]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_PreProCompra](
	[PreNacional_PreProCompra] [float] NULL,
	[PreExtranjero_PreProCompra] [float] NULL,
	[FecRegistro_PreProCompra] [datetime] NOT NULL,
	[FK_Id_TipProducto] [int] NOT NULL,
	[PK_Id_PreProCompra] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SIGEEA_PreProCompra] PRIMARY KEY CLUSTERED 
(
	[PK_Id_PreProCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_PreProVenta]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_PreProVenta](
	[PreNacional_PreProVenta] [float] NULL,
	[PreExtranjero_PreProVenta] [float] NULL,
	[FecRegistro_PreProVenta] [datetime] NOT NULL,
	[FK_Id_TipProducto] [int] NOT NULL,
	[PK_Id_PreProVenta] [int] IDENTITY(1,1) NOT NULL,
	[FK_Id_Moneda] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_PreProVenta] PRIMARY KEY CLUSTERED 
(
	[PK_Id_PreProVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_Proveedor]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Proveedor](
	[PK_Id_Proveedor] [int] NOT NULL,
	[Nombre_Proveedor] [varbinary](30) NOT NULL,
	[Direccion_Proveedor] [varchar](30) NOT NULL,
	[FK_Id_Insumo] [int] NOT NULL,
	[FK_Id_Persona] [int] NOT NULL,
	[FK_Id_Empresa] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Proveedor] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Provincia]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Provincia](
	[PK_Id_Provincia] [int] NOT NULL,
	[Nombre_Provincia] [varchar](50) NOT NULL,
	[FK_Id_Pais] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Provincia] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_PueTemporal]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_PueTemporal](
	[PK_Id_Puesto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Puesto] [varchar](30) NOT NULL,
	[Tarifa_Puesto] [float] NOT NULL,
	[Actualizacion_Puesto] [datetime] NOT NULL,
	[Estado_Puesto] [bit] NOT NULL,
 CONSTRAINT [PK_SIGEEA_PueTemporal] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Representante]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGEEA_Representante](
	[PK_Id_Representante] [int] NOT NULL,
	[Id_Asociado] [int] NOT NULL,
	[FK_Id_Persona] [int] NOT NULL,
	[Activo_Representante] [bit] NOT NULL,
 CONSTRAINT [PK_SIGEEA_Representante] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Representante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIGEEA_Rol]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Rol](
	[PK_Id_Rol] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Rol] [varchar](30) NOT NULL,
	[FK_Id_Permiso] [int] NULL,
 CONSTRAINT [PK_SIGEEA_Rol] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_SubModulo]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_SubModulo](
	[PK_Id_SubModulo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_SubModulo] [varchar](50) NOT NULL,
	[FK_Id_Modulo] [int] NOT NULL,
 CONSTRAINT [PK_SIGEEA_SubModulo] PRIMARY KEY CLUSTERED 
(
	[PK_Id_SubModulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_TipCatCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_TipCatCliente](
	[PK_Id_TipCatCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_TipCatCliente] [varchar](10) NOT NULL,
 CONSTRAINT [PK_SIGEEA_TipCatCliente] PRIMARY KEY CLUSTERED 
(
	[PK_Id_TipCatCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_TipContacto]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_TipContacto](
	[PK_Id_TipContacto] [int] NOT NULL,
	[Nombre_TipContacto] [varchar](15) NOT NULL,
 CONSTRAINT [PK_SIGEEA_TipoContacto] PRIMARY KEY CLUSTERED 
(
	[PK_Id_TipContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_TipProducto]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_TipProducto](
	[Nombre_TipProducto] [varchar](30) NOT NULL,
	[Descripcion_TipProducto] [varchar](100) NULL,
	[Calidad_TipProducto] [int] NOT NULL,
	[PK_Id_TipProducto] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SIGEEA_TipProducto] PRIMARY KEY CLUSTERED 
(
	[PK_Id_TipProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_UniMedida]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_UniMedida](
	[PK_Id_UniMedida] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_UniMedida] [varchar](25) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_SIGEEA_UniMedida] PRIMARY KEY CLUSTERED 
(
	[PK_Id_UniMedida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIGEEA_Usuario]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIGEEA_Usuario](
	[PK_Id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Usuario] [varchar](50) NOT NULL,
	[Clave_Usuario] [varchar](15) NOT NULL,
	[FK_Id_Rol] [int] NOT NULL,
	[FK_Id_Empleado] [int] NOT NULL,
	[RutFondo_Usuario] [varchar](200) NULL,
 CONSTRAINT [PK_SIGEEA_Usuario] PRIMARY KEY CLUSTERED 
(
	[PK_Id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SIGEEA_Asamblea] ON 

INSERT [dbo].[SIGEEA_Asamblea] ([PK_Id_Asamblea], [Fecha_Asamblea], [Tipo_Asamblea], [NumActa_Asamblea], [Observaciones_Asamblea]) VALUES (1, CAST(N'2016-05-25' AS Date), 1, N'3', NULL)
INSERT [dbo].[SIGEEA_Asamblea] ([PK_Id_Asamblea], [Fecha_Asamblea], [Tipo_Asamblea], [NumActa_Asamblea], [Observaciones_Asamblea]) VALUES (2, CAST(N'2016-06-17' AS Date), 1, N'54', N'')
INSERT [dbo].[SIGEEA_Asamblea] ([PK_Id_Asamblea], [Fecha_Asamblea], [Tipo_Asamblea], [NumActa_Asamblea], [Observaciones_Asamblea]) VALUES (5, CAST(N'2016-07-19' AS Date), 2, N'', N'')
INSERT [dbo].[SIGEEA_Asamblea] ([PK_Id_Asamblea], [Fecha_Asamblea], [Tipo_Asamblea], [NumActa_Asamblea], [Observaciones_Asamblea]) VALUES (6, CAST(N'2016-06-09' AS Date), 2, N'45', N'')
INSERT [dbo].[SIGEEA_Asamblea] ([PK_Id_Asamblea], [Fecha_Asamblea], [Tipo_Asamblea], [NumActa_Asamblea], [Observaciones_Asamblea]) VALUES (7, CAST(N'2016-07-14' AS Date), 2, N'E45', N'Análisis de crédito con el Banco Popular')
SET IDENTITY_INSERT [dbo].[SIGEEA_Asamblea] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_Asociado] ON 

INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F1ASA', 1, CAST(N'2017-07-01' AS Date), 1, NULL, 1, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F2ACU', 1, CAST(N'2017-07-01' AS Date), 2, NULL, 2, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F3AMZ', 1, CAST(N'2017-07-01' AS Date), 3, NULL, 3, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F4ASC', 1, CAST(N'2017-07-13' AS Date), 4, NULL, 4, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F5AVP', 1, CAST(N'2017-07-13' AS Date), 5, NULL, 5, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F6AFR', 1, CAST(N'2017-07-13' AS Date), 6, NULL, 6, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F7AZQ', 1, CAST(N'2017-07-13' AS Date), 7, NULL, 7, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F8AAB', 1, CAST(N'2017-07-13' AS Date), 8, NULL, 8, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F9BRC', 1, CAST(N'2017-07-13' AS Date), 10, NULL, 9, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F10CGV', 1, CAST(N'2017-07-13' AS Date), 11, NULL, 10, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F11CAE', 1, CAST(N'2017-07-13' AS Date), 12, NULL, 11, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F12CTM', 1, CAST(N'2017-07-13' AS Date), 13, NULL, 12, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F13CRB', 1, CAST(N'2017-07-13' AS Date), 14, NULL, 13, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F14DBB', 1, CAST(N'2017-07-13' AS Date), 15, NULL, 14, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F15DGC', 1, CAST(N'2017-07-13' AS Date), 16, NULL, 15, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F16ERU', 1, CAST(N'2017-07-13' AS Date), 17, NULL, 16, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F17EGU', 1, CAST(N'2017-07-13' AS Date), 18, NULL, 17, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F18ECM', 1, CAST(N'2017-07-13' AS Date), 19, NULL, 18, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F19EBR', 1, CAST(N'2017-07-13' AS Date), 20, NULL, 19, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F20EGU', 1, CAST(N'2017-07-13' AS Date), 21, NULL, 20, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F21EVQ', 1, CAST(N'2017-07-13' AS Date), 22, NULL, 21, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F22EAM', 1, CAST(N'2017-07-13' AS Date), 23, NULL, 22, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F23FVC', 1, CAST(N'2017-07-13' AS Date), 24, NULL, 23, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F24FLR', 1, CAST(N'2017-07-13' AS Date), 25, NULL, 24, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F25FQG', 1, CAST(N'2017-07-13' AS Date), 26, NULL, 25, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F26FUM', 1, CAST(N'2017-07-13' AS Date), 27, NULL, 26, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F27GGM', 1, CAST(N'2017-07-13' AS Date), 28, NULL, 27, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F28GSM', 1, CAST(N'2017-07-13' AS Date), 29, NULL, 28, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F29GRP', 1, CAST(N'2017-07-13' AS Date), 30, NULL, 29, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F30GVB', 1, CAST(N'2017-07-13' AS Date), 31, NULL, 30, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F31GPG', 1, CAST(N'2017-07-13' AS Date), 32, NULL, 31, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F32HCO', 1, CAST(N'2017-07-13' AS Date), 33, NULL, 32, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F33HCV', 1, CAST(N'2017-07-13' AS Date), 34, NULL, 33, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F34HUV', 1, CAST(N'2017-07-13' AS Date), 35, NULL, 34, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F35IRB', 1, CAST(N'2017-07-13' AS Date), 36, NULL, 35, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F36JBV', 1, CAST(N'2017-07-13' AS Date), 37, NULL, 36, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F37JJA', 1, CAST(N'2017-07-13' AS Date), 38, NULL, 37, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F38JQM', 1, CAST(N'2017-07-13' AS Date), 39, NULL, 38, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F39JVV', 1, CAST(N'2017-07-13' AS Date), 40, NULL, 39, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F40JJC', 1, CAST(N'2017-07-13' AS Date), 41, NULL, 40, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F41JNP', 1, CAST(N'2017-07-13' AS Date), 42, NULL, 41, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F42JFR', 1, CAST(N'2017-07-13' AS Date), 43, NULL, 42, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F43JQM', 1, CAST(N'2017-07-13' AS Date), 44, NULL, 43, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F44JCD', 1, CAST(N'2017-07-13' AS Date), 45, NULL, 44, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F45DDD', 1, CAST(N'2017-07-20' AS Date), 48, NULL, 45, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F46JEA', 1, CAST(N'2017-07-20' AS Date), 49, NULL, 46, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F47JHQ', 1, CAST(N'2017-07-20' AS Date), 50, NULL, 47, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F48JCB', 1, CAST(N'2017-07-20' AS Date), 51, NULL, 48, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F49JHH', 1, CAST(N'2017-07-20' AS Date), 52, NULL, 49, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F50JA#', 1, CAST(N'2017-07-20' AS Date), 53, NULL, 50, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F51JRV', 1, CAST(N'2017-07-20' AS Date), 54, NULL, 51, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F52JLN', 1, CAST(N'2017-07-20' AS Date), 55, NULL, 52, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F53JCC', 1, CAST(N'2017-07-20' AS Date), 56, NULL, 53, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F54DDD', 1, CAST(N'2017-07-20' AS Date), 57, NULL, 54, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F55JCV', 1, CAST(N'2017-07-20' AS Date), 58, NULL, 55, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F56JCS', 1, CAST(N'2017-07-20' AS Date), 59, NULL, 56, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F57JJJ', 1, CAST(N'2017-07-20' AS Date), 60, NULL, 57, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F58JGA', 1, CAST(N'2017-07-20' AS Date), 61, NULL, 58, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F59DDD', 1, CAST(N'2017-07-20' AS Date), 62, NULL, 59, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F60LBR', 1, CAST(N'2017-07-20' AS Date), 63, NULL, 60, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F61LZM', 1, CAST(N'2017-07-20' AS Date), 64, NULL, 61, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F62MSM', 1, CAST(N'2017-07-20' AS Date), 65, NULL, 62, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F63MRA', 1, CAST(N'2017-07-20' AS Date), 66, NULL, 63, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F64MBF', 1, CAST(N'2017-07-20' AS Date), 68, NULL, 64, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F65MRB', 1, CAST(N'2017-07-20' AS Date), 69, NULL, 65, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F66MQG', 1, CAST(N'2017-07-20' AS Date), 70, NULL, 66, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F67MCM', 1, CAST(N'2017-07-20' AS Date), 71, NULL, 67, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F68MRM', 1, CAST(N'2017-07-20' AS Date), 72, NULL, 68, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F69OMC', 1, CAST(N'2017-07-20' AS Date), 73, NULL, 69, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F70OFU', 1, CAST(N'2017-07-20' AS Date), 74, NULL, 70, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F71OAM', 1, CAST(N'2017-07-20' AS Date), 75, NULL, 71, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F72OVN', 1, CAST(N'2017-07-20' AS Date), 76, NULL, 72, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F73OVZ', 1, CAST(N'2017-07-20' AS Date), 77, NULL, 73, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F74OMR', 1, CAST(N'2017-07-20' AS Date), 78, NULL, 74, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F75OGM', 1, CAST(N'2017-07-20' AS Date), 79, NULL, 75, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F76ORC', 1, CAST(N'2017-07-20' AS Date), 80, NULL, 76, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F77ONP', 1, CAST(N'2017-07-20' AS Date), 81, NULL, 77, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F78PQM', 1, CAST(N'2017-07-20' AS Date), 82, NULL, 78, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F79PMS', 1, CAST(N'2017-07-20' AS Date), 83, NULL, 79, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F80RNA', 1, CAST(N'2017-07-20' AS Date), 84, NULL, 80, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F81RUB', 1, CAST(N'2017-07-20' AS Date), 85, NULL, 81, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F82RSR', 1, CAST(N'2017-07-20' AS Date), 86, NULL, 82, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F83RAA', 1, CAST(N'2017-07-20' AS Date), 87, NULL, 83, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F84RSQ', 1, CAST(N'2017-07-20' AS Date), 88, NULL, 84, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F85RRB', 1, CAST(N'2017-07-20' AS Date), 89, NULL, 85, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F86RRC', 1, CAST(N'2017-07-20' AS Date), 90, NULL, 86, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F87RAU', 1, CAST(N'2017-07-20' AS Date), 91, NULL, 87, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F88RMA', 1, CAST(N'2017-07-20' AS Date), 92, NULL, 88, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F89TDV', 1, CAST(N'2017-07-20' AS Date), 93, NULL, 89, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F90UQG', 1, CAST(N'2017-07-20' AS Date), 94, NULL, 90, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F91VQG', 1, CAST(N'2017-07-20' AS Date), 95, NULL, 91, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F92VVM', 1, CAST(N'2017-07-20' AS Date), 96, NULL, 92, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F93WTF', 1, CAST(N'2017-07-20' AS Date), 97, NULL, 93, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F94WSA', 1, CAST(N'2017-07-20' AS Date), 98, NULL, 94, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F95WAM', 1, CAST(N'2017-07-20' AS Date), 99, NULL, 95, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F96WGB', 1, CAST(N'2017-07-20' AS Date), 100, NULL, 96, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F97XPC', 1, CAST(N'2017-07-20' AS Date), 101, NULL, 97, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F98YMN', 1, CAST(N'2017-07-20' AS Date), 102, NULL, 98, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F99HFU', 1, CAST(N'2017-07-20' AS Date), 103, NULL, 99, 1, NULL)
GO
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F100ANC', 1, CAST(N'2017-07-20' AS Date), 104, NULL, 100, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F101GCP', 1, CAST(N'2017-07-20' AS Date), 105, NULL, 101, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F102CHA', 1, CAST(N'2017-07-20' AS Date), 106, NULL, 102, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F103MQA', 1, CAST(N'2017-07-20' AS Date), 107, NULL, 103, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F104RVE', 1, CAST(N'2017-07-20' AS Date), 108, NULL, 104, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F105JAN', 1, CAST(N'2017-07-20' AS Date), 109, NULL, 105, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F106GEE', 1, CAST(N'2017-07-20' AS Date), 110, NULL, 106, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F107HSA', 1, CAST(N'2017-07-20' AS Date), 111, NULL, 107, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F108HEE', 1, CAST(N'2017-07-20' AS Date), 112, NULL, 108, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F109GZC', 1, CAST(N'2017-07-20' AS Date), 113, NULL, 109, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F110GPF', 1, CAST(N'2017-07-20' AS Date), 114, NULL, 110, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F111BRO', 1, CAST(N'2017-07-20' AS Date), 115, NULL, 111, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F112JMH', 1, CAST(N'2017-07-20' AS Date), 116, NULL, 112, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F113FMV', 1, CAST(N'2017-07-20' AS Date), 117, NULL, 113, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F114SIS', 1, CAST(N'2017-07-20' AS Date), 118, NULL, 114, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F115JNV', 1, CAST(N'2017-07-20' AS Date), 119, NULL, 115, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F116AJL', 1, CAST(N'2017-07-20' AS Date), 120, NULL, 116, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F117JAN', 1, CAST(N'2017-07-20' AS Date), 121, NULL, 117, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F118RRA', 1, CAST(N'2017-07-20' AS Date), 122, NULL, 118, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F119OMR', 1, CAST(N'2017-07-20' AS Date), 123, NULL, 119, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F120ACS', 1, CAST(N'2017-07-20' AS Date), 124, NULL, 120, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F121ICS', 1, CAST(N'2017-07-20' AS Date), 125, NULL, 121, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F122JFA', 1, CAST(N'2017-07-20' AS Date), 126, NULL, 122, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F123MGU', 1, CAST(N'2017-07-20' AS Date), 127, NULL, 123, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F124JGM', 1, CAST(N'2017-07-20' AS Date), 128, NULL, 124, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F125XPC', 1, CAST(N'2017-07-20' AS Date), 129, NULL, 125, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F126ASM', 1, CAST(N'2017-07-20' AS Date), 130, NULL, 126, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F127ASQ', 1, CAST(N'2017-07-20' AS Date), 131, NULL, 127, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F128DSQ', 1, CAST(N'2017-07-20' AS Date), 132, NULL, 128, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F129JSQ', 1, CAST(N'2017-07-20' AS Date), 133, NULL, 129, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F130EUJ', 1, CAST(N'2017-07-20' AS Date), 134, NULL, 130, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F131RVB', 1, CAST(N'2017-07-20' AS Date), 135, NULL, 131, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F132PRB', 1, CAST(N'2017-07-20' AS Date), 136, NULL, 132, 1, NULL)
INSERT [dbo].[SIGEEA_Asociado] ([Codigo_Asociado], [Estado_Asociado], [FecIngreso_Asociado], [FK_Id_Persona], [FK_Id_Representante], [PK_Id_Asociado], [FK_Id_Empresa], [FK_Id_CatAsociado]) VALUES (N'F133MVV', 1, CAST(N'2017-08-12' AS Date), 142, NULL, 133, 1, NULL)
SET IDENTITY_INSERT [dbo].[SIGEEA_Asociado] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_BitPagos] ON 

INSERT [dbo].[SIGEEA_BitPagos] ([PK_Id_BitPagos], [Fecha_BitPagos], [Metodo_BitPagos], [FK_Id_Usuario], [ChqRef_BitPagos], [Total_BitPagos]) VALUES (7, CAST(N'2017-03-18 18:01:09.933' AS DateTime), 2, 3, N'230230203', 344740)
INSERT [dbo].[SIGEEA_BitPagos] ([PK_Id_BitPagos], [Fecha_BitPagos], [Metodo_BitPagos], [FK_Id_Usuario], [ChqRef_BitPagos], [Total_BitPagos]) VALUES (8, CAST(N'2017-03-18 18:03:54.323' AS DateTime), 1, 3, NULL, 647500)
INSERT [dbo].[SIGEEA_BitPagos] ([PK_Id_BitPagos], [Fecha_BitPagos], [Metodo_BitPagos], [FK_Id_Usuario], [ChqRef_BitPagos], [Total_BitPagos]) VALUES (9, CAST(N'2017-03-20 19:31:39.917' AS DateTime), 1, 3, NULL, 2444)
INSERT [dbo].[SIGEEA_BitPagos] ([PK_Id_BitPagos], [Fecha_BitPagos], [Metodo_BitPagos], [FK_Id_Usuario], [ChqRef_BitPagos], [Total_BitPagos]) VALUES (10, CAST(N'2017-03-20 23:08:06.447' AS DateTime), 2, 3, N'123456789', 96778)
INSERT [dbo].[SIGEEA_BitPagos] ([PK_Id_BitPagos], [Fecha_BitPagos], [Metodo_BitPagos], [FK_Id_Usuario], [ChqRef_BitPagos], [Total_BitPagos]) VALUES (11, CAST(N'2017-04-02 14:57:53.373' AS DateTime), 1, 3, NULL, 220818)
INSERT [dbo].[SIGEEA_BitPagos] ([PK_Id_BitPagos], [Fecha_BitPagos], [Metodo_BitPagos], [FK_Id_Usuario], [ChqRef_BitPagos], [Total_BitPagos]) VALUES (12, CAST(N'2017-04-02 14:58:08.647' AS DateTime), 1, 3, NULL, 302400)
SET IDENTITY_INSERT [dbo].[SIGEEA_BitPagos] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_Bodega] ON 

INSERT [dbo].[SIGEEA_Bodega] ([PK_Id_Bodega], [Nombre_Bodega], [Descripcion_Bodega], [FK_Id_Empresa]) VALUES (1, N'Principal', N'Frutas Para Vender', 1)
SET IDENTITY_INSERT [dbo].[SIGEEA_Bodega] OFF
INSERT [dbo].[SIGEEA_Canton] ([PK_Id_Canton], [Nombre_Canton], [FK_Id_Provincia]) VALUES (1, N'Pérez Zeledón', 1)
INSERT [dbo].[SIGEEA_Canton] ([PK_Id_Canton], [Nombre_Canton], [FK_Id_Provincia]) VALUES (2, N'San Carlos', 2)
INSERT [dbo].[SIGEEA_Canton] ([PK_Id_Canton], [Nombre_Canton], [FK_Id_Provincia]) VALUES (3, N'Belén', 3)
INSERT [dbo].[SIGEEA_Canton] ([PK_Id_Canton], [Nombre_Canton], [FK_Id_Provincia]) VALUES (4, N'Paraíso', 4)
INSERT [dbo].[SIGEEA_Canton] ([PK_Id_Canton], [Nombre_Canton], [FK_Id_Provincia]) VALUES (5, N'Escazú', 1)
INSERT [dbo].[SIGEEA_Canton] ([PK_Id_Canton], [Nombre_Canton], [FK_Id_Provincia]) VALUES (6, N'San José', 1)
INSERT [dbo].[SIGEEA_Canton] ([PK_Id_Canton], [Nombre_Canton], [FK_Id_Provincia]) VALUES (7, N'Tibás ', 1)
SET IDENTITY_INSERT [dbo].[SIGEEA_CatAsociado] ON 

INSERT [dbo].[SIGEEA_CatAsociado] ([PK_Id_CatAsociado], [CuotasProm_CatAsociado], [AsambleasProm_CatAsociado]) VALUES (1, 5, 4.666666666666667)
INSERT [dbo].[SIGEEA_CatAsociado] ([PK_Id_CatAsociado], [CuotasProm_CatAsociado], [AsambleasProm_CatAsociado]) VALUES (2, 5, 4.333333333333333)
INSERT [dbo].[SIGEEA_CatAsociado] ([PK_Id_CatAsociado], [CuotasProm_CatAsociado], [AsambleasProm_CatAsociado]) VALUES (3, 5, 5)
INSERT [dbo].[SIGEEA_CatAsociado] ([PK_Id_CatAsociado], [CuotasProm_CatAsociado], [AsambleasProm_CatAsociado]) VALUES (4, 5, 4.333333333333333)
INSERT [dbo].[SIGEEA_CatAsociado] ([PK_Id_CatAsociado], [CuotasProm_CatAsociado], [AsambleasProm_CatAsociado]) VALUES (5, 5, 4.333333333333333)
INSERT [dbo].[SIGEEA_CatAsociado] ([PK_Id_CatAsociado], [CuotasProm_CatAsociado], [AsambleasProm_CatAsociado]) VALUES (6, 5, 4.0555555555555562)
INSERT [dbo].[SIGEEA_CatAsociado] ([PK_Id_CatAsociado], [CuotasProm_CatAsociado], [AsambleasProm_CatAsociado]) VALUES (7, 5, 4.666666666666667)
INSERT [dbo].[SIGEEA_CatAsociado] ([PK_Id_CatAsociado], [CuotasProm_CatAsociado], [AsambleasProm_CatAsociado]) VALUES (8, 5, 4.3888888888888893)
INSERT [dbo].[SIGEEA_CatAsociado] ([PK_Id_CatAsociado], [CuotasProm_CatAsociado], [AsambleasProm_CatAsociado]) VALUES (9, 5, 3.6666666666666665)
INSERT [dbo].[SIGEEA_CatAsociado] ([PK_Id_CatAsociado], [CuotasProm_CatAsociado], [AsambleasProm_CatAsociado]) VALUES (10, 5, 4.666666666666667)
INSERT [dbo].[SIGEEA_CatAsociado] ([PK_Id_CatAsociado], [CuotasProm_CatAsociado], [AsambleasProm_CatAsociado]) VALUES (11, 5, 3.7777777777777777)
INSERT [dbo].[SIGEEA_CatAsociado] ([PK_Id_CatAsociado], [CuotasProm_CatAsociado], [AsambleasProm_CatAsociado]) VALUES (12, 5, 4.333333333333333)
INSERT [dbo].[SIGEEA_CatAsociado] ([PK_Id_CatAsociado], [CuotasProm_CatAsociado], [AsambleasProm_CatAsociado]) VALUES (13, 5, 5)
INSERT [dbo].[SIGEEA_CatAsociado] ([PK_Id_CatAsociado], [CuotasProm_CatAsociado], [AsambleasProm_CatAsociado]) VALUES (14, 5, 5)
SET IDENTITY_INSERT [dbo].[SIGEEA_CatAsociado] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_CatCliente] ON 

INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (1, 60000, N'30', N'60', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (2, 60000, N'30', N'60', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (3, 60000, N'30', N'60', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (4, 10000000, N'70', N'120', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (5, 10000000, N'30', N'60', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (6, 222, N'22', N'22', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (7, 90000, N'34', N'80', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (8, 50000, N'15', N'90', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (9, 33333, N'33', N'333', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (10, 123, N'123', N'123', 3)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (11, 600000, N'7', N'30', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (12, 1000000, N'15', N'30', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (13, 8888888, N'8', N'88', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (14, 9999999, N'9', N'99', 2)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (15, 65000, N'45', N'100', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (16, 111111, N'1111', N'111', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (17, 111111, N'12', N'123', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (18, 10000000, N'12', N'100', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (19, 10000, N'12', N'122', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (20, 1000000, N'7', N'30', 1)
INSERT [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente], [Limite_CatCliente], [RanPagos_CatCliente], [TieMaximo_CatCliente], [FK_Id_TipCatCliente]) VALUES (21, 200000, N'20', N'10', 1)
SET IDENTITY_INSERT [dbo].[SIGEEA_CatCliente] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_Cuota] ON 

INSERT [dbo].[SIGEEA_Cuota] ([PK_Id_Cuota], [Nombre_Cuota], [Monto_Cuota], [FecInicio_Cuota], [FecFin_Cuota], [FK_Id_Moneda]) VALUES (1, N'Anualidad 2016', 10000, CAST(N'2016-03-19 00:00:00.000' AS DateTime), CAST(N'2016-03-30 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[SIGEEA_Cuota] ([PK_Id_Cuota], [Nombre_Cuota], [Monto_Cuota], [FecInicio_Cuota], [FecFin_Cuota], [FK_Id_Moneda]) VALUES (2, N'Extraordinaria 1, 2016', 5000, CAST(N'2016-03-19 00:00:00.000' AS DateTime), CAST(N'2016-06-16 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[SIGEEA_Cuota] ([PK_Id_Cuota], [Nombre_Cuota], [Monto_Cuota], [FecInicio_Cuota], [FecFin_Cuota], [FK_Id_Moneda]) VALUES (6, N'Anualidad 2017', 10000, CAST(N'2016-03-20 00:00:00.000' AS DateTime), CAST(N'2017-03-20 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[SIGEEA_Cuota] ([PK_Id_Cuota], [Nombre_Cuota], [Monto_Cuota], [FecInicio_Cuota], [FecFin_Cuota], [FK_Id_Moneda]) VALUES (7, N'Extraordinaria 2, 2016', 6000, CAST(N'2016-05-11 00:00:00.000' AS DateTime), CAST(N'2016-09-07 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[SIGEEA_Cuota] ([PK_Id_Cuota], [Nombre_Cuota], [Monto_Cuota], [FecInicio_Cuota], [FecFin_Cuota], [FK_Id_Moneda]) VALUES (8, N'Anualidad 2017', 10000, CAST(N'2016-04-22 00:00:00.000' AS DateTime), CAST(N'2017-07-15 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[SIGEEA_Cuota] ([PK_Id_Cuota], [Nombre_Cuota], [Monto_Cuota], [FecInicio_Cuota], [FecFin_Cuota], [FK_Id_Moneda]) VALUES (9, N'Mejoramiento de planta 2016', 5000, CAST(N'2016-05-30 00:00:00.000' AS DateTime), CAST(N'2016-06-20 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[SIGEEA_Cuota] ([PK_Id_Cuota], [Nombre_Cuota], [Monto_Cuota], [FecInicio_Cuota], [FecFin_Cuota], [FK_Id_Moneda]) VALUES (10, N'Pago de camiones', 5000, CAST(N'2016-10-11 00:00:00.000' AS DateTime), CAST(N'2016-10-31 00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[SIGEEA_Cuota] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_DetFacAsociado] ON 

INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (7, 300, 290, 1, 6, 1, 5, 1, 0)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (8, 250, 230, 1, 6, 1, 5, 1, 0)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (9, 250, 230, 2, 7, 1, 5, 1, 0)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (10, 350, 330, 1, 7, 1, 5, 1, 0)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (11, 200, 0, 1, 7, 1, 5, 1, 0)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (12, 200, 190, 2, 8, 1, 5, 1, 0)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (13, 300, 290, 1, 8, 1, 5, 0, 290000)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (14, 500, 490, 2, 9, 1, 5, 1, 0)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (15, 400, 380, 1, 9, 1, 5, 1, 0)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (16, 800, 700, 1, 10, 1, 5, 0, 700000)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (17, 500, 480, 2, 10, 1, 5, 0, 576000)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (18, 200, 150, 2, 11, 1, 5, 0, 180000)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (19, 400, 380, 1, 11, 1, 5, 0, 380000)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (20, 160, 155, 2, 12, 1, 5, 0, 186000)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (21, 700, 680, 1, 12, 1, 5, 0, 680000)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (22, 500, 460, 1, 12, 1, 5, 0, 460000)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (23, 250, 245, 1, 13, 1, 1, 0, 245000)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (24, 300, 290, 1, 13, 1, 1, 0, 290000)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (25, 510, 500, 1, 14, 1, 1, 0, 500000)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (26, 600, 590, 2, 15, 1, 1, 1, 0)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (27, 500, 490, 1, 15, 1, 1, 1, 0)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (28, 200, 190, 2, 16, 4, 1, 1, 285000)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (29, 300, 290, 1, 16, 4, 1, 0, 348000)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (30, 500, 490, 1, 17, 4, 1, 0, 0)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1028, 300, -1, 1, 1016, 5, 21, 0, 0)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1029, 300, 290, 2, 1017, 5, 21, 1, 0)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1030, 600, 580, 1, 1017, 5, 21, 1, 0)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1031, 400, 390, 2, 1018, 5, 21, 1, 0)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1032, 300, 250, 1, 1018, 5, 21, 1, 0)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1033, 500, 488, 1, 1020, 10, 26, 0, 307440)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1034, 500, 403, 1, 1021, 10, 25, 0, 253890)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1035, 300, -1, 1, 1022, 10, 21, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1036, 100, -1, 1, 1023, 10, 21, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1037, 180, -1, 1, 1024, 10, 21, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1038, 140, -1, 1, 1024, 10, 21, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1039, 230, -1, 1, 1025, 10, 21, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1040, 200, 150, 1, 1026, 10, 21, 0, 94500)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1041, 120, -1, 2, 1027, 10, 21, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1042, 800, -1, 1, 1027, 10, 21, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1043, 500, -1, 1, 1027, 10, 21, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1044, 250, -1, 2, 1027, 10, 21, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1045, 100, -1, 1, 1028, 10, 21, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1046, 600, -1, 1, 1029, 10, 21, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1047, 150, -1, 1, 1030, 10, 21, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1048, 2000, -1, 1, 1031, 10, 21, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1049, 100, -1, 1, 1032, 10, 21, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1050, 100, -1, 2, 1033, 10, 21, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1051, 200, -1, 1, 1033, 10, 21, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1052, 2465, -1, 1, 1050, 10, 2, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1053, 246.5, -1, 1, 1051, 10, 2, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1054, 246, -1, 1, 1052, 10, 2, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1055, 2465, -1, 1, 1053, 10, 2, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1056, 2465, -1, 1, 1054, 10, 2, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1057, 2465, -1, 1, 1055, 18, 2, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1058, 2465, -1, 1, 1056, 18, 2, 0, NULL)
INSERT [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado], [CanTotal_DetFacAsociado], [CanNeta_DetFacAsociado], [Mercado_DetFacAsociado], [FK_Id_FacAsociado], [FK_Id_PreProCompra], [FK_Id_Lote], [Cancelado_DetFacAsociado], [Saldo_DetFacAsociado]) VALUES (1059, 238, -1, 1, 1057, 18, 3, 0, NULL)
SET IDENTITY_INSERT [dbo].[SIGEEA_DetFacAsociado] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_DetInvProductos] ON 

INSERT [dbo].[SIGEEA_DetInvProductos] ([PK_Id_DetInvProductos], [Cantidad_DetInvProductos], [FK_Id_TipProducto], [FK_Id_InvProductos], [FK_Id_UniMedida]) VALUES (1, 42971, 1, 1, 2)
INSERT [dbo].[SIGEEA_DetInvProductos] ([PK_Id_DetInvProductos], [Cantidad_DetInvProductos], [FK_Id_TipProducto], [FK_Id_InvProductos], [FK_Id_UniMedida]) VALUES (2, 20455, 2, 1, 2)
SET IDENTITY_INSERT [dbo].[SIGEEA_DetInvProductos] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_Direccion] ON 

INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1, N'750 metros noroeste de la Escuela Valencia', 11, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (4, N'San Andrés', 1, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (5, N'Pueblo Nuevo', 4, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (6, N'San Pedro', 7, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (7, N'SAN RAFAEL', 1, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (8, N'700 mts. noroeste de la Escuela Valencia.', 11, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (9, N'San Ramón Norte', 11, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (10, N'Sagrada Familia', 1, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (11, N'Brasilia', 1, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1013, N'Un kilometro al sur de san rafael norte', 1, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1014, N'prueba', 1, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1015, N'Valencia', 11, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1016, N'Por ahí', 1, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1017, N'por ahí', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1018, N'Por la escuela de Daniel Flores', 3, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1019, N'800m Noroeste del Liceo San Antonio Pegivalle PZ
', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1020, N'900m norte de la Entrada a Santiago por Convento', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1021, N'800m norte de Escuela Pueblo Nuevo', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1022, N'2km sur del Salon La Barra, La Fortuna de San Pedro', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1023, N'1km sur del Salon La Barra, La Fortuna de San Pedro.', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1024, N'500m hacia Cristo Rey', 3, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1025, N'1km este del Tanque del AyA, San Gabriel (Camino a San Antonio)', 7, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1026, N'1km este del Tanque del AyA, San Gabriel (Camino a San Antonio)', 7, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1027, N'600m oeste del Bar Hamburgo, Pueblo Nuevo', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1028, N'1km este de la Escuela El Roble', 1, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1029, N'800m este de la Escuela de San Pablo', 6, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1030, N'600m este de la Iglesia Católica, Santo Domingo', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1031, N'950m sur de la Escuela de Pueblo Nuevo', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1032, N'700m este de la Escuela de Barrio Los Angeles', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1033, N'50m sur Abastecedor Los Pinos, Mollejoncitos', 6, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1034, N'50m sur del Abastecedor Los Pinos, Mollejoncitos', 6, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1035, N'200m norte de la Plaza de Deportes', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1036, N'100m norte de la Plaza de Deportes, Pueblo Nuevo', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1037, N'400m este del Ebais del Carmen de Cajon', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1038, N'300m este de Bar El Hamburgo, Pueblo Nuevo', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1039, N'700m este del Templo Católico de San Pedrito', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1040, N'1km sur de la Escuela de San Pedrito', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1041, N'1km sur y 600m este de la Escuela de San Pedrito', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1042, N'1km sur y 600m este de la Escuela de San Pedrito', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1043, N'100m este del Templo Católico de San Miguel', 7, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1044, N'400m oeste del Abatecedor La Valencia, Santa Elena', 2, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1045, N'50m sur del Abastecedor Los Pinos, Mollejoncitos', 6, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1046, N'1km sur de las Bodega del CNP, Barrio San Francisco', 3, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1047, N'2km suroeste de la Escuela de San Gabriel', 7, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1048, N'350m oeste del Templo Católico, Santiago', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1049, N'800m sur de la Iglesia Católica', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1050, N'1km norte del Templo Católico , San Ramón Norte (lado izquierdo)', 11, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1051, N'1km suroeste de la Escuela de Tambor', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1052, N'750m este del Templo Católico de San Pedrito', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1053, N'150m sureste de la Escuela de San Francisco', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1054, N'200m oeste del Ebais La Guaria, San Pedro', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1055, N'200m norte del Restaurante Hawaii, Las Mercedes', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1056, N'100m sur de la Escuela de San Miguel', 7, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1057, N'800m sur de las Bodegas del CNP, Barrio San Francisco', 3, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1058, N'500m noroeste de la Escuela Bolivia de Platanares', 6, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1059, N'200m oeste del Bar El Hamburgo, Pueblo Nuevo', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1060, N'800m sur de la Escuela de Pueblo Nuevo', 7, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1061, N'800m norte de la Escuela de Pueblo Nuevo', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1062, N'150m sur de la Escuela de San Pedro', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1063, N'200m norte de la Escuela La Hermosa', 2, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1064, N'300m este de la cancha de futbol, Bolivia', 6, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1065, N'1km norte de la Escuela de Tambor', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1066, N'1.5km sur de la Escuela de Santiago', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1067, N'125moestede la Plaza de Deportes, Pueblo Nuevo', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1068, N'900m sur de la Escuela de Pueblo Nuevo', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1069, N'700m suroeste de la Escuela El Roble', 1, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1070, N'Frente a la Escuela de Pueblo Nuevo', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1071, N'500m sur de la Escuela de Pueblo Nuevo', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1072, N'800m oeste del Ebias La Guaria', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1073, N'400m este y 100m sur del Cementaerio, La Angostura', 1, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1074, N'1km sur de la Escuela de Pueblo Nuevo', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1075, N'Frente al Colegio Las Mercedes', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1076, N'200m sur y 600m este del Liceo de San Pedro', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1077, N'600m oeste de Bar El Hamburgo, Pueblo Nuevo', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1078, N'200m norte de la Plaza de Deportes', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1079, N'50m sur Abastecedor Los Pinos, Mollejoncitos', 6, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1080, N'950m sur Escuela Pueblo Nuevo', 8, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1081, N'900m norte de la Entrada de Santiago, por Convento', 5, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1082, N'300m este de la Cancha de Futbol, Bolivia', 6, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1083, N'300m norte y 500m este San Antonio', 7, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1084, N'100m sur de la Escuela de San Miguel', 7, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1085, N'1km este del tanque del AyA, San Gabriel, camino a San Antonio', 7, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1086, N'2km sur y 600m este de la Escuela de San Pablo, camino a San Carlos, lado izquierdo de la entrada', 7, NULL)
INSERT [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion], [Detalles_Direccion], [FK_Id_Distrito], [FK_Id_CodPostal]) VALUES (1087, N'2km sureste de la Escuela China Kicha', 7, NULL)
SET IDENTITY_INSERT [dbo].[SIGEEA_Direccion] OFF
INSERT [dbo].[SIGEEA_Distrito] ([PK_Id_Distrito], [Nombre_Distrito], [FK_Id_Canton]) VALUES (1, N'San Isidro', 1)
INSERT [dbo].[SIGEEA_Distrito] ([PK_Id_Distrito], [Nombre_Distrito], [FK_Id_Canton]) VALUES (2, N'General Viejo', 1)
INSERT [dbo].[SIGEEA_Distrito] ([PK_Id_Distrito], [Nombre_Distrito], [FK_Id_Canton]) VALUES (3, N'Daniel Flores', 1)
INSERT [dbo].[SIGEEA_Distrito] ([PK_Id_Distrito], [Nombre_Distrito], [FK_Id_Canton]) VALUES (4, N'Rivas', 1)
INSERT [dbo].[SIGEEA_Distrito] ([PK_Id_Distrito], [Nombre_Distrito], [FK_Id_Canton]) VALUES (5, N'San Pedro', 1)
INSERT [dbo].[SIGEEA_Distrito] ([PK_Id_Distrito], [Nombre_Distrito], [FK_Id_Canton]) VALUES (6, N'Platanares', 1)
INSERT [dbo].[SIGEEA_Distrito] ([PK_Id_Distrito], [Nombre_Distrito], [FK_Id_Canton]) VALUES (7, N'Pejibaye', 1)
INSERT [dbo].[SIGEEA_Distrito] ([PK_Id_Distrito], [Nombre_Distrito], [FK_Id_Canton]) VALUES (8, N'Cajón', 1)
INSERT [dbo].[SIGEEA_Distrito] ([PK_Id_Distrito], [Nombre_Distrito], [FK_Id_Canton]) VALUES (9, N'Barú', 1)
INSERT [dbo].[SIGEEA_Distrito] ([PK_Id_Distrito], [Nombre_Distrito], [FK_Id_Canton]) VALUES (10, N'Río Nuevo', 1)
INSERT [dbo].[SIGEEA_Distrito] ([PK_Id_Distrito], [Nombre_Distrito], [FK_Id_Canton]) VALUES (11, N'Páramo', 1)
SET IDENTITY_INSERT [dbo].[SIGEEA_Empleado] ON 

INSERT [dbo].[SIGEEA_Empleado] ([FK_Id_Persona], [FK_Id_Escolaridad], [PK_Id_Empleado], [Estado_Empleado], [FK_Id_Empresa]) VALUES (9, 2, 6, 1, 1)
INSERT [dbo].[SIGEEA_Empleado] ([FK_Id_Persona], [FK_Id_Escolaridad], [PK_Id_Empleado], [Estado_Empleado], [FK_Id_Empresa]) VALUES (47, 3, 7, 1, 1)
INSERT [dbo].[SIGEEA_Empleado] ([FK_Id_Persona], [FK_Id_Escolaridad], [PK_Id_Empleado], [Estado_Empleado], [FK_Id_Empresa]) VALUES (137, 8, 8, 1, 1)
INSERT [dbo].[SIGEEA_Empleado] ([FK_Id_Persona], [FK_Id_Escolaridad], [PK_Id_Empleado], [Estado_Empleado], [FK_Id_Empresa]) VALUES (143, 9, 9, 1, 1)
SET IDENTITY_INSERT [dbo].[SIGEEA_Empleado] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_Empresa] ON 

INSERT [dbo].[SIGEEA_Empresa] ([PK_Id_Empresa], [Nombre_Empresa], [CedJuridica_Empresa], [Direccion_Empresa], [Telefono_Empresa], [Correo_Empresa]) VALUES (1, N'ASOFRUBRUNCA', N'3002411544', N'Pueblo Nuevo de Cajón, Pérez Zeledón, San José', N'21001313', N'info@costafresh.co.cr')
SET IDENTITY_INSERT [dbo].[SIGEEA_Empresa] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_Escolaridad] ON 

INSERT [dbo].[SIGEEA_Escolaridad] ([Leer_Escolaridad], [Escribir_Escolaridad], [GradoAcad_Escolaridad], [Observaciones_Escolaridad], [PK_Id_Escolaridad]) VALUES (1, 1, 2, N'', 1)
INSERT [dbo].[SIGEEA_Escolaridad] ([Leer_Escolaridad], [Escribir_Escolaridad], [GradoAcad_Escolaridad], [Observaciones_Escolaridad], [PK_Id_Escolaridad]) VALUES (1, 1, 2, N'', 2)
INSERT [dbo].[SIGEEA_Escolaridad] ([Leer_Escolaridad], [Escribir_Escolaridad], [GradoAcad_Escolaridad], [Observaciones_Escolaridad], [PK_Id_Escolaridad]) VALUES (1, 1, 5, N'Ninguna', 3)
INSERT [dbo].[SIGEEA_Escolaridad] ([Leer_Escolaridad], [Escribir_Escolaridad], [GradoAcad_Escolaridad], [Observaciones_Escolaridad], [PK_Id_Escolaridad]) VALUES (1, 1, 3, N'', 4)
INSERT [dbo].[SIGEEA_Escolaridad] ([Leer_Escolaridad], [Escribir_Escolaridad], [GradoAcad_Escolaridad], [Observaciones_Escolaridad], [PK_Id_Escolaridad]) VALUES (1, 1, 3, N'Noveno año', 5)
INSERT [dbo].[SIGEEA_Escolaridad] ([Leer_Escolaridad], [Escribir_Escolaridad], [GradoAcad_Escolaridad], [Observaciones_Escolaridad], [PK_Id_Escolaridad]) VALUES (1, 1, 2, N'nada', 6)
INSERT [dbo].[SIGEEA_Escolaridad] ([Leer_Escolaridad], [Escribir_Escolaridad], [GradoAcad_Escolaridad], [Observaciones_Escolaridad], [PK_Id_Escolaridad]) VALUES (1, 1, 3, N'No tengo nada que decir', 7)
INSERT [dbo].[SIGEEA_Escolaridad] ([Leer_Escolaridad], [Escribir_Escolaridad], [GradoAcad_Escolaridad], [Observaciones_Escolaridad], [PK_Id_Escolaridad]) VALUES (1, 1, 6, N'administrador del sistema', 8)
INSERT [dbo].[SIGEEA_Escolaridad] ([Leer_Escolaridad], [Escribir_Escolaridad], [GradoAcad_Escolaridad], [Observaciones_Escolaridad], [PK_Id_Escolaridad]) VALUES (1, 1, 6, N'', 9)
SET IDENTITY_INSERT [dbo].[SIGEEA_Escolaridad] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_FacAsociado] ON 

INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (6, CAST(N'2016-04-27' AS Date), CAST(N'2016-05-15' AS Date), 550, 520, 0, NULL, 3, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (7, CAST(N'2016-04-27' AS Date), CAST(N'2016-05-15' AS Date), 800, 560, 0, NULL, 3, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (8, CAST(N'2016-04-27' AS Date), CAST(N'0001-01-01' AS Date), 500, 480, 1, NULL, 3, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (9, CAST(N'2016-04-27' AS Date), CAST(N'2016-05-15' AS Date), 900, 870, 0, NULL, 3, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (10, CAST(N'2016-04-27' AS Date), CAST(N'0001-01-01' AS Date), 1300, 1180, 1, NULL, 3, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (11, CAST(N'2016-04-27' AS Date), CAST(N'0001-01-01' AS Date), 600, 530, 1, NULL, 3, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (12, CAST(N'2016-04-30' AS Date), CAST(N'0001-01-01' AS Date), 1360, 1295, 1, NULL, 3, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (13, CAST(N'2016-05-29' AS Date), CAST(N'0001-01-01' AS Date), 550, 535, 1, NULL, 3, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (14, CAST(N'2016-05-29' AS Date), CAST(N'0001-01-01' AS Date), 50000, 45000, 1, NULL, 3, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (15, CAST(N'2016-05-29' AS Date), CAST(N'2016-05-30' AS Date), 1100, 1080, 0, NULL, 3, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (16, CAST(N'2016-05-30' AS Date), CAST(N'0001-01-01' AS Date), 500, 480, 1, NULL, 3, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (17, CAST(N'2016-05-30' AS Date), CAST(N'0001-01-01' AS Date), 500, 490, 1, NULL, 3, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1016, CAST(N'2016-06-13' AS Date), CAST(N'0001-01-01' AS Date), 300, -1, 1, NULL, 2, 1, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1017, CAST(N'2016-09-11' AS Date), CAST(N'2016-09-11' AS Date), 900, 870, 0, NULL, 2, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1018, CAST(N'2016-10-11' AS Date), CAST(N'2016-10-11' AS Date), 700, 640, 0, NULL, 2, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1020, CAST(N'2016-10-27' AS Date), CAST(N'0001-01-01' AS Date), 500, 488, 1, NULL, 13, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1021, CAST(N'2016-10-27' AS Date), CAST(N'0001-01-01' AS Date), 500, 403, 1, NULL, 13, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1022, CAST(N'2017-03-05' AS Date), CAST(N'0001-01-01' AS Date), 300, -1, 1, NULL, 2, 1, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1023, CAST(N'2017-03-05' AS Date), CAST(N'0001-01-01' AS Date), 100, -1, 1, NULL, 2, 1, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1024, CAST(N'2017-03-05' AS Date), CAST(N'0001-01-01' AS Date), 320, -1, 1, NULL, 2, 1, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1025, CAST(N'2017-03-05' AS Date), CAST(N'0001-01-01' AS Date), 230, -1, 1, NULL, 2, 1, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1026, CAST(N'2017-03-05' AS Date), CAST(N'0001-01-01' AS Date), 200, 150, 1, NULL, 2, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1027, CAST(N'2017-03-07' AS Date), CAST(N'0001-01-01' AS Date), 1670, -1, 1, NULL, 2, 1, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1028, CAST(N'2017-03-07' AS Date), CAST(N'0001-01-01' AS Date), 100, -1, 1, NULL, 2, 1, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1029, CAST(N'2017-03-07' AS Date), CAST(N'0001-01-01' AS Date), 600, -1, 1, NULL, 2, 1, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1030, CAST(N'2017-03-07' AS Date), CAST(N'0001-01-01' AS Date), 150, -1, 1, NULL, 2, 1, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1031, CAST(N'2017-03-07' AS Date), CAST(N'0001-01-01' AS Date), 2000, -1, 1, NULL, 2, 1, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1032, CAST(N'2017-03-07' AS Date), CAST(N'0001-01-01' AS Date), 100, -1, 1, NULL, 2, 1, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1033, CAST(N'2017-03-07' AS Date), CAST(N'0001-01-01' AS Date), 300, -1, 1, NULL, 2, 1, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1042, CAST(N'2017-03-16' AS Date), CAST(N'2017-03-16' AS Date), 850, 790, 0, NULL, 2, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1043, CAST(N'2017-03-16' AS Date), CAST(N'2017-03-18' AS Date), 500, 480, 0, NULL, 2, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1044, CAST(N'2017-03-16' AS Date), CAST(N'2017-03-16' AS Date), 1250, 1220, 0, NULL, 2, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1045, CAST(N'2017-03-18' AS Date), CAST(N'2017-03-18' AS Date), 600, 575, 0, NULL, 2, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1046, CAST(N'2017-03-18' AS Date), CAST(N'2017-04-02' AS Date), 500, 480, 0, NULL, 2, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1047, CAST(N'2017-03-20' AS Date), CAST(N'2017-04-02' AS Date), 500, 480, 0, NULL, 2, 0, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1049, CAST(N'2017-03-20' AS Date), CAST(N'0001-01-01' AS Date), 540, -1, 1, NULL, 2, 1, 0)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1050, CAST(N'2017-08-22' AS Date), CAST(N'0001-01-01' AS Date), 2465, -1, 1, NULL, 85, 1, NULL)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1051, CAST(N'2017-08-22' AS Date), CAST(N'0001-01-01' AS Date), 246.5, -1, 1, NULL, 85, 1, NULL)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1052, CAST(N'2017-08-22' AS Date), CAST(N'0001-01-01' AS Date), 246, -1, 1, NULL, 85, 1, NULL)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1053, CAST(N'2017-08-23' AS Date), CAST(N'0001-01-01' AS Date), 2465, -1, 1, NULL, 85, 1, NULL)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1054, CAST(N'2017-08-23' AS Date), CAST(N'0001-01-01' AS Date), 2465, -1, 1, NULL, 85, 1, 1)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1055, CAST(N'2017-08-24' AS Date), CAST(N'0001-01-01' AS Date), 2465, -1, 1, NULL, 85, 1, 2)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1056, CAST(N'2017-08-24' AS Date), CAST(N'0001-01-01' AS Date), 2465, -1, 1, NULL, 85, 1, 3)
INSERT [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado], [FecEntrega_FacAsociado], [FecPago_FacAsociado], [CanTotal_FacAsociado], [CanNeta_FacAsociado], [Estado_FacAsociado], [Observaciones_FacAsociado], [FK_Id_Asociado], [Incompleta_FacAsociado], [Numero_FacAsociado]) VALUES (1057, CAST(N'2017-08-24' AS Date), CAST(N'0001-01-01' AS Date), 238, -1, 1, NULL, 47, 1, 4)
SET IDENTITY_INSERT [dbo].[SIGEEA_FacAsociado] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_Finca] ON 

INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (1, 0, N'F1ASA', NULL, 1, N'1', N'Adrian', N'', N'Solano', N'Arias', N'', 8, CAST(N'2017-08-05 15:18:12.673' AS DateTime), 1000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (2, 0, N'F2RRB', 1021, 85, N'1', N'Rodrigo', N'', N'Rodriguez', N'Bonilla', N'', 8, CAST(N'2017-08-12 14:09:05.613' AS DateTime), 10000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (3, 0, N'F3ACU', NULL, 2, N'1', N'Alfredo', N'', N'Chavez', N'Ugalde', N'', 8, CAST(N'2017-08-22 14:21:20.477' AS DateTime), 35000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (4, 0, N'F4ASC', NULL, 4, N'1', N'Alvaro', N'', N'Salazar', N'Chinchicha', N'', 8, CAST(N'2017-08-22 14:22:03.967' AS DateTime), 35000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (5, 0, N'F5ASC', NULL, 4, N'1', N'Alvaro', N'', N'Salazar', N'Chinchicha', N'', 8, CAST(N'2017-08-22 14:22:22.137' AS DateTime), 3500)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (6, 0, N'F6BRC', NULL, 9, N'1', N'Bolivar', N'', N'Rivera', N'Cordero', N'', 8, CAST(N'2017-08-22 14:23:44.063' AS DateTime), 50000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (7, 0, N'F7CRB', NULL, 13, N'1', N'Cristian', N'', N'Romero', N'Bonilla', N'', 8, CAST(N'2017-08-22 14:24:25.217' AS DateTime), 70000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (8, 0, N'F8DBB', 1077, 14, N'1', N'Danilo', N'', N'Barboza', N'Barboza', N'', 8, CAST(N'2017-08-22 14:25:36.607' AS DateTime), 6000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (9, 0, N'F9EBR', NULL, 19, N'1', N'Emieht', N'', N'Barrantes', N'Rojas', N'', 8, CAST(N'2017-08-22 14:27:12.687' AS DateTime), 4500)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (10, 0, N'F10FQG', NULL, 25, N'1', N'Freddy', N'', N'Quesada', N'Gonzales', N'', 8, CAST(N'2017-08-22 14:34:51.267' AS DateTime), 10500)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (11, 0, N'F11JQM', NULL, 43, N'1', N'Jorge', N'', N'Quiel', N'Molina', N'', 8, CAST(N'2017-08-22 14:36:02.553' AS DateTime), 10000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (12, 0, N'F12JCD', NULL, 44, N'1', N'Jorge', N'Luis', N'Castro', N'Dias', N'', 8, CAST(N'2017-08-22 14:36:40.257' AS DateTime), 14000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (13, 0, N'F13JEA', 1078, 46, N'1', N'Jose', N'', N'Estrada', N'Abarca', N'', 8, CAST(N'2017-08-22 14:37:13.530' AS DateTime), 6000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (14, 0, N'F14JCB', NULL, 48, N'1', N'Jose', N'', N'Cruz', N'Beita', N'', 8, CAST(N'2017-08-22 14:38:33.160' AS DateTime), 7000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (15, 0, N'F15JLN', 1079, 52, N'1', N'Jose', N'Luis', N'Leiva', N'Navarro', N'', 8, CAST(N'2017-08-22 14:38:54.617' AS DateTime), 10000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (16, 0, N'F16JCC', 1080, 53, N'1', N'Jose', N'Luis', N'Corrales', N'Cespedes', N'', 8, CAST(N'2017-08-22 14:39:50.273' AS DateTime), 28000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (17, 0, N'F17JJJ', NULL, 57, N'1', N'Juan', N'', N'Jimenez', N'Jimenez', N'', 8, CAST(N'2017-08-22 14:44:44.797' AS DateTime), 30000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (18, 0, N'F18MQG', NULL, 66, N'1', N'Miguel', N'', N'Quesada', N'Gonzales', N'', 8, CAST(N'2017-08-22 14:45:34.110' AS DateTime), 7000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (19, 0, N'F19MCM', 1081, 67, N'1', N'Miguel', N'Angel', N'Cartin', N'Mora', N'', 8, CAST(N'2017-08-22 14:46:12.820' AS DateTime), 18100)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (20, 0, N'F20RSR', 1082, 82, N'1', N'Randil', N'', N'Salazar', N'Rodriguez', N'', 8, CAST(N'2017-08-22 14:47:40.700' AS DateTime), 20000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (21, 0, N'F21WAM', 1083, 95, N'1', N'William', N'', N'Araya', N'Muñoz', N'', 8, CAST(N'2017-08-22 14:48:39.357' AS DateTime), 5500)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (22, 0, N'F22MQA', 1084, 103, N'1', N'Miguel', N'', N'Quiros', N'Avila', N'', 8, CAST(N'2017-08-22 14:50:23.077' AS DateTime), 10000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (23, 0, N'F23JAN', 1085, 105, N'1', N'Jose', N'Alejandro', N'Asofeifa', N'Navarro', N'', 8, CAST(N'2017-08-22 14:51:06.953' AS DateTime), 14000)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (24, 0, N'F24AJL', 1086, 116, N'1', N'Arturo', N'', N'Jimenez', N'Lopez', N'', 8, CAST(N'2017-08-22 14:53:19.347' AS DateTime), 40500)
INSERT [dbo].[SIGEEA_Finca] ([PK_Id_Finca], [Alquilada_Finca], [Codigo_Finca], [FK_Id_Direccion], [FK_Id_Asociado], [Estado_Finca], [PriNomDuenno_Finca], [SegNomDuenno_Finca], [PriApeDuenno_Finca], [SegApeDuenno_Finca], [NumRegistro_Finca], [FK_Id_Empleado], [FecRegistro_Finca], [Tamanno_Finca]) VALUES (25, 0, N'F25JHQ', 1087, 47, N'1', N'Jose', N'', N'Hidalgo', N'Quintero', N'', 8, CAST(N'2017-08-22 15:24:59.993' AS DateTime), 10000)
SET IDENTITY_INSERT [dbo].[SIGEEA_Finca] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_InvProductos] ON 

INSERT [dbo].[SIGEEA_InvProductos] ([PK_Id_InvProductos], [Descripcion_InvProductos], [FK_Id_Bodega]) VALUES (1, N'A la venta', 1)
SET IDENTITY_INSERT [dbo].[SIGEEA_InvProductos] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_Lote] ON 

INSERT [dbo].[SIGEEA_Lote] ([PK_Id_Lote], [Codigo_Lote], [Tamanno_Lote], [FK_Id_Finca], [Estado_Lote]) VALUES (1, N'F1L1', N'200       ', 1, 1)
INSERT [dbo].[SIGEEA_Lote] ([PK_Id_Lote], [Codigo_Lote], [Tamanno_Lote], [FK_Id_Finca], [Estado_Lote]) VALUES (2, N'F2L1', N'500       ', 2, 1)
INSERT [dbo].[SIGEEA_Lote] ([PK_Id_Lote], [Codigo_Lote], [Tamanno_Lote], [FK_Id_Finca], [Estado_Lote]) VALUES (3, N'F25L1', N'1000      ', 25, 1)
SET IDENTITY_INSERT [dbo].[SIGEEA_Lote] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_Modulo] ON 

INSERT [dbo].[SIGEEA_Modulo] ([PK_Id_Modulo], [Nombre_Modulo]) VALUES (1, N'Asociados')
INSERT [dbo].[SIGEEA_Modulo] ([PK_Id_Modulo], [Nombre_Modulo]) VALUES (2, N'Clientes')
INSERT [dbo].[SIGEEA_Modulo] ([PK_Id_Modulo], [Nombre_Modulo]) VALUES (3, N'Empleados')
INSERT [dbo].[SIGEEA_Modulo] ([PK_Id_Modulo], [Nombre_Modulo]) VALUES (5, N'Productos')
INSERT [dbo].[SIGEEA_Modulo] ([PK_Id_Modulo], [Nombre_Modulo]) VALUES (6, N'Insumos')
INSERT [dbo].[SIGEEA_Modulo] ([PK_Id_Modulo], [Nombre_Modulo]) VALUES (7, N'Fincas')
INSERT [dbo].[SIGEEA_Modulo] ([PK_Id_Modulo], [Nombre_Modulo]) VALUES (8, N'Usuarios')
INSERT [dbo].[SIGEEA_Modulo] ([PK_Id_Modulo], [Nombre_Modulo]) VALUES (9, N'Reportes')
SET IDENTITY_INSERT [dbo].[SIGEEA_Modulo] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_Moneda] ON 

INSERT [dbo].[SIGEEA_Moneda] ([PK_Id_Moneda], [PreCompra_Moneda], [PreVenta_Moneda], [Nombre_Moneda], [FK_Id_Empresa], [Simbolo_Moneda]) VALUES (1, 568.5, 580.5, N'Dolar', 1, N'$')
INSERT [dbo].[SIGEEA_Moneda] ([PK_Id_Moneda], [PreCompra_Moneda], [PreVenta_Moneda], [Nombre_Moneda], [FK_Id_Empresa], [Simbolo_Moneda]) VALUES (2, 1, 1, N'Colón', 1, N'¢')
SET IDENTITY_INSERT [dbo].[SIGEEA_Moneda] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_Nacionalidad] ON 

INSERT [dbo].[SIGEEA_Nacionalidad] ([PK_Id_Nacionalidad], [Nombre_Nacionalidad]) VALUES (4, N'Canadiense')
INSERT [dbo].[SIGEEA_Nacionalidad] ([PK_Id_Nacionalidad], [Nombre_Nacionalidad]) VALUES (1, N'Costarricense')
INSERT [dbo].[SIGEEA_Nacionalidad] ([PK_Id_Nacionalidad], [Nombre_Nacionalidad]) VALUES (6, N'Española')
INSERT [dbo].[SIGEEA_Nacionalidad] ([PK_Id_Nacionalidad], [Nombre_Nacionalidad]) VALUES (3, N'Estadounidense')
INSERT [dbo].[SIGEEA_Nacionalidad] ([PK_Id_Nacionalidad], [Nombre_Nacionalidad]) VALUES (2, N'Nicaragüense ')
INSERT [dbo].[SIGEEA_Nacionalidad] ([PK_Id_Nacionalidad], [Nombre_Nacionalidad]) VALUES (5, N'Panameña')
INSERT [dbo].[SIGEEA_Nacionalidad] ([PK_Id_Nacionalidad], [Nombre_Nacionalidad]) VALUES (7, N'Portugues')
INSERT [dbo].[SIGEEA_Nacionalidad] ([PK_Id_Nacionalidad], [Nombre_Nacionalidad]) VALUES (8, N'Tailandés')
SET IDENTITY_INSERT [dbo].[SIGEEA_Nacionalidad] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_Pais] ON 

INSERT [dbo].[SIGEEA_Pais] ([PK_Id_Pais], [Nombre_Pais]) VALUES (1, N'Costa Rica')
INSERT [dbo].[SIGEEA_Pais] ([PK_Id_Pais], [Nombre_Pais]) VALUES (2, N'Estados Unidos')
INSERT [dbo].[SIGEEA_Pais] ([PK_Id_Pais], [Nombre_Pais]) VALUES (3, N'Canadá')
INSERT [dbo].[SIGEEA_Pais] ([PK_Id_Pais], [Nombre_Pais]) VALUES (4, N'España')
INSERT [dbo].[SIGEEA_Pais] ([PK_Id_Pais], [Nombre_Pais]) VALUES (5, N'Italia')
SET IDENTITY_INSERT [dbo].[SIGEEA_Pais] OFF
INSERT [dbo].[SIGEEA_Permiso] ([PK_Id_Permiso], [Nombre_Permiso]) VALUES (1, N'Escritura')
INSERT [dbo].[SIGEEA_Permiso] ([PK_Id_Permiso], [Nombre_Permiso]) VALUES (2, N'Lectura')
INSERT [dbo].[SIGEEA_Permiso] ([PK_Id_Permiso], [Nombre_Permiso]) VALUES (3, N'Todo poderoso')
SET IDENTITY_INSERT [dbo].[SIGEEA_Permiso_SubModulo] ON 

INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 30, 29)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 32, 30)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 11, 53)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 12, 88)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 13, 89)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 14, 90)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 8, 91)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 10, 92)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 16, 93)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 18, 94)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 20, 95)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 26, 98)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 28, 99)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 29, 100)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 22, 101)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 7, 105)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 6, 106)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 20, 107)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 24, 114)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 25, 115)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 12, 122)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 8, 150)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 9, 151)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 10, 152)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 11, 153)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 16, 154)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 17, 155)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 18, 156)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 19, 157)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 20, 158)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 21, 159)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 24, 160)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 25, 161)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 26, 162)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 27, 163)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 28, 164)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 29, 165)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 22, 166)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 23, 167)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 30, 168)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 32, 169)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 1, 170)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 2, 171)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 3, 172)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 5, 173)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 6, 174)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 7, 175)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 12, 176)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 13, 177)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 14, 178)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 8, 179)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 9, 180)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 10, 181)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 11, 182)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 26, 183)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 27, 184)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 28, 185)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 29, 186)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 24, 187)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 25, 188)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 22, 189)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 23, 190)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 30, 191)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (2, 32, 192)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 1, 193)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 2, 194)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 3, 195)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 5, 196)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 6, 197)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 7, 198)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 13, 199)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 14, 200)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 1, 201)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 2, 202)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 3, 203)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (1, 5, 204)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 33, 205)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 34, 209)
INSERT [dbo].[SIGEEA_Permiso_SubModulo] ([FK_Id_Permiso], [FK_Id_SubModulo], [PK_Id_PerSubmodulo]) VALUES (3, 35, 210)
SET IDENTITY_INSERT [dbo].[SIGEEA_Permiso_SubModulo] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_Persona] ON 

INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Adrian', N'', N'Solano', N'Arias', N'M', CAST(N'0001-01-01' AS Date), 1068, 1, 1, 1, NULL, N'204610171')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Alfredo', N'', N'Chavez', N'Ugalde', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 2, 1, NULL, N'502310411')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Alfredo', N'Isidro', N'Mora', N'Zúñiga', N'M', CAST(N'0001-01-01' AS Date), 1051, 1, 3, 1, NULL, N'105590190')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Alvaro', N'', N'Salazar', N'Chinchicha', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 4, 1, NULL, N'103620559')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Amalia', N'', N'Vargas', N'Piedra', N'F', CAST(N'0001-01-01' AS Date), 1073, 1, 5, 1, NULL, N'104010513')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Anael', N'', N'Fonseca', N'Romero', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 6, 1, NULL, N'01')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Antonio', N'', N'Zamora', N'Quesada', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 7, 1, NULL, N'203220993')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Arnelio', N'', N'Altamirano', N'Barrantes', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 8, 1, NULL, N'601980914')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Luis', N'', N'Barrantes', N'Mora', N'M', CAST(N'1995-02-28' AS Date), NULL, 1, 9, 1, NULL, N'115990900')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Bolivar', N'', N'Rivera', N'Cordero', N'M', CAST(N'0001-01-01' AS Date), 1057, 1, 10, 1, NULL, N'106830263')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Carlos', N'', N'Granados', N'Vega', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 11, 1, NULL, N'104300326')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Carlos', N'', N'Araya', N'Elizondo', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 12, 1, NULL, N'202300640')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Cesar', N'', N'Torres', N'Mesen', N'M', CAST(N'0001-01-01' AS Date), 1070, 1, 13, 1, NULL, N'108910244')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Cristian', N'', N'Romero', N'Bonilla', N'M', CAST(N'0001-01-01' AS Date), 1063, 1, 14, 1, NULL, N'112010686')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Danilo', N'', N'Barboza', N'Barboza', N'M', CAST(N'0001-01-01' AS Date), 1027, 1, 15, 1, NULL, N'104940884')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Denisse', N'', N'Gamboa', N'Chacon', N'F', CAST(N'0001-01-01' AS Date), NULL, 1, 16, 1, NULL, N'107740053')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Eduardo', N'', N'Retana', N'Umaña', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 17, 1, NULL, N'110400951')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Elberth', N'', N'Gamboa', N'Ureña', N'M', CAST(N'0001-01-01' AS Date), 1042, 1, 18, 1, NULL, N'108360554')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Eliecer', N'', N'Corrales', N'Mora', N'M', CAST(N'0001-01-01' AS Date), 1032, 1, 19, 1, NULL, N'106660447')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Emieht', N'', N'Barrantes', N'Rojas', N'F', CAST(N'0001-01-01' AS Date), NULL, 1, 20, 1, NULL, N'106500944')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Enrique', N'', N'Gamboa', N'Ureña', N'M', CAST(N'0001-01-01' AS Date), 1041, 1, 21, 1, NULL, N'107580493')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Enrique', N'', N'Vargas', N'Quesada', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 22, 1, NULL, N'104820820')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Evelyn', N'', N'Angulo', N'Montero', N'F', CAST(N'0001-01-01' AS Date), 1023, 1, 23, 1, NULL, N'113620880')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Felix', N'', N'Villegas', N'Castro', N'M', CAST(N'0001-01-01' AS Date), 1074, 1, 24, 1, NULL, N'202530778')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Flor', N'María', N'Leiva', N'Romero', N'F', CAST(N'0001-01-01' AS Date), 1046, 1, 25, 1, NULL, N'105080498')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Freddy', N'', N'Quesada', N'Gonzales', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 26, 1, NULL, N'105840307')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Freddy', N'', N'Umaña', N'Mora', N'M', CAST(N'0001-01-01' AS Date), 1071, 1, 27, 1, NULL, N'110560779')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Geovany', N'', N'Gamboa', N'Mora', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 28, 1, NULL, N'110580904')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'German', N'', N'Salazar', N'Madriz', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 29, 1, NULL, N'106490550')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Gonzalo', N'', N'Rojas', N'Picado', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 30, 1, NULL, N'106660006')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Greivin', N'', N'Vargas', N'Barboza', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 31, 1, NULL, N'109660133')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Guiselle', N'', N'Picado', N'Garcia', N'F', CAST(N'0001-01-01' AS Date), NULL, 1, 32, 1, NULL, N'107460241')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Henry', N'', N'Ceciliano', N'Ortega', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 33, 1, NULL, N'107520901')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Victor', N'Hugo', N'Castillo', N'Vadilla', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 34, 1, NULL, N'602760401')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Hugo', N'', N'Ureña', N'Vargas', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 35, 1, NULL, N'400460979')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Ivannia', N'', N'Rodriguez', N'Bonilla', N'F', CAST(N'0001-01-01' AS Date), 1060, 1, 36, 1, NULL, N'113160237')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Javier', N'', N'Beita', N'Vidal', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 37, 1, NULL, N'106780497')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Javier', N'Raul', N'Jimenez', N'Arias', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 38, 1, NULL, N'114760552')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jesus', N'', N'Quiel', N'Molina', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 39, 1, NULL, N'60170107')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jesus', N'', N'Vega', N'Valverde', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 40, 1, NULL, N'501900608')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Johnny', N'', N'Jiménez', N'Céspedes', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 41, 1, NULL, N'105640273')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Johnny', N'', N'Naranjo', N'Porras', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 42, 1, NULL, N'118430723')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jorge', N'', N'Fonseca', N'Romero', N'M', CAST(N'0001-01-01' AS Date), 1038, 1, 43, 1, NULL, N'302690023')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jorge', N'', N'Quiel', N'Molina', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 44, 1, NULL, N'602320746')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jorge', N'Luis', N'Castro', N'Dias', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 45, 1, NULL, N'602120773')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Roberto', N'Antonio', N'Alvarado', N'Fallas', N'M', CAST(N'1995-04-25' AS Date), NULL, 1, 47, 1, NULL, N'232323232')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Desconocido', N'Desconocido', N'Desconocido', N'Desconocido', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 48, 1, NULL, N'03')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jose', N'', N'Estrada', N'Abarca', N'M', CAST(N'0001-01-01' AS Date), 1035, 1, 49, 1, NULL, N'600760181')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jose', N'', N'Hidalgo', N'Quintero', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 50, 1, NULL, N'109910381')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jose', N'', N'Cruz', N'Beita', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 51, 1, NULL, N'04')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jose', N'', N'Hidalgo', N'Hidalgo', N'M', CAST(N'0001-01-01' AS Date), NULL, 3, 52, 1, NULL, N'900420112')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jose', N'Antonio', N'Albares', N'#', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 53, 1, NULL, N'05')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'José', N'Joaquin', N'Rosales', N'Villareal', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 54, 1, NULL, N'501510041')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jose', N'Luis', N'Leiva', N'Navarro', N'M', CAST(N'0001-01-01' AS Date), 1045, 1, 55, 1, NULL, N'109700588')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jose', N'Luis', N'Corrales', N'Cespedes', N'M', CAST(N'0001-01-01' AS Date), 1031, 1, 56, 1, NULL, N'108150456')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jose ', N'Luis', N'Muñoz', N'Ruví', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 57, 1, NULL, N'105360449')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jose', N'Ramón', N'Chacón', N'Vargas', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 58, 1, NULL, N'105550381')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jose', N'Ramón', N'Chacón', N'Shancez', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 59, 1, NULL, N'102700619')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Juan', N'', N'Jimenez', N'Jimenez', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 60, 1, NULL, N'103600888')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Juan', N'Gmo', N'Gamboa', N'Aguero', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 61, 1, NULL, N'104440220')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Desconocido', N'Desconocido', N'Desconocido', N'Desconocido', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 62, 1, NULL, N'07')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Lidieth', N'', N'Bermudez', N'Retana', N'F', CAST(N'0001-01-01' AS Date), NULL, 1, 63, 1, NULL, N'107850679')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Luis', N'', N'Zúñiga', N'Moya', N'M', CAST(N'0001-01-01' AS Date), 1076, 1, 64, 1, NULL, N'202700103')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Manuel', N'', N'Segura', N'Morales', N'M', CAST(N'0001-01-01' AS Date), 1066, 1, 65, 1, NULL, N'202400123')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Marcos', N'', N'Rojas', N'Abarca', N'M', CAST(N'0001-01-01' AS Date), 1062, 1, 66, 1, NULL, N'110130173')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Desconocido', N'Desconocido', N'Desconocido', N'Desconocido', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 67, 1, NULL, N'03')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Marino', N'', N'Barrantes', N'Fonseca', N'M', CAST(N'0001-01-01' AS Date), 1028, 1, 68, 1, NULL, N'601440820')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Marlene', N'', N'Rodriguez', N'Bonilla', N'F', CAST(N'0001-01-01' AS Date), 1059, 1, 69, 1, NULL, N'107260610')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Miguel', N'', N'Quesada', N'Gonzales', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 70, 1, NULL, N'106160992')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Miguel', N'Angel', N'Cartin', N'Mora', N'M', CAST(N'0001-01-01' AS Date), 1020, 1, 71, 1, NULL, N'104181204')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Minor', N'', N'Rojas', N'Monge', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 72, 1, NULL, N'303070408')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Oldemar', N'', N'Mena', N'Cordero', N'M', CAST(N'0001-01-01' AS Date), NULL, 3, 73, 1, NULL, N'900840940')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Oldemar', N'', N'Fallas', N'Ureña', N'M', CAST(N'0001-01-01' AS Date), 1037, 1, 74, 1, NULL, N'103530084')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Olger', N'', N'Angulo', N'Montero', N'M', CAST(N'0001-01-01' AS Date), 1022, 1, 75, 1, NULL, N'111660295')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Olger', N'', N'Varela', N'Naranjo', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 76, 1, NULL, N'108350096')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Oliver', N'', N'Valverde', N'Zúñiga', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 77, 1, NULL, N'106650137')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Olivio', N'', N'Moya', N'Rodriguez', N'M', CAST(N'0001-01-01' AS Date), 1052, 1, 78, 1, NULL, N'105730232')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Orlando', N'', N'Gamboa', N'Mora', N'M', CAST(N'0001-01-01' AS Date), 1039, 1, 79, 1, NULL, N'107770411')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Oscar', N'', N'Rivera', N'Cordero', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 80, 1, NULL, N'107180675')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Oscar', N'', N'Naranjo', N'Porras', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 81, 1, NULL, N'108250475')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Pablo', N'', N'Quiel', N'Molina', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 82, 1, NULL, N'600970290')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Pablo', N'', N'Marin', N'Sanchez', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 83, 1, NULL, N'106800820')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Ramiro', N'', N'Naranjo', N'Amador', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 84, 1, NULL, N'103940080')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Randal', N'', N'Umaña', N'Bermudez', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 85, 1, NULL, N'112320229')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Randil', N'', N'Salazar', N'Rodriguez', N'M', CAST(N'0001-01-01' AS Date), 1064, 1, 86, 1, NULL, N'107820524')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Rene', N'', N'Altamirano', N'Alvarez', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 87, 1, NULL, N'800810272')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Richard', N'', N'Sanabria', N'Quesada', N'M', CAST(N'0001-01-01' AS Date), 1065, 1, 88, 1, NULL, N'112070541')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Rodrigo', N'', N'Rodriguez', N'Bonilla', N'M', CAST(N'0001-01-01' AS Date), 1061, 1, 89, 1, NULL, N'204850490')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Romelio', N'', N'Rodriguez', N'Castro', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 90, 1, NULL, N'202490693')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Ronald', N'', N'Araya', N'Ureña', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 91, 1, NULL, N'107840989')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Roy', N'', N'Martinez', N'Alvarez', N'M', CAST(N'0001-01-01' AS Date), 1047, 1, 92, 1, NULL, N'100550828')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'TJITZE', N'', N'DE', N'VRIES', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 93, 1, NULL, N'09')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Ulises', N'', N'Quesada', N'Gonzales', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 94, 1, NULL, N'105250727')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Victor', N'', N'Quesada', N'Gonzales', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 95, 1, NULL, N'104930387')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Victor', N'Julio', N'Vargas', N'Morena', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 96, 1, NULL, N'104240529')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Walter', N'', N'Tencio', N'Fernandez', N'M', CAST(N'0001-01-01' AS Date), 1069, 1, 97, 1, NULL, N'107780405')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'William', N'', N'Solano', N'Arias', N'M', CAST(N'0001-01-01' AS Date), 1067, 1, 98, 1, NULL, N'202040271')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'William', N'', N'Araya', N'Muñoz', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 99, 1, NULL, N'204240599')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Willmer', N'', N'Granados', N'Barrantes', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 100, 1, NULL, N'106720230')
GO
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Desc.', N'', N'', N'', N'F', CAST(N'0001-01-01' AS Date), NULL, 1, 101, 1, NULL, N'011')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Yury', N'', N'Mendez', N'Navarro', N'F', CAST(N'0001-01-01' AS Date), NULL, 1, 102, 1, NULL, N'112960220')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Hector', N'', N'Fallas', N'Ureña', N'M', CAST(N'0001-01-01' AS Date), 1036, 1, 103, 1, NULL, N'102900491')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Andres', N'', N'Navarro', N'Castro', N'M', CAST(N'0001-01-01' AS Date), 1053, 1, 104, 1, NULL, N'103190045')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Gerardo', N'', N'Cambronero', N'Perez', N'M', CAST(N'0001-01-01' AS Date), 1029, 1, 105, 1, NULL, N'109880542')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Carlos', N'Alberto', N'Hidalgo', N'Avila', N'M', CAST(N'0001-01-01' AS Date), 1043, 1, 106, 1, NULL, N'106300718')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Miguel', N'', N'Quiros', N'Avila', N'M', CAST(N'0001-01-01' AS Date), 1056, 1, 107, 1, NULL, N'602610166')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Raul', N'Alberto', N'Valverde', N'Elizondo', N'M', CAST(N'0001-01-01' AS Date), 1072, 1, 108, 1, NULL, N'113380082')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jose', N'Alejandro', N'Asofeifa', N'Navarro', N'M', CAST(N'0001-01-01' AS Date), 1026, 1, 109, 1, NULL, N'114680200')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Grace', N'Guiselle', N'Elizondo', N'Espinoza', N'F', CAST(N'0001-01-01' AS Date), 1033, 1, 110, 1, NULL, N'107090779')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Henry', N'', N'Arce', N'Salazar', N'M', CAST(N'0001-01-01' AS Date), 1024, 1, 111, 1, NULL, N'108890874')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Henry', N'Roy', N'Elizondo', N'Espinoza', N'M', CAST(N'0001-01-01' AS Date), 1034, 1, 112, 1, NULL, N'108250825')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Gilberto', N'', N'Zúñiga', N'Calderon', N'M', CAST(N'0001-01-01' AS Date), 1075, 1, 113, 1, NULL, N'106230001')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Geovanni', N'', N'Perez', N'Fallas', N'M', CAST(N'0001-01-01' AS Date), 1054, 1, 114, 1, NULL, N'603210091')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Benancio', N'', N'Rodriguez', N'Orozco', N'M', CAST(N'0001-01-01' AS Date), 1058, 1, 115, 1, NULL, N'204320405')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jose', N'', N'Menjivar', N'Hernandez', N'M', CAST(N'0001-01-01' AS Date), 1049, 1, 116, 1, NULL, N'114770190')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Francisco', N'', N'Martinez', N'Villavicencio', N'M', CAST(N'0001-01-01' AS Date), 1048, 1, 117, 1, NULL, N'302320048')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Seventh', N'', N'Inning', N'Stretch', N'M', CAST(N'0001-01-01' AS Date), 1044, 1, 118, 1, NULL, N'3102440128')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Juan', N'Gabriel', N'Naranjo', N'Valverde', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 119, 1, NULL, N'111130208')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Arturo', N'', N'Jimenez', N'Lopez', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 120, 1, NULL, N'105830952')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Julian', N'', N'Arias', N'Naranjo', N'M', CAST(N'0001-01-01' AS Date), 1025, 1, 121, 1, NULL, N'111690304')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Rodrigo', N'', N'Rodriguez', N'Aguero', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 122, 1, NULL, N'107550126')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Orlando', N'', N'Mora', N'Retana', N'M', CAST(N'0001-01-01' AS Date), 1050, 1, 123, 1, NULL, N'303400611')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Adan', N'', N'Chavez', N'Solano', N'M', CAST(N'0001-01-01' AS Date), 1030, 1, 124, 1, NULL, N'301300903')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Islam', N'', N'Cordero', N'Salazar', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 125, 1, NULL, N'602030674')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jorge', N'', N'Fonseca', N'Acuña', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 126, 1, NULL, N'304400130')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Minor', N'', N'Gamboa', N'Ureña', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 127, 1, NULL, N'107910015')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Juan', N'', N'Gamboa', N'Mora', N'M', CAST(N'0001-01-01' AS Date), 1040, 1, 128, 1, NULL, N'106880710')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Xiomara', N'', N'Porras', N'Corrales', N'F', CAST(N'0001-01-01' AS Date), 1055, 1, 129, 1, NULL, N'106640429')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Asdrubal', N'', N'Sanabria', N'Mata', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 130, 1, NULL, N'900790818')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Asdrubal', N'', N'Sanabria', N'Quesada', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 131, 1, NULL, N'112440078')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Danny', N'', N'Sanabria', N'Quesada', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 132, 1, NULL, N'112910866')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Jonathan', N'', N'Sanabria', N'Quesada', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 133, 1, NULL, N'111690757')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Eduardo', N'', N'Ugalde', N'Jimenez', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 134, 1, NULL, N'602030338')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Roberth', N'', N'Vargas', N'Barboza', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 135, 1, NULL, N'109090457')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Pablo', N'', N'Rodriguez', N'Bonilla', N'M', CAST(N'0001-01-01' AS Date), NULL, 1, 136, 1, NULL, N'205860772')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Daniel', N'José', N'Quiros', N'Hartley', N'M', CAST(N'1994-10-14' AS Date), NULL, 1, 137, 1, NULL, N'115870563')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'Maria', N'Claudina', N'Vidal', N'Vidal', N'F', CAST(N'1900-01-01' AS Date), NULL, 1, 142, 1, NULL, N'600570838')
INSERT [dbo].[SIGEEA_Persona] ([PriNombre_Persona], [SegNombre_Persona], [PriApellido_Persona], [SegApellido_Persona], [Genero_Persona], [FecNacimiento_Persona], [FK_Id_Direccion], [FK_Id_Nacionalidad], [PK_Id_Persona], [Tipo_Persona], [CedJuridica_Persona], [CedParticular_Persona]) VALUES (N'LUIS', N'', N'JIMENEZ', N'QUESADA', N'M', CAST(N'1980-07-23' AS Date), NULL, 1, 143, 1, NULL, N'110810223')
SET IDENTITY_INSERT [dbo].[SIGEEA_Persona] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_PreProCompra] ON 

INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (1000, 1200, CAST(N'2016-04-18 11:38:40.900' AS DateTime), 1, 1)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (1300, 1600, CAST(N'2016-05-30 01:22:22.393' AS DateTime), 1, 2)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (1300, 1600, CAST(N'2016-05-30 01:22:33.803' AS DateTime), 1, 3)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (1200, 1500, CAST(N'2016-05-30 01:55:14.427' AS DateTime), 1, 4)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (1200, 1500, CAST(N'2016-05-30 10:49:45.547' AS DateTime), 1, 5)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (1200, 1500, CAST(N'2016-10-11 18:18:24.993' AS DateTime), 1, 6)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (630, 776, CAST(N'2016-10-11 22:09:16.547' AS DateTime), 1, 7)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (630, 776, CAST(N'2016-10-11 22:09:19.023' AS DateTime), 1, 8)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (630, 776, CAST(N'2016-10-11 22:09:23.320' AS DateTime), 1, 9)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (630, 776, CAST(N'2016-10-27 12:29:07.427' AS DateTime), 1, 10)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (1300, 800, CAST(N'2017-08-22 15:05:24.950' AS DateTime), 2, 11)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (1300, 800, CAST(N'2017-08-22 15:13:50.993' AS DateTime), 2, 12)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (1300, 800, CAST(N'2017-08-22 15:46:26.843' AS DateTime), 2, 13)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (1300, 800, CAST(N'2017-08-22 15:46:42.863' AS DateTime), 2, 14)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (630, 776, CAST(N'2017-08-22 15:46:54.330' AS DateTime), 2, 15)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (635, 776, CAST(N'2017-08-23 18:34:40.553' AS DateTime), 1, 16)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (630, 776, CAST(N'2017-08-23 18:34:55.523' AS DateTime), 1, 17)
INSERT [dbo].[SIGEEA_PreProCompra] ([PreNacional_PreProCompra], [PreExtranjero_PreProCompra], [FecRegistro_PreProCompra], [FK_Id_TipProducto], [PK_Id_PreProCompra]) VALUES (550, 800, CAST(N'2017-08-24 13:56:07.410' AS DateTime), 1, 18)
SET IDENTITY_INSERT [dbo].[SIGEEA_PreProCompra] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_PreProVenta] ON 

INSERT [dbo].[SIGEEA_PreProVenta] ([PreNacional_PreProVenta], [PreExtranjero_PreProVenta], [FecRegistro_PreProVenta], [FK_Id_TipProducto], [PK_Id_PreProVenta], [FK_Id_Moneda]) VALUES (300, 1, CAST(N'2016-02-12 00:00:00.000' AS DateTime), 1, 2, 1)
INSERT [dbo].[SIGEEA_PreProVenta] ([PreNacional_PreProVenta], [PreExtranjero_PreProVenta], [FecRegistro_PreProVenta], [FK_Id_TipProducto], [PK_Id_PreProVenta], [FK_Id_Moneda]) VALUES (200, 0.26, CAST(N'2016-02-12 00:00:00.000' AS DateTime), 2, 3, 1)
INSERT [dbo].[SIGEEA_PreProVenta] ([PreNacional_PreProVenta], [PreExtranjero_PreProVenta], [FecRegistro_PreProVenta], [FK_Id_TipProducto], [PK_Id_PreProVenta], [FK_Id_Moneda]) VALUES (300, 1, CAST(N'2016-05-30 01:55:14.447' AS DateTime), 1, 6, 1)
INSERT [dbo].[SIGEEA_PreProVenta] ([PreNacional_PreProVenta], [PreExtranjero_PreProVenta], [FecRegistro_PreProVenta], [FK_Id_TipProducto], [PK_Id_PreProVenta], [FK_Id_Moneda]) VALUES (300, 1, CAST(N'2016-05-30 10:49:45.563' AS DateTime), 1, 7, 2)
INSERT [dbo].[SIGEEA_PreProVenta] ([PreNacional_PreProVenta], [PreExtranjero_PreProVenta], [FecRegistro_PreProVenta], [FK_Id_TipProducto], [PK_Id_PreProVenta], [FK_Id_Moneda]) VALUES (3000, 1000, CAST(N'2016-10-11 18:18:25.003' AS DateTime), 1, 8, 2)
INSERT [dbo].[SIGEEA_PreProVenta] ([PreNacional_PreProVenta], [PreExtranjero_PreProVenta], [FecRegistro_PreProVenta], [FK_Id_TipProducto], [PK_Id_PreProVenta], [FK_Id_Moneda]) VALUES (1600, 2000, CAST(N'2016-10-11 22:09:16.563' AS DateTime), 1, 9, 2)
INSERT [dbo].[SIGEEA_PreProVenta] ([PreNacional_PreProVenta], [PreExtranjero_PreProVenta], [FecRegistro_PreProVenta], [FK_Id_TipProducto], [PK_Id_PreProVenta], [FK_Id_Moneda]) VALUES (1600, 2000, CAST(N'2016-10-11 22:09:19.027' AS DateTime), 1, 10, 2)
INSERT [dbo].[SIGEEA_PreProVenta] ([PreNacional_PreProVenta], [PreExtranjero_PreProVenta], [FecRegistro_PreProVenta], [FK_Id_TipProducto], [PK_Id_PreProVenta], [FK_Id_Moneda]) VALUES (1600, 2000, CAST(N'2016-10-11 22:09:23.330' AS DateTime), 1, 11, 2)
INSERT [dbo].[SIGEEA_PreProVenta] ([PreNacional_PreProVenta], [PreExtranjero_PreProVenta], [FecRegistro_PreProVenta], [FK_Id_TipProducto], [PK_Id_PreProVenta], [FK_Id_Moneda]) VALUES (1437, 1500, CAST(N'2016-10-27 12:29:07.447' AS DateTime), 1, 12, 2)
INSERT [dbo].[SIGEEA_PreProVenta] ([PreNacional_PreProVenta], [PreExtranjero_PreProVenta], [FecRegistro_PreProVenta], [FK_Id_TipProducto], [PK_Id_PreProVenta], [FK_Id_Moneda]) VALUES (1500, 1000, CAST(N'2017-08-22 15:05:24.963' AS DateTime), 2, 13, 2)
INSERT [dbo].[SIGEEA_PreProVenta] ([PreNacional_PreProVenta], [PreExtranjero_PreProVenta], [FecRegistro_PreProVenta], [FK_Id_TipProducto], [PK_Id_PreProVenta], [FK_Id_Moneda]) VALUES (1500, 1000, CAST(N'2017-08-22 15:13:51.007' AS DateTime), 2, 14, 2)
INSERT [dbo].[SIGEEA_PreProVenta] ([PreNacional_PreProVenta], [PreExtranjero_PreProVenta], [FecRegistro_PreProVenta], [FK_Id_TipProducto], [PK_Id_PreProVenta], [FK_Id_Moneda]) VALUES (1500, 1200, CAST(N'2017-08-22 15:46:42.893' AS DateTime), 2, 15, 2)
INSERT [dbo].[SIGEEA_PreProVenta] ([PreNacional_PreProVenta], [PreExtranjero_PreProVenta], [FecRegistro_PreProVenta], [FK_Id_TipProducto], [PK_Id_PreProVenta], [FK_Id_Moneda]) VALUES (1437, 1500, CAST(N'2017-08-22 15:46:54.333' AS DateTime), 2, 16, 2)
INSERT [dbo].[SIGEEA_PreProVenta] ([PreNacional_PreProVenta], [PreExtranjero_PreProVenta], [FecRegistro_PreProVenta], [FK_Id_TipProducto], [PK_Id_PreProVenta], [FK_Id_Moneda]) VALUES (800, 1850, CAST(N'2017-08-24 13:56:07.463' AS DateTime), 1, 17, 2)
SET IDENTITY_INSERT [dbo].[SIGEEA_PreProVenta] OFF
INSERT [dbo].[SIGEEA_Provincia] ([PK_Id_Provincia], [Nombre_Provincia], [FK_Id_Pais]) VALUES (1, N'San José', 1)
INSERT [dbo].[SIGEEA_Provincia] ([PK_Id_Provincia], [Nombre_Provincia], [FK_Id_Pais]) VALUES (2, N'Alajuela', 1)
INSERT [dbo].[SIGEEA_Provincia] ([PK_Id_Provincia], [Nombre_Provincia], [FK_Id_Pais]) VALUES (3, N'Heredia', 1)
INSERT [dbo].[SIGEEA_Provincia] ([PK_Id_Provincia], [Nombre_Provincia], [FK_Id_Pais]) VALUES (4, N'Cartago', 1)
INSERT [dbo].[SIGEEA_Provincia] ([PK_Id_Provincia], [Nombre_Provincia], [FK_Id_Pais]) VALUES (5, N'Guanacaste', 1)
INSERT [dbo].[SIGEEA_Provincia] ([PK_Id_Provincia], [Nombre_Provincia], [FK_Id_Pais]) VALUES (6, N'Limón', 1)
INSERT [dbo].[SIGEEA_Provincia] ([PK_Id_Provincia], [Nombre_Provincia], [FK_Id_Pais]) VALUES (7, N'Puntarenas', 1)
SET IDENTITY_INSERT [dbo].[SIGEEA_PueTemporal] ON 

INSERT [dbo].[SIGEEA_PueTemporal] ([PK_Id_Puesto], [Nombre_Puesto], [Tarifa_Puesto], [Actualizacion_Puesto], [Estado_Puesto]) VALUES (1, N'Empacador', 1200, CAST(N'2016-02-06 16:36:48.487' AS DateTime), 0)
INSERT [dbo].[SIGEEA_PueTemporal] ([PK_Id_Puesto], [Nombre_Puesto], [Tarifa_Puesto], [Actualizacion_Puesto], [Estado_Puesto]) VALUES (2, N'Empacador', 1300, CAST(N'2016-02-06 16:37:25.383' AS DateTime), 0)
INSERT [dbo].[SIGEEA_PueTemporal] ([PK_Id_Puesto], [Nombre_Puesto], [Tarifa_Puesto], [Actualizacion_Puesto], [Estado_Puesto]) VALUES (3, N'Empacador', 1400, CAST(N'2016-02-06 16:39:03.310' AS DateTime), 0)
INSERT [dbo].[SIGEEA_PueTemporal] ([PK_Id_Puesto], [Nombre_Puesto], [Tarifa_Puesto], [Actualizacion_Puesto], [Estado_Puesto]) VALUES (4, N'Conserje', 1100, CAST(N'2016-02-06 16:52:47.330' AS DateTime), 1)
INSERT [dbo].[SIGEEA_PueTemporal] ([PK_Id_Puesto], [Nombre_Puesto], [Tarifa_Puesto], [Actualizacion_Puesto], [Estado_Puesto]) VALUES (5, N'Empacador', 1500, CAST(N'2016-02-06 16:59:59.027' AS DateTime), 0)
INSERT [dbo].[SIGEEA_PueTemporal] ([PK_Id_Puesto], [Nombre_Puesto], [Tarifa_Puesto], [Actualizacion_Puesto], [Estado_Puesto]) VALUES (6, N'Empacador', 1200, CAST(N'2016-02-10 22:40:21.870' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[SIGEEA_PueTemporal] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_Rol] ON 

INSERT [dbo].[SIGEEA_Rol] ([PK_Id_Rol], [Nombre_Rol], [FK_Id_Permiso]) VALUES (1, N'Administrador', 3)
INSERT [dbo].[SIGEEA_Rol] ([PK_Id_Rol], [Nombre_Rol], [FK_Id_Permiso]) VALUES (2, N'Gerente', 3)
INSERT [dbo].[SIGEEA_Rol] ([PK_Id_Rol], [Nombre_Rol], [FK_Id_Permiso]) VALUES (3, N'Empleado', 2)
SET IDENTITY_INSERT [dbo].[SIGEEA_Rol] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_SubModulo] ON 

INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (1, N'Registrar nuevo asociado', 1)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (2, N'Editar asociado existente', 1)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (3, N'Agregar/Editar dirección de asociados', 1)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (5, N'Registrar cuota', 1)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (6, N'Administrar pagos de cuotas', 1)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (7, N'Reuniones', 1)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (8, N'Registrar nuevo cliente', 2)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (9, N'Editar cliente', 2)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (10, N'Generar factura', 2)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (11, N'Realizar abono a factura', 2)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (12, N'Entrega de producto', 1)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (13, N'Gestionar facturas incompletas', 1)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (14, N'Gestionar facturas pendientes', 1)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (16, N'Registrar nuevo empleado', 3)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (17, N'Editar empleado existente', 3)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (18, N'Agregar/Editar dirección de empleados', 3)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (19, N'Gestionar puestos', 3)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (20, N'Registro de horas ', 3)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (21, N'Realizar pagos', 3)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (22, N'Agregar finca', 7)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (23, N'Editar finca', 7)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (24, N'Registrar nuevo producto', 5)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (25, N'Compra/Venta del producto', 5)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (26, N'Agregar insumo', 6)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (27, N'Editar insumo', 6)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (28, N'Compra de insumo', 6)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (29, N'Pedir insumo', 6)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (30, N'Registrar usuario', 8)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (32, N'Permisos y roles', 8)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (33, N'Reporte de ventas cliente', 9)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (34, N'Consolidado de asociados', 9)
INSERT [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo], [Nombre_SubModulo], [FK_Id_Modulo]) VALUES (35, N'Reporte empleados', 9)
SET IDENTITY_INSERT [dbo].[SIGEEA_SubModulo] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_TipCatCliente] ON 

INSERT [dbo].[SIGEEA_TipCatCliente] ([PK_Id_TipCatCliente], [Nombre_TipCatCliente]) VALUES (1, N'AA')
INSERT [dbo].[SIGEEA_TipCatCliente] ([PK_Id_TipCatCliente], [Nombre_TipCatCliente]) VALUES (2, N'A')
INSERT [dbo].[SIGEEA_TipCatCliente] ([PK_Id_TipCatCliente], [Nombre_TipCatCliente]) VALUES (3, N'BB')
INSERT [dbo].[SIGEEA_TipCatCliente] ([PK_Id_TipCatCliente], [Nombre_TipCatCliente]) VALUES (4, N'B')
INSERT [dbo].[SIGEEA_TipCatCliente] ([PK_Id_TipCatCliente], [Nombre_TipCatCliente]) VALUES (5, N'CC')
INSERT [dbo].[SIGEEA_TipCatCliente] ([PK_Id_TipCatCliente], [Nombre_TipCatCliente]) VALUES (6, N'C')
SET IDENTITY_INSERT [dbo].[SIGEEA_TipCatCliente] OFF
INSERT [dbo].[SIGEEA_TipContacto] ([PK_Id_TipContacto], [Nombre_TipContacto]) VALUES (1, N'Correo')
INSERT [dbo].[SIGEEA_TipContacto] ([PK_Id_TipContacto], [Nombre_TipContacto]) VALUES (2, N'Tel. Movil')
INSERT [dbo].[SIGEEA_TipContacto] ([PK_Id_TipContacto], [Nombre_TipContacto]) VALUES (3, N'Tel. Residencia')
INSERT [dbo].[SIGEEA_TipContacto] ([PK_Id_TipContacto], [Nombre_TipContacto]) VALUES (4, N'Tel. Trabajo')
INSERT [dbo].[SIGEEA_TipContacto] ([PK_Id_TipContacto], [Nombre_TipContacto]) VALUES (5, N'Fax')
INSERT [dbo].[SIGEEA_TipContacto] ([PK_Id_TipContacto], [Nombre_TipContacto]) VALUES (6, N'Otro')
SET IDENTITY_INSERT [dbo].[SIGEEA_TipProducto] ON 

INSERT [dbo].[SIGEEA_TipProducto] ([Nombre_TipProducto], [Descripcion_TipProducto], [Calidad_TipProducto], [PK_Id_TipProducto]) VALUES (N'Rambutan', N'Rojas', 1, 1)
INSERT [dbo].[SIGEEA_TipProducto] ([Nombre_TipProducto], [Descripcion_TipProducto], [Calidad_TipProducto], [PK_Id_TipProducto]) VALUES (N'Mango', N'Verde', 3, 2)
INSERT [dbo].[SIGEEA_TipProducto] ([Nombre_TipProducto], [Descripcion_TipProducto], [Calidad_TipProducto], [PK_Id_TipProducto]) VALUES (N'Rambután clase B', N'Fruta con calidad de venta nacional ', 4, 6)
SET IDENTITY_INSERT [dbo].[SIGEEA_TipProducto] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_UniMedida] ON 

INSERT [dbo].[SIGEEA_UniMedida] ([PK_Id_UniMedida], [Nombre_UniMedida], [Estado]) VALUES (1, N'Uni', 1)
INSERT [dbo].[SIGEEA_UniMedida] ([PK_Id_UniMedida], [Nombre_UniMedida], [Estado]) VALUES (2, N'Kg', 1)
INSERT [dbo].[SIGEEA_UniMedida] ([PK_Id_UniMedida], [Nombre_UniMedida], [Estado]) VALUES (3, N'Gr', 1)
SET IDENTITY_INSERT [dbo].[SIGEEA_UniMedida] OFF
SET IDENTITY_INSERT [dbo].[SIGEEA_Usuario] ON 

INSERT [dbo].[SIGEEA_Usuario] ([PK_Id_Usuario], [Nombre_Usuario], [Clave_Usuario], [FK_Id_Rol], [FK_Id_Empleado], [RutFondo_Usuario]) VALUES (3, N'l', N'l', 1, 6, N'C:\Users\luis1\Pictures\Fondos\12049472_881932668510182_1381211774033693661_n.jpg')
INSERT [dbo].[SIGEEA_Usuario] ([PK_Id_Usuario], [Nombre_Usuario], [Clave_Usuario], [FK_Id_Rol], [FK_Id_Empleado], [RutFondo_Usuario]) VALUES (4, N'R', N'r', 1, 7, N'C:\Users\ASOFRUBRUNCA\Documents\software-asofrubrunca\SIGEEA_App\SIGEEA_App\Imagenes\fondo pantalla.jpg')
INSERT [dbo].[SIGEEA_Usuario] ([PK_Id_Usuario], [Nombre_Usuario], [Clave_Usuario], [FK_Id_Rol], [FK_Id_Empleado], [RutFondo_Usuario]) VALUES (5, N'Daniel94', N'JQ14H94', 1, 8, N'C:\Users\ASOFRUBRUNCA\Pictures\Fotos para Luis\DSC04950.JPG')
INSERT [dbo].[SIGEEA_Usuario] ([PK_Id_Usuario], [Nombre_Usuario], [Clave_Usuario], [FK_Id_Rol], [FK_Id_Empleado], [RutFondo_Usuario]) VALUES (6, N'luisjq23', N'osita1705', 1, 9, N'C:/Users/rober/Documents/GitHub/Imagenes/4.jpg')
SET IDENTITY_INSERT [dbo].[SIGEEA_Usuario] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_SIGEEA_Nacionalidad]    Script Date: 13/03/2018 10:23:03 a.m. ******/
ALTER TABLE [dbo].[SIGEEA_Nacionalidad] ADD  CONSTRAINT [UK_SIGEEA_Nacionalidad] UNIQUE NONCLUSTERED 
(
	[Nombre_Nacionalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_SIGEEA_TipProducto]    Script Date: 13/03/2018 10:23:03 a.m. ******/
ALTER TABLE [dbo].[SIGEEA_TipProducto] ADD  CONSTRAINT [UK_SIGEEA_TipProducto] UNIQUE NONCLUSTERED 
(
	[Nombre_TipProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SIGEEA_AboCliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_AboCliente_SIGEEA_Cliente] FOREIGN KEY([FK_Id_Cliente])
REFERENCES [dbo].[SIGEEA_Cliente] ([PK_Id_Cliente])
GO
ALTER TABLE [dbo].[SIGEEA_AboCliente] CHECK CONSTRAINT [FK_SIGEEA_AboCliente_SIGEEA_Cliente]
GO
ALTER TABLE [dbo].[SIGEEA_AboCliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_AboCliente_SIGEEA_FacCliente] FOREIGN KEY([FK_Id_FacCliente])
REFERENCES [dbo].[SIGEEA_FacCliente] ([PK_Id_FacCliente])
GO
ALTER TABLE [dbo].[SIGEEA_AboCliente] CHECK CONSTRAINT [FK_SIGEEA_AboCliente_SIGEEA_FacCliente]
GO
ALTER TABLE [dbo].[SIGEEA_AboCliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_PagCliente_SIGEEA_Empleado] FOREIGN KEY([FK_Id_Empleado])
REFERENCES [dbo].[SIGEEA_Empleado] ([PK_Id_Empleado])
GO
ALTER TABLE [dbo].[SIGEEA_AboCliente] CHECK CONSTRAINT [FK_SIGEEA_PagCliente_SIGEEA_Empleado]
GO
ALTER TABLE [dbo].[SIGEEA_AboCliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_PagCliente_SIGEEA_Moneda] FOREIGN KEY([FK_Id_Moneda])
REFERENCES [dbo].[SIGEEA_Moneda] ([PK_Id_Moneda])
GO
ALTER TABLE [dbo].[SIGEEA_AboCliente] CHECK CONSTRAINT [FK_SIGEEA_PagCliente_SIGEEA_Moneda]
GO
ALTER TABLE [dbo].[SIGEEA_AsiAsamblea]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_AsiAsamblea_SIGEEA_Asamblea] FOREIGN KEY([FK_Id_Asamblea])
REFERENCES [dbo].[SIGEEA_Asamblea] ([PK_Id_Asamblea])
GO
ALTER TABLE [dbo].[SIGEEA_AsiAsamblea] CHECK CONSTRAINT [FK_SIGEEA_AsiAsamblea_SIGEEA_Asamblea]
GO
ALTER TABLE [dbo].[SIGEEA_AsiAsamblea]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_AsiAsamblea_SIGEEA_Asociado] FOREIGN KEY([FK_Id_Asociado])
REFERENCES [dbo].[SIGEEA_Asociado] ([PK_Id_Asociado])
GO
ALTER TABLE [dbo].[SIGEEA_AsiAsamblea] CHECK CONSTRAINT [FK_SIGEEA_AsiAsamblea_SIGEEA_Asociado]
GO
ALTER TABLE [dbo].[SIGEEA_Asociado]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Asociado_SIGEEA_CatAsociado] FOREIGN KEY([FK_Id_CatAsociado])
REFERENCES [dbo].[SIGEEA_CatAsociado] ([PK_Id_CatAsociado])
GO
ALTER TABLE [dbo].[SIGEEA_Asociado] CHECK CONSTRAINT [FK_SIGEEA_Asociado_SIGEEA_CatAsociado]
GO
ALTER TABLE [dbo].[SIGEEA_Asociado]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Asociado_SIGEEA_Empresa] FOREIGN KEY([FK_Id_Empresa])
REFERENCES [dbo].[SIGEEA_Empresa] ([PK_Id_Empresa])
GO
ALTER TABLE [dbo].[SIGEEA_Asociado] CHECK CONSTRAINT [FK_SIGEEA_Asociado_SIGEEA_Empresa]
GO
ALTER TABLE [dbo].[SIGEEA_Asociado]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Asociado_SIGEEA_Persona] FOREIGN KEY([FK_Id_Persona])
REFERENCES [dbo].[SIGEEA_Persona] ([PK_Id_Persona])
GO
ALTER TABLE [dbo].[SIGEEA_Asociado] CHECK CONSTRAINT [FK_SIGEEA_Asociado_SIGEEA_Persona]
GO
ALTER TABLE [dbo].[SIGEEA_Asociado]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Asociado_SIGEEA_Representante] FOREIGN KEY([FK_Id_Representante])
REFERENCES [dbo].[SIGEEA_Representante] ([PK_Id_Representante])
GO
ALTER TABLE [dbo].[SIGEEA_Asociado] CHECK CONSTRAINT [FK_SIGEEA_Asociado_SIGEEA_Representante]
GO
ALTER TABLE [dbo].[SIGEEA_AsociadoXPagAsociado]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_AsociadoXPagAsociado_SIGEEA_Asociado] FOREIGN KEY([FK_Id_Asociado])
REFERENCES [dbo].[SIGEEA_Asociado] ([PK_Id_Asociado])
GO
ALTER TABLE [dbo].[SIGEEA_AsociadoXPagAsociado] CHECK CONSTRAINT [FK_SIGEEA_AsociadoXPagAsociado_SIGEEA_Asociado]
GO
ALTER TABLE [dbo].[SIGEEA_AsociadoXPagAsociado]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_AsociadoXPagAsociado_SIGEEA_PagAsociado] FOREIGN KEY([FK_Id_PagAsociado])
REFERENCES [dbo].[SIGEEA_PagAsociado] ([PK_Id_PagAsociado])
GO
ALTER TABLE [dbo].[SIGEEA_AsociadoXPagAsociado] CHECK CONSTRAINT [FK_SIGEEA_AsociadoXPagAsociado_SIGEEA_PagAsociado]
GO
ALTER TABLE [dbo].[SIGEEA_Banco]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Banco_SIGEEA_Empresa] FOREIGN KEY([FK_Id_Empresa])
REFERENCES [dbo].[SIGEEA_Empresa] ([PK_Id_Empresa])
GO
ALTER TABLE [dbo].[SIGEEA_Banco] CHECK CONSTRAINT [FK_SIGEEA_Banco_SIGEEA_Empresa]
GO
ALTER TABLE [dbo].[SIGEEA_BitDetPagos]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_BitDetPagos_SIGEEA_BitPagos] FOREIGN KEY([FK_BitPagos])
REFERENCES [dbo].[SIGEEA_BitPagos] ([PK_Id_BitPagos])
GO
ALTER TABLE [dbo].[SIGEEA_BitDetPagos] CHECK CONSTRAINT [FK_SIGEEA_BitDetPagos_SIGEEA_BitPagos]
GO
ALTER TABLE [dbo].[SIGEEA_BitDetPagos]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_BitDetPagos_SIGEEA_DetFacAsociado] FOREIGN KEY([FK_DetFacAsociado])
REFERENCES [dbo].[SIGEEA_DetFacAsociado] ([PK_Id_DetFacAsociado])
GO
ALTER TABLE [dbo].[SIGEEA_BitDetPagos] CHECK CONSTRAINT [FK_SIGEEA_BitDetPagos_SIGEEA_DetFacAsociado]
GO
ALTER TABLE [dbo].[SIGEEA_BitPagos]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_BitPagos_SIGEEA_BitPagos] FOREIGN KEY([FK_Id_Usuario])
REFERENCES [dbo].[SIGEEA_Usuario] ([PK_Id_Usuario])
GO
ALTER TABLE [dbo].[SIGEEA_BitPagos] CHECK CONSTRAINT [FK_SIGEEA_BitPagos_SIGEEA_BitPagos]
GO
ALTER TABLE [dbo].[SIGEEA_Bodega]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Bodega_SIGEEA_Empresa] FOREIGN KEY([FK_Id_Empresa])
REFERENCES [dbo].[SIGEEA_Empresa] ([PK_Id_Empresa])
GO
ALTER TABLE [dbo].[SIGEEA_Bodega] CHECK CONSTRAINT [FK_SIGEEA_Bodega_SIGEEA_Empresa]
GO
ALTER TABLE [dbo].[SIGEEA_Canton]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Canton_SIGEEA_Provincia] FOREIGN KEY([FK_Id_Provincia])
REFERENCES [dbo].[SIGEEA_Provincia] ([PK_Id_Provincia])
GO
ALTER TABLE [dbo].[SIGEEA_Canton] CHECK CONSTRAINT [FK_SIGEEA_Canton_SIGEEA_Provincia]
GO
ALTER TABLE [dbo].[SIGEEA_CatCliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_CatCliente_SIGEEA_TipCatCliente] FOREIGN KEY([FK_Id_TipCatCliente])
REFERENCES [dbo].[SIGEEA_TipCatCliente] ([PK_Id_TipCatCliente])
GO
ALTER TABLE [dbo].[SIGEEA_CatCliente] CHECK CONSTRAINT [FK_SIGEEA_CatCliente_SIGEEA_TipCatCliente]
GO
ALTER TABLE [dbo].[SIGEEA_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Cliente_SIGEEA_CreCliente] FOREIGN KEY([FK_Id_CatCliente])
REFERENCES [dbo].[SIGEEA_CatCliente] ([PK_Id_CatCliente])
GO
ALTER TABLE [dbo].[SIGEEA_Cliente] CHECK CONSTRAINT [FK_SIGEEA_Cliente_SIGEEA_CreCliente]
GO
ALTER TABLE [dbo].[SIGEEA_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Cliente_SIGEEA_Empresa] FOREIGN KEY([FK_Id_Empresa])
REFERENCES [dbo].[SIGEEA_Empresa] ([PK_Id_Empresa])
GO
ALTER TABLE [dbo].[SIGEEA_Cliente] CHECK CONSTRAINT [FK_SIGEEA_Cliente_SIGEEA_Empresa]
GO
ALTER TABLE [dbo].[SIGEEA_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Cliente_SIGEEA_Persona] FOREIGN KEY([FK_Id_Persona])
REFERENCES [dbo].[SIGEEA_Persona] ([PK_Id_Persona])
GO
ALTER TABLE [dbo].[SIGEEA_Cliente] CHECK CONSTRAINT [FK_SIGEEA_Cliente_SIGEEA_Persona]
GO
ALTER TABLE [dbo].[SIGEEA_CodPostal]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_CodPostal_SIGEEA_Estado] FOREIGN KEY([FK_Id_Estado])
REFERENCES [dbo].[SIGEEA_Estado] ([PK_Id_Estado])
GO
ALTER TABLE [dbo].[SIGEEA_CodPostal] CHECK CONSTRAINT [FK_SIGEEA_CodPostal_SIGEEA_Estado]
GO
ALTER TABLE [dbo].[SIGEEA_Contacto]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Contacto_SIGEEA_Persona] FOREIGN KEY([FK_Id_Persona])
REFERENCES [dbo].[SIGEEA_Persona] ([PK_Id_Persona])
GO
ALTER TABLE [dbo].[SIGEEA_Contacto] CHECK CONSTRAINT [FK_SIGEEA_Contacto_SIGEEA_Persona]
GO
ALTER TABLE [dbo].[SIGEEA_Contacto]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Contacto_SIGEEA_TipoContacto] FOREIGN KEY([FK_Id_TipContacto])
REFERENCES [dbo].[SIGEEA_TipContacto] ([PK_Id_TipContacto])
GO
ALTER TABLE [dbo].[SIGEEA_Contacto] CHECK CONSTRAINT [FK_SIGEEA_Contacto_SIGEEA_TipoContacto]
GO
ALTER TABLE [dbo].[SIGEEA_CreCliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_CreCliente_SIGEEA_Cliente] FOREIGN KEY([FK_Id_Cliente])
REFERENCES [dbo].[SIGEEA_Cliente] ([PK_Id_Cliente])
GO
ALTER TABLE [dbo].[SIGEEA_CreCliente] CHECK CONSTRAINT [FK_SIGEEA_CreCliente_SIGEEA_Cliente]
GO
ALTER TABLE [dbo].[SIGEEA_CreCliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_CreCliente_SIGEEA_FacCliente] FOREIGN KEY([FK_Id_FacCliente])
REFERENCES [dbo].[SIGEEA_FacCliente] ([PK_Id_FacCliente])
GO
ALTER TABLE [dbo].[SIGEEA_CreCliente] CHECK CONSTRAINT [FK_SIGEEA_CreCliente_SIGEEA_FacCliente]
GO
ALTER TABLE [dbo].[SIGEEA_CreCliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_CreCliente_SIGEEA_Moneda] FOREIGN KEY([FK_Id_Moneda])
REFERENCES [dbo].[SIGEEA_Moneda] ([PK_Id_Moneda])
GO
ALTER TABLE [dbo].[SIGEEA_CreCliente] CHECK CONSTRAINT [FK_SIGEEA_CreCliente_SIGEEA_Moneda]
GO
ALTER TABLE [dbo].[SIGEEA_Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Cuenta_SIGEEA_Banco] FOREIGN KEY([FK_Id_Banco])
REFERENCES [dbo].[SIGEEA_Banco] ([PK_Id_Banco])
GO
ALTER TABLE [dbo].[SIGEEA_Cuenta] CHECK CONSTRAINT [FK_SIGEEA_Cuenta_SIGEEA_Banco]
GO
ALTER TABLE [dbo].[SIGEEA_Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Cuenta_SIGEEA_Persona] FOREIGN KEY([FK_Id_Persona])
REFERENCES [dbo].[SIGEEA_Persona] ([PK_Id_Persona])
GO
ALTER TABLE [dbo].[SIGEEA_Cuenta] CHECK CONSTRAINT [FK_SIGEEA_Cuenta_SIGEEA_Persona]
GO
ALTER TABLE [dbo].[SIGEEA_Cuota]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Cuota_SIGEEA_Moneda] FOREIGN KEY([FK_Id_Moneda])
REFERENCES [dbo].[SIGEEA_Moneda] ([PK_Id_Moneda])
GO
ALTER TABLE [dbo].[SIGEEA_Cuota] CHECK CONSTRAINT [FK_SIGEEA_Cuota_SIGEEA_Moneda]
GO
ALTER TABLE [dbo].[SIGEEA_Cuota_Asociado]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Cuota_Asociado_SIGEEA_Asociado] FOREIGN KEY([FK_Id_Asociado])
REFERENCES [dbo].[SIGEEA_Asociado] ([PK_Id_Asociado])
GO
ALTER TABLE [dbo].[SIGEEA_Cuota_Asociado] CHECK CONSTRAINT [FK_SIGEEA_Cuota_Asociado_SIGEEA_Asociado]
GO
ALTER TABLE [dbo].[SIGEEA_Cuota_Asociado]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Cuota_Asociado_SIGEEA_Cuota] FOREIGN KEY([FK_Id_Cuota])
REFERENCES [dbo].[SIGEEA_Cuota] ([PK_Id_Cuota])
GO
ALTER TABLE [dbo].[SIGEEA_Cuota_Asociado] CHECK CONSTRAINT [FK_SIGEEA_Cuota_Asociado_SIGEEA_Cuota]
GO
ALTER TABLE [dbo].[SIGEEA_DetFacAsociado]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_DetFacAsociado_SIGEEA_FacAsociado] FOREIGN KEY([FK_Id_FacAsociado])
REFERENCES [dbo].[SIGEEA_FacAsociado] ([PK_Id_FacAsociado])
GO
ALTER TABLE [dbo].[SIGEEA_DetFacAsociado] CHECK CONSTRAINT [FK_SIGEEA_DetFacAsociado_SIGEEA_FacAsociado]
GO
ALTER TABLE [dbo].[SIGEEA_DetFacAsociado]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_DetFacAsociado_SIGEEA_PreProCompra] FOREIGN KEY([FK_Id_PreProCompra])
REFERENCES [dbo].[SIGEEA_PreProCompra] ([PK_Id_PreProCompra])
GO
ALTER TABLE [dbo].[SIGEEA_DetFacAsociado] CHECK CONSTRAINT [FK_SIGEEA_DetFacAsociado_SIGEEA_PreProCompra]
GO
ALTER TABLE [dbo].[SIGEEA_DetFacCliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_DetFacCliente_SIGEEA_FacCliente] FOREIGN KEY([FK_Id_FacCliente])
REFERENCES [dbo].[SIGEEA_FacCliente] ([PK_Id_FacCliente])
GO
ALTER TABLE [dbo].[SIGEEA_DetFacCliente] CHECK CONSTRAINT [FK_SIGEEA_DetFacCliente_SIGEEA_FacCliente]
GO
ALTER TABLE [dbo].[SIGEEA_DetFacCliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_DetFacCliente_SIGEEA_TipProducto] FOREIGN KEY([FK_Id_TipProducto])
REFERENCES [dbo].[SIGEEA_TipProducto] ([PK_Id_TipProducto])
GO
ALTER TABLE [dbo].[SIGEEA_DetFacCliente] CHECK CONSTRAINT [FK_SIGEEA_DetFacCliente_SIGEEA_TipProducto]
GO
ALTER TABLE [dbo].[SIGEEA_DetFacCliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_DetFacCliente_SIGEEA_UniMedida] FOREIGN KEY([FK_Id_UniMedida])
REFERENCES [dbo].[SIGEEA_UniMedida] ([PK_Id_UniMedida])
GO
ALTER TABLE [dbo].[SIGEEA_DetFacCliente] CHECK CONSTRAINT [FK_SIGEEA_DetFacCliente_SIGEEA_UniMedida]
GO
ALTER TABLE [dbo].[SIGEEA_DetFacInsumo]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_DetFacInsumo_SIGEEA_InvInsumo] FOREIGN KEY([FK_Id_InvInsumo])
REFERENCES [dbo].[SIGEEA_InvInsumo] ([PK_IdInvInsumo])
GO
ALTER TABLE [dbo].[SIGEEA_DetFacInsumo] CHECK CONSTRAINT [FK_SIGEEA_DetFacInsumo_SIGEEA_InvInsumo]
GO
ALTER TABLE [dbo].[SIGEEA_DetInvProductos]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_DetInvProductos_SIGEEA_InvProductos] FOREIGN KEY([FK_Id_InvProductos])
REFERENCES [dbo].[SIGEEA_InvProductos] ([PK_Id_InvProductos])
GO
ALTER TABLE [dbo].[SIGEEA_DetInvProductos] CHECK CONSTRAINT [FK_SIGEEA_DetInvProductos_SIGEEA_InvProductos]
GO
ALTER TABLE [dbo].[SIGEEA_DetInvProductos]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_DetInvProductos_SIGEEA_TipProducto] FOREIGN KEY([FK_Id_TipProducto])
REFERENCES [dbo].[SIGEEA_TipProducto] ([PK_Id_TipProducto])
GO
ALTER TABLE [dbo].[SIGEEA_DetInvProductos] CHECK CONSTRAINT [FK_SIGEEA_DetInvProductos_SIGEEA_TipProducto]
GO
ALTER TABLE [dbo].[SIGEEA_DetInvProductos]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_DetInvProductos_SIGEEA_UniMedida] FOREIGN KEY([FK_Id_UniMedida])
REFERENCES [dbo].[SIGEEA_UniMedida] ([PK_Id_UniMedida])
GO
ALTER TABLE [dbo].[SIGEEA_DetInvProductos] CHECK CONSTRAINT [FK_SIGEEA_DetInvProductos_SIGEEA_UniMedida]
GO
ALTER TABLE [dbo].[SIGEEA_DetPagEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_DetPagEmpleados_SIGEEA_HorLaboradas] FOREIGN KEY([FK_Id_HorLaboradas])
REFERENCES [dbo].[SIGEEA_HorLaboradas] ([PK_Id_HorLaboradas])
GO
ALTER TABLE [dbo].[SIGEEA_DetPagEmpleados] CHECK CONSTRAINT [FK_SIGEEA_DetPagEmpleados_SIGEEA_HorLaboradas]
GO
ALTER TABLE [dbo].[SIGEEA_DetPagEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_DetPagEmpleados_SIGEEA_PagEmpleados] FOREIGN KEY([FK_Id_PagEmpleados])
REFERENCES [dbo].[SIGEEA_PagEmpleados] ([PK_Id_PagEmpleados])
GO
ALTER TABLE [dbo].[SIGEEA_DetPagEmpleados] CHECK CONSTRAINT [FK_SIGEEA_DetPagEmpleados_SIGEEA_PagEmpleados]
GO
ALTER TABLE [dbo].[SIGEEA_Direccion]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Direccion_SIGEEA_CodPostal] FOREIGN KEY([FK_Id_CodPostal])
REFERENCES [dbo].[SIGEEA_CodPostal] ([PK_Id_CodPostal])
GO
ALTER TABLE [dbo].[SIGEEA_Direccion] CHECK CONSTRAINT [FK_SIGEEA_Direccion_SIGEEA_CodPostal]
GO
ALTER TABLE [dbo].[SIGEEA_Direccion]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Direccion_SIGGEA_Distrito] FOREIGN KEY([FK_Id_Distrito])
REFERENCES [dbo].[SIGEEA_Distrito] ([PK_Id_Distrito])
GO
ALTER TABLE [dbo].[SIGEEA_Direccion] CHECK CONSTRAINT [FK_SIGEEA_Direccion_SIGGEA_Distrito]
GO
ALTER TABLE [dbo].[SIGEEA_Distrito]  WITH CHECK ADD  CONSTRAINT [FK_SIGGEA_Distrito_SIGEEA_Canton] FOREIGN KEY([FK_Id_Canton])
REFERENCES [dbo].[SIGEEA_Canton] ([PK_Id_Canton])
GO
ALTER TABLE [dbo].[SIGEEA_Distrito] CHECK CONSTRAINT [FK_SIGGEA_Distrito_SIGEEA_Canton]
GO
ALTER TABLE [dbo].[SIGEEA_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Empleado_SIGEEA_Empresa] FOREIGN KEY([FK_Id_Empresa])
REFERENCES [dbo].[SIGEEA_Empresa] ([PK_Id_Empresa])
GO
ALTER TABLE [dbo].[SIGEEA_Empleado] CHECK CONSTRAINT [FK_SIGEEA_Empleado_SIGEEA_Empresa]
GO
ALTER TABLE [dbo].[SIGEEA_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Empleado_SIGEEA_Escolaridad] FOREIGN KEY([FK_Id_Escolaridad])
REFERENCES [dbo].[SIGEEA_Escolaridad] ([PK_Id_Escolaridad])
GO
ALTER TABLE [dbo].[SIGEEA_Empleado] CHECK CONSTRAINT [FK_SIGEEA_Empleado_SIGEEA_Escolaridad]
GO
ALTER TABLE [dbo].[SIGEEA_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Empleado_SIGEEA_Persona] FOREIGN KEY([FK_Id_Persona])
REFERENCES [dbo].[SIGEEA_Persona] ([PK_Id_Persona])
GO
ALTER TABLE [dbo].[SIGEEA_Empleado] CHECK CONSTRAINT [FK_SIGEEA_Empleado_SIGEEA_Persona]
GO
ALTER TABLE [dbo].[SIGEEA_Estado]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Estado_SIGEEA_Pais] FOREIGN KEY([FK_Id_Pais])
REFERENCES [dbo].[SIGEEA_Pais] ([PK_Id_Pais])
GO
ALTER TABLE [dbo].[SIGEEA_Estado] CHECK CONSTRAINT [FK_SIGEEA_Estado_SIGEEA_Pais]
GO
ALTER TABLE [dbo].[SIGEEA_Experiencia]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Experiencia_SIGEEA_Empleado] FOREIGN KEY([FK_Id_Empleado])
REFERENCES [dbo].[SIGEEA_Empleado] ([PK_Id_Empleado])
GO
ALTER TABLE [dbo].[SIGEEA_Experiencia] CHECK CONSTRAINT [FK_SIGEEA_Experiencia_SIGEEA_Empleado]
GO
ALTER TABLE [dbo].[SIGEEA_FacCliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_FacCliente_SIGEEA_Cliente] FOREIGN KEY([FK_Id_Cliente])
REFERENCES [dbo].[SIGEEA_Cliente] ([PK_Id_Cliente])
GO
ALTER TABLE [dbo].[SIGEEA_FacCliente] CHECK CONSTRAINT [FK_SIGEEA_FacCliente_SIGEEA_Cliente]
GO
ALTER TABLE [dbo].[SIGEEA_FacCliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_FacCliente_SIGEEA_Empleado] FOREIGN KEY([FK_Id_Empleado])
REFERENCES [dbo].[SIGEEA_Empleado] ([PK_Id_Empleado])
GO
ALTER TABLE [dbo].[SIGEEA_FacCliente] CHECK CONSTRAINT [FK_SIGEEA_FacCliente_SIGEEA_Empleado]
GO
ALTER TABLE [dbo].[SIGEEA_FacCliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_FacCliente_SIGEEA_Empresa] FOREIGN KEY([FK_Id_Empresa])
REFERENCES [dbo].[SIGEEA_Empresa] ([PK_Id_Empresa])
GO
ALTER TABLE [dbo].[SIGEEA_FacCliente] CHECK CONSTRAINT [FK_SIGEEA_FacCliente_SIGEEA_Empresa]
GO
ALTER TABLE [dbo].[SIGEEA_FacCliente]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_FacCliente_SIGEEA_Moneda] FOREIGN KEY([FK_Id_Moneda])
REFERENCES [dbo].[SIGEEA_Moneda] ([PK_Id_Moneda])
GO
ALTER TABLE [dbo].[SIGEEA_FacCliente] CHECK CONSTRAINT [FK_SIGEEA_FacCliente_SIGEEA_Moneda]
GO
ALTER TABLE [dbo].[SIGEEA_FacInsumo]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_FacInsumo_SIGEEA_Empleado] FOREIGN KEY([FK_Id_Empleado])
REFERENCES [dbo].[SIGEEA_Empleado] ([PK_Id_Empleado])
GO
ALTER TABLE [dbo].[SIGEEA_FacInsumo] CHECK CONSTRAINT [FK_SIGEEA_FacInsumo_SIGEEA_Empleado]
GO
ALTER TABLE [dbo].[SIGEEA_FacInsumo]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_FacInsumo_SIGEEA_Proveedor] FOREIGN KEY([FK_Id_Proveedor])
REFERENCES [dbo].[SIGEEA_Proveedor] ([PK_Id_Proveedor])
GO
ALTER TABLE [dbo].[SIGEEA_FacInsumo] CHECK CONSTRAINT [FK_SIGEEA_FacInsumo_SIGEEA_Proveedor]
GO
ALTER TABLE [dbo].[SIGEEA_Familiar]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Familiar_SIGEEA_Asociado] FOREIGN KEY([FK_Id_Asociado])
REFERENCES [dbo].[SIGEEA_Asociado] ([PK_Id_Asociado])
GO
ALTER TABLE [dbo].[SIGEEA_Familiar] CHECK CONSTRAINT [FK_SIGEEA_Familiar_SIGEEA_Asociado]
GO
ALTER TABLE [dbo].[SIGEEA_Finca]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Finca_SIGEEA_Asociado] FOREIGN KEY([FK_Id_Asociado])
REFERENCES [dbo].[SIGEEA_Asociado] ([PK_Id_Asociado])
GO
ALTER TABLE [dbo].[SIGEEA_Finca] CHECK CONSTRAINT [FK_SIGEEA_Finca_SIGEEA_Asociado]
GO
ALTER TABLE [dbo].[SIGEEA_Finca]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Finca_SIGEEA_Direccion] FOREIGN KEY([FK_Id_Direccion])
REFERENCES [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion])
GO
ALTER TABLE [dbo].[SIGEEA_Finca] CHECK CONSTRAINT [FK_SIGEEA_Finca_SIGEEA_Direccion]
GO
ALTER TABLE [dbo].[SIGEEA_Finca]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Finca_SIGEEA_Empleado] FOREIGN KEY([FK_Id_Empleado])
REFERENCES [dbo].[SIGEEA_Empleado] ([PK_Id_Empleado])
GO
ALTER TABLE [dbo].[SIGEEA_Finca] CHECK CONSTRAINT [FK_SIGEEA_Finca_SIGEEA_Empleado]
GO
ALTER TABLE [dbo].[SIGEEA_HisDelictivo]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_HisDelictivo_SIGEEA_Empleado] FOREIGN KEY([FK_Id_Empleado])
REFERENCES [dbo].[SIGEEA_Empleado] ([PK_Id_Empleado])
GO
ALTER TABLE [dbo].[SIGEEA_HisDelictivo] CHECK CONSTRAINT [FK_SIGEEA_HisDelictivo_SIGEEA_Empleado]
GO
ALTER TABLE [dbo].[SIGEEA_HorLaboradas]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_HorLaboradas_SIGEEA_Empleado] FOREIGN KEY([FK_Id_Empleado])
REFERENCES [dbo].[SIGEEA_Empleado] ([PK_Id_Empleado])
GO
ALTER TABLE [dbo].[SIGEEA_HorLaboradas] CHECK CONSTRAINT [FK_SIGEEA_HorLaboradas_SIGEEA_Empleado]
GO
ALTER TABLE [dbo].[SIGEEA_HorLaboradas]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_HorLaboradas_SIGEEA_PueTemporal] FOREIGN KEY([FK_Id_Puesto])
REFERENCES [dbo].[SIGEEA_PueTemporal] ([PK_Id_Puesto])
GO
ALTER TABLE [dbo].[SIGEEA_HorLaboradas] CHECK CONSTRAINT [FK_SIGEEA_HorLaboradas_SIGEEA_PueTemporal]
GO
ALTER TABLE [dbo].[SIGEEA_InvInsumo]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_InvInsumo_SIGEEA_Insumo] FOREIGN KEY([FK_Id_Insumo])
REFERENCES [dbo].[SIGEEA_Insumo] ([PK_Id_Insumo])
GO
ALTER TABLE [dbo].[SIGEEA_InvInsumo] CHECK CONSTRAINT [FK_SIGEEA_InvInsumo_SIGEEA_Insumo]
GO
ALTER TABLE [dbo].[SIGEEA_InvInsumo]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_InvInsumo_SIGEEA_UniMedida] FOREIGN KEY([FK_UniMedida])
REFERENCES [dbo].[SIGEEA_UniMedida] ([PK_Id_UniMedida])
GO
ALTER TABLE [dbo].[SIGEEA_InvInsumo] CHECK CONSTRAINT [FK_SIGEEA_InvInsumo_SIGEEA_UniMedida]
GO
ALTER TABLE [dbo].[SIGEEA_InvProductos]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_InvProductos_SIGEEA_Bodega] FOREIGN KEY([FK_Id_Bodega])
REFERENCES [dbo].[SIGEEA_Bodega] ([PK_Id_Bodega])
GO
ALTER TABLE [dbo].[SIGEEA_InvProductos] CHECK CONSTRAINT [FK_SIGEEA_InvProductos_SIGEEA_Bodega]
GO
ALTER TABLE [dbo].[SIGEEA_PagEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_PagEmpleados_SIGEEA_Empleado] FOREIGN KEY([FK_Id_Empleado])
REFERENCES [dbo].[SIGEEA_Empleado] ([PK_Id_Empleado])
GO
ALTER TABLE [dbo].[SIGEEA_PagEmpleados] CHECK CONSTRAINT [FK_SIGEEA_PagEmpleados_SIGEEA_Empleado]
GO
ALTER TABLE [dbo].[SIGEEA_PedInsumo]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_PedInsumo_SIGEEA_Empleado] FOREIGN KEY([FK_Id_Empleado])
REFERENCES [dbo].[SIGEEA_Empleado] ([PK_Id_Empleado])
GO
ALTER TABLE [dbo].[SIGEEA_PedInsumo] CHECK CONSTRAINT [FK_SIGEEA_PedInsumo_SIGEEA_Empleado]
GO
ALTER TABLE [dbo].[SIGEEA_PedInsumo]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_PedInsumo_SIGEEA_Insumo] FOREIGN KEY([FK_Id_Insumo])
REFERENCES [dbo].[SIGEEA_Insumo] ([PK_Id_Insumo])
GO
ALTER TABLE [dbo].[SIGEEA_PedInsumo] CHECK CONSTRAINT [FK_SIGEEA_PedInsumo_SIGEEA_Insumo]
GO
ALTER TABLE [dbo].[SIGEEA_Permiso_SubModulo]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Permiso_SubModulo_SIGEEA_Permiso] FOREIGN KEY([FK_Id_Permiso])
REFERENCES [dbo].[SIGEEA_Permiso] ([PK_Id_Permiso])
GO
ALTER TABLE [dbo].[SIGEEA_Permiso_SubModulo] CHECK CONSTRAINT [FK_SIGEEA_Permiso_SubModulo_SIGEEA_Permiso]
GO
ALTER TABLE [dbo].[SIGEEA_Permiso_SubModulo]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Permiso_SubModulo_SIGEEA_SubModulo] FOREIGN KEY([FK_Id_SubModulo])
REFERENCES [dbo].[SIGEEA_SubModulo] ([PK_Id_SubModulo])
GO
ALTER TABLE [dbo].[SIGEEA_Permiso_SubModulo] CHECK CONSTRAINT [FK_SIGEEA_Permiso_SubModulo_SIGEEA_SubModulo]
GO
ALTER TABLE [dbo].[SIGEEA_Persona]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Persona_SIGEEA_Direccion] FOREIGN KEY([FK_Id_Direccion])
REFERENCES [dbo].[SIGEEA_Direccion] ([PK_Id_Direccion])
GO
ALTER TABLE [dbo].[SIGEEA_Persona] CHECK CONSTRAINT [FK_SIGEEA_Persona_SIGEEA_Direccion]
GO
ALTER TABLE [dbo].[SIGEEA_Persona]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Persona_SIGEEA_Nacionalidad] FOREIGN KEY([FK_Id_Nacionalidad])
REFERENCES [dbo].[SIGEEA_Nacionalidad] ([PK_Id_Nacionalidad])
GO
ALTER TABLE [dbo].[SIGEEA_Persona] CHECK CONSTRAINT [FK_SIGEEA_Persona_SIGEEA_Nacionalidad]
GO
ALTER TABLE [dbo].[SIGEEA_PreProCompra]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_PreProCompra_SIGEEA_TipProducto] FOREIGN KEY([FK_Id_TipProducto])
REFERENCES [dbo].[SIGEEA_TipProducto] ([PK_Id_TipProducto])
GO
ALTER TABLE [dbo].[SIGEEA_PreProCompra] CHECK CONSTRAINT [FK_SIGEEA_PreProCompra_SIGEEA_TipProducto]
GO
ALTER TABLE [dbo].[SIGEEA_PreProVenta]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_PreProVenta_SIGEEA_Moneda] FOREIGN KEY([FK_Id_Moneda])
REFERENCES [dbo].[SIGEEA_Moneda] ([PK_Id_Moneda])
GO
ALTER TABLE [dbo].[SIGEEA_PreProVenta] CHECK CONSTRAINT [FK_SIGEEA_PreProVenta_SIGEEA_Moneda]
GO
ALTER TABLE [dbo].[SIGEEA_PreProVenta]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_PreProVenta_SIGEEA_TipProducto] FOREIGN KEY([FK_Id_TipProducto])
REFERENCES [dbo].[SIGEEA_TipProducto] ([PK_Id_TipProducto])
GO
ALTER TABLE [dbo].[SIGEEA_PreProVenta] CHECK CONSTRAINT [FK_SIGEEA_PreProVenta_SIGEEA_TipProducto]
GO
ALTER TABLE [dbo].[SIGEEA_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Proveedor_SIGEEA_Empresa] FOREIGN KEY([FK_Id_Empresa])
REFERENCES [dbo].[SIGEEA_Empresa] ([PK_Id_Empresa])
GO
ALTER TABLE [dbo].[SIGEEA_Proveedor] CHECK CONSTRAINT [FK_SIGEEA_Proveedor_SIGEEA_Empresa]
GO
ALTER TABLE [dbo].[SIGEEA_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Proveedor_SIGEEA_Persona] FOREIGN KEY([FK_Id_Persona])
REFERENCES [dbo].[SIGEEA_Persona] ([PK_Id_Persona])
GO
ALTER TABLE [dbo].[SIGEEA_Proveedor] CHECK CONSTRAINT [FK_SIGEEA_Proveedor_SIGEEA_Persona]
GO
ALTER TABLE [dbo].[SIGEEA_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Proveedor_SIGEEA_Persona1] FOREIGN KEY([FK_Id_Persona])
REFERENCES [dbo].[SIGEEA_Persona] ([PK_Id_Persona])
GO
ALTER TABLE [dbo].[SIGEEA_Proveedor] CHECK CONSTRAINT [FK_SIGEEA_Proveedor_SIGEEA_Persona1]
GO
ALTER TABLE [dbo].[SIGEEA_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Proveedor_SIGEEA_Producto] FOREIGN KEY([FK_Id_Insumo])
REFERENCES [dbo].[SIGEEA_Insumo] ([PK_Id_Insumo])
GO
ALTER TABLE [dbo].[SIGEEA_Proveedor] CHECK CONSTRAINT [FK_SIGEEA_Proveedor_SIGEEA_Producto]
GO
ALTER TABLE [dbo].[SIGEEA_Provincia]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Provincia_SIGEEA_Pais] FOREIGN KEY([FK_Id_Pais])
REFERENCES [dbo].[SIGEEA_Pais] ([PK_Id_Pais])
GO
ALTER TABLE [dbo].[SIGEEA_Provincia] CHECK CONSTRAINT [FK_SIGEEA_Provincia_SIGEEA_Pais]
GO
ALTER TABLE [dbo].[SIGEEA_Representante]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Representante_SIGEEA_Persona] FOREIGN KEY([FK_Id_Persona])
REFERENCES [dbo].[SIGEEA_Persona] ([PK_Id_Persona])
GO
ALTER TABLE [dbo].[SIGEEA_Representante] CHECK CONSTRAINT [FK_SIGEEA_Representante_SIGEEA_Persona]
GO
ALTER TABLE [dbo].[SIGEEA_Rol]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Rol_SIGEEA_Permiso] FOREIGN KEY([FK_Id_Permiso])
REFERENCES [dbo].[SIGEEA_Permiso] ([PK_Id_Permiso])
GO
ALTER TABLE [dbo].[SIGEEA_Rol] CHECK CONSTRAINT [FK_SIGEEA_Rol_SIGEEA_Permiso]
GO
ALTER TABLE [dbo].[SIGEEA_SubModulo]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_SubModulo_SIGEEA_SubModulo] FOREIGN KEY([FK_Id_Modulo])
REFERENCES [dbo].[SIGEEA_Modulo] ([PK_Id_Modulo])
GO
ALTER TABLE [dbo].[SIGEEA_SubModulo] CHECK CONSTRAINT [FK_SIGEEA_SubModulo_SIGEEA_SubModulo]
GO
ALTER TABLE [dbo].[SIGEEA_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Usuario_SIGEEA_Empleado] FOREIGN KEY([FK_Id_Empleado])
REFERENCES [dbo].[SIGEEA_Empleado] ([PK_Id_Empleado])
GO
ALTER TABLE [dbo].[SIGEEA_Usuario] CHECK CONSTRAINT [FK_SIGEEA_Usuario_SIGEEA_Empleado]
GO
ALTER TABLE [dbo].[SIGEEA_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_SIGEEA_Usuario_SIGEEA_Rol] FOREIGN KEY([FK_Id_Rol])
REFERENCES [dbo].[SIGEEA_Rol] ([PK_Id_Rol])
GO
ALTER TABLE [dbo].[SIGEEA_Usuario] CHECK CONSTRAINT [FK_SIGEEA_Usuario_SIGEEA_Rol]
GO
ALTER TABLE [dbo].[SIGEEA_Asamblea]  WITH CHECK ADD  CONSTRAINT [CK_SIGEEA_Asamblea] CHECK  (([Tipo_Asamblea]=(2) OR [Tipo_Asamblea]=(1)))
GO
ALTER TABLE [dbo].[SIGEEA_Asamblea] CHECK CONSTRAINT [CK_SIGEEA_Asamblea]
GO
ALTER TABLE [dbo].[SIGEEA_AsiAsamblea]  WITH CHECK ADD  CONSTRAINT [CK_SIGEEA_AsiAsamblea] CHECK  (([Estado_AsiAsamblea]>(0) AND [Estado_AsiAsamblea]<=(3)))
GO
ALTER TABLE [dbo].[SIGEEA_AsiAsamblea] CHECK CONSTRAINT [CK_SIGEEA_AsiAsamblea]
GO
ALTER TABLE [dbo].[SIGEEA_BitPagos]  WITH CHECK ADD  CONSTRAINT [CK_SIGEEA_BitPagos] CHECK  (([Metodo_BitPagos]=(3) OR [Metodo_BitPagos]=(2) OR [Metodo_BitPagos]=(1)))
GO
ALTER TABLE [dbo].[SIGEEA_BitPagos] CHECK CONSTRAINT [CK_SIGEEA_BitPagos]
GO
ALTER TABLE [dbo].[SIGEEA_DetFacAsociado]  WITH CHECK ADD  CONSTRAINT [CK_SIGEEA_DetFacAsociado] CHECK  (([CanTotal_DetFacAsociado]>(0) AND ([Mercado_DetFacAsociado]=(2) OR [Mercado_DetFacAsociado]=(1))))
GO
ALTER TABLE [dbo].[SIGEEA_DetFacAsociado] CHECK CONSTRAINT [CK_SIGEEA_DetFacAsociado]
GO
ALTER TABLE [dbo].[SIGEEA_DetPagEmpleados]  WITH CHECK ADD  CONSTRAINT [CK_SIGEEA_DetPagEmpleados] CHECK  (([Total_DetPagEmpleados]>=(0)))
GO
ALTER TABLE [dbo].[SIGEEA_DetPagEmpleados] CHECK CONSTRAINT [CK_SIGEEA_DetPagEmpleados]
GO
ALTER TABLE [dbo].[SIGEEA_FacAsociado]  WITH CHECK ADD  CONSTRAINT [CK_SIGEEA_FacAsociado] CHECK  (([CanTotal_FacAsociado]>(0)))
GO
ALTER TABLE [dbo].[SIGEEA_FacAsociado] CHECK CONSTRAINT [CK_SIGEEA_FacAsociado]
GO
ALTER TABLE [dbo].[SIGEEA_Familiar]  WITH CHECK ADD  CONSTRAINT [CK_SIGEEA_Familiar] CHECK  (([Escolaridad_Familiar]=(4) OR [Escolaridad_Familiar]=(3) OR [Escolaridad_Familiar]=(2) OR [Escolaridad_Familiar]=(1) OR [Escolaridad_Familiar]=(0)))
GO
ALTER TABLE [dbo].[SIGEEA_Familiar] CHECK CONSTRAINT [CK_SIGEEA_Familiar]
GO
ALTER TABLE [dbo].[SIGEEA_PagAsociado]  WITH CHECK ADD  CONSTRAINT [CK_SIGEEA_PagAsociado] CHECK  (([Monto_PagAsociado]>(0)))
GO
ALTER TABLE [dbo].[SIGEEA_PagAsociado] CHECK CONSTRAINT [CK_SIGEEA_PagAsociado]
GO
ALTER TABLE [dbo].[SIGEEA_Persona]  WITH CHECK ADD  CONSTRAINT [CK_Razon_Persona] CHECK  (([Tipo_Persona]=(1) AND [CedJuridica_Persona] IS NULL AND [CedParticular_Persona] IS NOT NULL OR [Tipo_Persona]=(0) AND [CedJuridica_Persona] IS NOT NULL AND [CedParticular_Persona] IS NULL))
GO
ALTER TABLE [dbo].[SIGEEA_Persona] CHECK CONSTRAINT [CK_Razon_Persona]
GO
ALTER TABLE [dbo].[SIGEEA_Persona]  WITH CHECK ADD  CONSTRAINT [CK_SIGEEA_Persona] CHECK  (([Genero_Persona]='F' OR [Genero_Persona]='M'))
GO
ALTER TABLE [dbo].[SIGEEA_Persona] CHECK CONSTRAINT [CK_SIGEEA_Persona]
GO
ALTER TABLE [dbo].[SIGEEA_PreProCompra]  WITH CHECK ADD  CONSTRAINT [CK_SIGEEA_PreProCompra] CHECK  (([PreNacional_PreProCompra]>(0) AND [PreExtranjero_PreProCompra]>(0)))
GO
ALTER TABLE [dbo].[SIGEEA_PreProCompra] CHECK CONSTRAINT [CK_SIGEEA_PreProCompra]
GO
ALTER TABLE [dbo].[SIGEEA_PreProCompra]  WITH CHECK ADD  CONSTRAINT [CK_SIGEEA_PreProCompra_NoNulo] CHECK  (([PreNacional_PreProCompra] IS NOT NULL OR [PreExtranjero_PreProCompra] IS NOT NULL))
GO
ALTER TABLE [dbo].[SIGEEA_PreProCompra] CHECK CONSTRAINT [CK_SIGEEA_PreProCompra_NoNulo]
GO
ALTER TABLE [dbo].[SIGEEA_PreProVenta]  WITH CHECK ADD  CONSTRAINT [CK_SIGEEA_PreProVenta_NoNulo] CHECK  (([PreNacional_PreProVenta] IS NOT NULL OR [PreExtranjero_PreProVenta] IS NOT NULL))
GO
ALTER TABLE [dbo].[SIGEEA_PreProVenta] CHECK CONSTRAINT [CK_SIGEEA_PreProVenta_NoNulo]
GO
ALTER TABLE [dbo].[SIGEEA_PreProVenta]  WITH CHECK ADD  CONSTRAINT [CK_SIGEEA_PreProVenta_Precios] CHECK  (([PreNacional_PreProVenta]>(0) AND [PreExtranjero_PreProVenta]>(0)))
GO
ALTER TABLE [dbo].[SIGEEA_PreProVenta] CHECK CONSTRAINT [CK_SIGEEA_PreProVenta_Precios]
GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spActualizaCategoriaAsambleas]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 27/05/2016
-- Description:	Actualiza la categoría de cuotas del asociado
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spActualizaCategoriaAsambleas]
	@PK_Categoria int = null,
	@Categoria float = null
AS
BEGIN

	SET NOCOUNT ON;

    UPDATE SIGEEA_CatAsociado
	SET AsambleasProm_CatAsociado = @Categoria
	WHERE PK_Id_CatAsociado = @PK_Categoria;
END














GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spActualizaCategoriaCuotas]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 27/05/2016
-- Description:	Actualiza la categoría de cuotas del asociado
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spActualizaCategoriaCuotas]
	@PK_Categoria int = null,
	@Categoria float = null
AS
BEGIN

	SET NOCOUNT ON;

    UPDATE SIGEEA_CatAsociado
	SET CuotasProm_CatAsociado = @Categoria
	WHERE PK_Id_CatAsociado = @PK_Categoria;
END














GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spAnularEntregaProducto]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 11-03-2017
-- Description:	Anula la factura que está en proceso de entrega de producto
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spAnularEntregaProducto]
	@IdFactura int = null
AS
BEGIN

	SET NOCOUNT ON;

    DELETE FROM SIGEEA_DetFacAsociado
	WHERE FK_Id_FacAsociado = @IdFactura;

	DELETE FROM SIGEEA_FacAsociado
	WHERE PK_Id_FacAsociado = @IdFactura;

END







GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spAutenticaPersona]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 14/01/16
-- Description:	Autentica persona (jurídica o particular)
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spAutenticaPersona]
	@Cedula varchar(30) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT PK_Id_Persona
	FROM SIGEEA_Persona
	WHERE CedJuridica_Persona = @Cedula
	OR CedParticular_Persona = @Cedula;
END























GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spCancelarPagoEmpleado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 13/02/16
-- Description:	Cancela el pago de un día laborado
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spCancelarPagoEmpleado]
	@IdHoras int = null,
	@IdEmpleado int = null,
	@Total float = null
AS
BEGIN

	SET NOCOUNT ON;

    UPDATE SIGEEA_HorLaboradas
	SET Estado_HorLaboradas = 1
	WHERE PK_Id_HorLaboradas = @IdHoras;	

END



















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spCodigoAsociado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 27/05/2016
-- Description:	Actualiza el código del asociado
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spCodigoAsociado]
	@Asociado int = null,
	@Codigo varchar(30) = null
AS
BEGIN

	SET NOCOUNT ON;

	UPDATE SIGEEA_Asociado
	SET Codigo_Asociado = @Codigo
	WHERE PK_Id_Asociado = @Asociado;
END














GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spDetalleFacturaCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spDetalleFacturaCliente]
	@idFactura int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TP.Nombre_TipProducto, TP.Calidad_TipProducto,
	CONCAT(DF.Moneda_DetFacCliente, format(DF.PreUnidad_DetFacCliente, 'N0')) as PreUnidad_DetFacCliente,
	CONCAT(DF.Moneda_DetFacCliente, format(DF.MonNeto_DetFacCliente, 'N0')) as MonNeto_DetFacCliente,
	CONCAT(DF.Moneda_DetFacCliente, format(DF.MonTotal_DetFacCliente, 'N0')) as MonTotal_DetFacCliente,
	CONCAT(DF.CanProducto_DetFacCliente, UM.Nombre_UniMedida) as CanProducto_DetFacCliente,
	CONCAT(DF.Descuento_DetFacCliente, '%') AS Descuento_DetFacCliente
	FROM SIGEEA_FacClientE F
	JOIN SIGEEA_DetFacCliente DF 
	ON F.PK_Id_FacCliente = DF.FK_Id_FacCliente
	JOIN SIGEEA_TipProducto TP
	ON TP.PK_Id_TipProducto = DF.FK_Id_TipProducto
	JOIN SIGEEA_UniMedida UM
	ON UM.PK_Id_UniMedida = DF.FK_Id_UniMedida
	WHERE F.PK_Id_FacCliente = @idFactura
END



GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spEditarDireccion]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 5/01/15
-- Description:	Permite editar las direcciones de las personas
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spEditarDireccion]
	@Persona int = null,
	@Detalles varchar(100) = null,
	@Distrito int = null
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE SIGEEA_Direccion
	SET Detalles_Direccion = @Detalles
	FROM SIGEEA_Persona p  
	JOIN SIGEEA_Direccion d
	ON d.PK_Id_Direccion = p.FK_Id_Direccion and p.PK_Id_Persona = @Persona;
	
	UPDATE SIGEEA_Direccion
	SET FK_Id_Distrito = @Distrito
	FROM SIGEEA_Persona p
	JOIN SIGEEA_Direccion d
	ON d.PK_Id_Direccion = p.FK_Id_Direccion and p.PK_Id_Persona = @Persona;
END























GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spEditarDireccionFinca]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SIGEEA_spEditarDireccionFinca]
    @Finca int = null,
	@Detalles varchar(100) = null,
	@Distrito int = null
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE SIGEEA_Direccion
	SET Detalles_Direccion = @Detalles
	FROM SIGEEA_Finca f  
	JOIN SIGEEA_Direccion d
	ON d.PK_Id_Direccion = f.FK_Id_Direccion and f.PK_Id_Finca = @Finca;
	
	UPDATE SIGEEA_Direccion
	SET FK_Id_Distrito = @Distrito
	FROM SIGEEA_Finca f  
	JOIN SIGEEA_Direccion d
	ON d.PK_Id_Direccion = f.FK_Id_Direccion and f.PK_Id_Finca = @Finca;
END















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spEditarPuesto]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 06/02/16
-- Description:	Agrega un puesto temporal y el registro anterior se desactiva
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spEditarPuesto]
	@Puesto varchar(30) = null,
	@Tarifa float = null
AS
BEGIN

	SET NOCOUNT ON;
	
	UPDATE SIGEEA_PueTemporal
	SET Estado_Puesto = 0
	WHERE Nombre_Puesto = @Puesto and Estado_Puesto = 1;

	INSERT INTO SIGEEA_PueTemporal(Nombre_Puesto, Tarifa_Puesto, Actualizacion_Puesto, Estado_Puesto)
	Values(@Puesto, @Tarifa, GETDATE(), 1);
    
END





















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spEncabezadoFacturaCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Roberto Alvarado Fallas
-- Create date: 19/03/2017
-- Description:	Reporte de ventas por cliente
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spEncabezadoFacturaCliente]
	@idFactura INT = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT 
	EM.Nombre_Empresa, EM.Direccion_Empresa, 
	EM.CedJuridica_Empresa as CedJuridica,
		  EM.Telefono_Empresa as Telefono,
		   EM.Correo_Empresa AS Correo,
	CASE F.Estado_FacCliente 
		WHEN 'CO' THEN 'Contado'
		WHEN 'CR' THEN 'Crédito' 
		WHEN 'PR' THEN 'Proforma'
	END as Estado_FacCliente,
	CONVERT (char(10), F.FecEntrega_FacCliente, 103) AS Fecha_Factura,
	CONVERT(nvarchar(10), F.FecEntrega_FacCliente, 108) AS Hora_Factura,
	CONCAT( EP.PriNombre_Persona,' ', EP.SegNombre_Persona, ' ', EP.PriApellido_Persona, ' ', EP.SegApellido_Persona) AS Atendido_Por,
	CONCAT(CP.PriNombre_Persona, ' ', CP.SegNombre_Persona, ' ', CP.PriApellido_Persona, ' ', CP.SegApellido_Persona) AS Nombre_Cliente,
	F.PK_Id_FacCliente AS Numero_Factura
	FROM SIGEEA_FacCliente F
	JOIN SIGEEA_Cliente C
	ON C.PK_Id_Cliente = F.FK_Id_Cliente
	JOIN SIGEEA_Persona CP
	ON CP.PK_Id_Persona = C.FK_Id_Persona
	JOIN SIGEEA_Empleado E
	ON E.PK_Id_Empleado = F.FK_Id_Empleado
	JOIN SIGEEA_Persona EP
	ON EP.PK_Id_Persona = E.FK_Id_Persona
	JOIN SIGEEA_Empresa EM 
	ON EM.PK_Id_Empresa = F.FK_Id_Empresa
	WHERE F.PK_Id_FacCliente = @idFactura
END





GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spEncabezadoReporteVentasPorCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Roberto Alvarado Fallas
-- Create date: 19/03/2017
-- Description:	Encabezado del reporte de ventas por cliente
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spEncabezadoReporteVentasPorCliente]
	@idCliente int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT
	CONCAT(pc.PriNombre_Persona, +' '+pc.SegNombre_Persona, ' '+ pc.PriApellido_Persona, ' '+ pc.SegApellido_Persona) as nomCliente,
	CONVERT (char(10), getdate(), 103) AS Fecha,
	CONVERT(nvarchar(10), getdate(), 108) AS Hora,
	emC.Nombre_Empresa, emC.Direccion_Empresa, 
	emC.CedJuridica_Empresa as CedJuridica,
		  emC.Telefono_Empresa as Telefono,
		   emC.Correo_Empresa AS Correo
	 FROM SIGEEA_Cliente c 
	 JOIN SIGEEA_Persona pc
	 ON pc.PK_Id_Persona = c.FK_Id_Persona
	 JOIN SIGEEA_Empresa emC
	 ON emC.PK_Id_Empresa = c.FK_Id_Empresa
	 WHERE (c.PK_Id_Cliente = @idCliente)
	 

END



GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spGeneraReporteAsociadosConsolidado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 22-03-2017
-- Description:	Genera el reporte de las entregas de los asociados
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spGeneraReporteAsociadosConsolidado]
	@IND_FILTRO int = null, -- 0 = todos; 1 = incompletas; 2 = canceladas
	@FEC_INICIO varchar(20) = null,
	@FEC_FIN varchar(20) = null

AS
BEGIN

	SET NOCOUNT ON;
	
	IF @IND_FILTRO = 0
		BEGIN
			SELECT F.Numero_FacAsociado, F.CanTotal_FacAsociado, 
					CASE F.CanNeta_FacAsociado
						WHEN -1 THEN NULL
						ELSE CONVERT(VARCHAR, ROUND(100 - ((F.CanNeta_FacAsociado * 100) / F.CanTotal_FacAsociado),2,2)) + '%'
					END AS Merma,
				   CASE F.CanNeta_FacAsociado
						WHEN -1 THEN 0
						ELSE F.CanNeta_FacAsociado
						END AS CanNeta_FacAsociado, F.FecEntrega_FacAsociado, 
					CASE F.FecPago_FacAsociado
						WHEN N'0001-01-01' THEN NULL
						ELSE F.FecPago_FacAsociado
					END AS FecPago_FacAsociado, P.PriNombre_Persona + ' ' + P.PriApellido_Persona + ' ' + P.SegApellido_Persona AS Nombre_Asociado,
				   P.CedJuridica_Persona as CedJurPersona, P.CedParticular_Persona, CONVERT(VARCHAR(10), CONVERT(DATE,@FEC_INICIO,126),101) AS fecInicio, CONVERT(VARCHAR(10), CONVERT(DATE,@FEC_FIN,126),101) AS fecFinal,
					(SELECT SUM(DF.Saldo_DetFacAsociado)
					 FROM SIGEEA_DetFacAsociado DF
					 WHERE DF.FK_Id_FacAsociado = F.PK_Id_FacAsociado
					 GROUP BY DF.FK_Id_FacAsociado) AS Monto_Deuda
			FROM SIGEEA_FacAsociado F
			JOIN SIGEEA_Asociado A
			ON A.PK_Id_Asociado = F.FK_Id_Asociado
			JOIN SIGEEA_Persona P
			ON P.PK_Id_Persona = A.FK_Id_Persona
			WHERE CONVERT(date,FecEntrega_FacAsociado,126) BETWEEN CONVERT(date, @FEC_INICIO,126) AND CONVERT(date, @FEC_FIN,126)
		END
	IF @IND_FILTRO = 1
		BEGIN
			SELECT F.Numero_FacAsociado, F.CanTotal_FacAsociado, F.FecEntrega_FacAsociado, P.PriNombre_Persona + ' ' + P.PriApellido_Persona + ' ' + P.SegApellido_Persona AS Nombre_Asociado,
				   CASE F.CanNeta_FacAsociado 
						WHEN -1 THEN NULL
						ELSE CONVERT(VARCHAR, ROUND(100 - ((F.CanNeta_FacAsociado * 100) / F.CanTotal_FacAsociado),2,2)) + '%'
				   END AS Merma,
				   CASE F.CanNeta_FacAsociado
						WHEN -1 THEN 0
						ELSE F.CanNeta_FacAsociado
						END AS CanNeta_FacAsociado,
				   CASE F.FecPago_FacAsociado
						WHEN N'0001-01-01' THEN NULL
						ELSE F.FecPago_FacAsociado
					END AS FecPago_FacAsociado, P.CedJuridica_Persona as CedJurPersona, P.CedParticular_Persona, CONVERT(VARCHAR(10), CONVERT(DATE,@FEC_INICIO,126),101) AS fecInicio, CONVERT(VARCHAR(10), CONVERT(DATE,@FEC_FIN,126),101) AS fecFinal,
				   (SELECT SUM(DF.Saldo_DetFacAsociado)
					FROM SIGEEA_DetFacAsociado DF
					WHERE DF.FK_Id_FacAsociado = F.PK_Id_FacAsociado
					GROUP BY DF.FK_Id_FacAsociado) AS Monto_Deuda
			FROM SIGEEA_FacAsociado F
			JOIN SIGEEA_Asociado A
			ON A.PK_Id_Asociado = F.FK_Id_Asociado
			JOIN SIGEEA_Persona P
			ON P.PK_Id_Persona = A.FK_Id_Persona
			WHERE CONVERT(date,FecEntrega_FacAsociado,126) BETWEEN CONVERT(date, @FEC_INICIO,126) AND CONVERT(date, @FEC_FIN,126) AND (F.Incompleta_FacAsociado = 1 OR F.Estado_FacAsociado = 1)
		END
	IF @IND_FILTRO = 2
		BEGIN
			SELECT F.Numero_FacAsociado,
						CASE F.CanNeta_FacAsociado
							WHEN -1 THEN NULL
							ELSE CONVERT(VARCHAR, ROUND(100 - ((F.CanNeta_FacAsociado * 100) / F.CanTotal_FacAsociado),2,2)) + '%'
						END AS Merma,
						CASE F.CanNeta_FacAsociado
							WHEN -1 THEN 0
							ELSE F.CanNeta_FacAsociado
						END AS CanNeta_FacAsociado, F.CanTotal_FacAsociado, F.FecEntrega_FacAsociado, P.PriNombre_Persona + ' ' + P.PriApellido_Persona + ' ' + P.SegApellido_Persona AS Nombre_Asociado,
				   CASE F.FecPago_FacAsociado
						WHEN N'0001-01-01' THEN NULL
						ELSE F.FecPago_FacAsociado
					END AS FecPago_FacAsociado, P.CedJuridica_Persona as CedJurPersona, P.CedParticular_Persona, CONVERT(VARCHAR(10), CONVERT(DATE,@FEC_INICIO,126),101) AS fecInicio, CONVERT(VARCHAR(10), CONVERT(DATE,@FEC_FIN,126),101) AS fecFinal,
				   (SELECT SUM(DF.Saldo_DetFacAsociado)
					FROM SIGEEA_DetFacAsociado DF
					WHERE DF.FK_Id_FacAsociado = F.PK_Id_FacAsociado
					GROUP BY DF.FK_Id_FacAsociado) AS Monto_Deuda
			FROM SIGEEA_FacAsociado F
			JOIN SIGEEA_Asociado A
			ON A.PK_Id_Asociado = F.FK_Id_Asociado
			JOIN SIGEEA_Persona P
			ON P.PK_Id_Persona = A.FK_Id_Persona
			WHERE CONVERT(date,FecEntrega_FacAsociado,126) BETWEEN CONVERT(date, @FEC_INICIO,126) AND CONVERT(date, @FEC_FIN,126) AND F.Incompleta_FacAsociado = 0 AND F.Estado_FacAsociado = 0
		END

END






GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spGeneraReporteAsociadosPorId]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 22-03-2017
-- Description:	Genera el reporte de las entregas de los asociados
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spGeneraReporteAsociadosPorId]
	@IND_FILTRO int = null, -- 0 = incompletas y canceladas; 1 = incompletas; 2 = canceladas;
	@FEC_INICIO varchar(20) = null,
	@FEC_FIN varchar(20) = null,
	@ID_ASOCIADO int = null

AS
BEGIN

	SET NOCOUNT ON;
	
	IF @IND_FILTRO = 0
		BEGIN
			SELECT F.Numero_FacAsociado, 
				CASE F.CanNeta_FacAsociado
					WHEN -1 THEN NULL
					ELSE CONVERT(VARCHAR, ROUND(100 - ((F.CanNeta_FacAsociado * 100) / F.CanTotal_FacAsociado),2,2)) + '%'
				END AS Merma,
				CASE F.FecPago_FacAsociado
							WHEN N'0001-01-01' THEN NULL
							ELSE F.FecPago_FacAsociado
						END AS FecPago_FacAsociado, F.FecEntrega_FacAsociado, F.CanTotal_FacAsociado, 
				CASE F.CanNeta_FacAsociado
							WHEN -1 THEN 0
							ELSE F.CanNeta_FacAsociado
							END AS CanNeta_FacAsociado, A.Codigo_Asociado, 
					   P.CedParticular_Persona, P.CedJuridica_Persona, P.PriNombre_Persona + ' ' + P.PriApellido_Persona + ' ' + P.SegApellido_Persona AS Nombre_Asociado, 
					   CONVERT(VARCHAR(10), CONVERT(DATE,@FEC_INICIO),101) AS fecInicio, CONVERT(VARCHAR(10), CONVERT(DATE,@FEC_FIN),101) AS fecFinal,
				(SELECT SUM(DF.Saldo_DetFacAsociado)
				FROM SIGEEA_DetFacAsociado DF
				WHERE DF.FK_Id_FacAsociado = F.PK_Id_FacAsociado
				GROUP BY DF.FK_Id_FacAsociado) AS Monto_Total				
			FROM SIGEEA_FacAsociado F
			JOIN SIGEEA_Asociado A
			ON A.PK_Id_Asociado = F.FK_Id_Asociado
			JOIN SIGEEA_Persona P
			ON P.PK_Id_Persona = A.FK_Id_Persona
			WHERE CONVERT(date,FecEntrega_FacAsociado,126) BETWEEN CONVERT(date, @FEC_INICIO,126) AND CONVERT(date, @FEC_FIN,126) AND FK_Id_Asociado = @ID_ASOCIADO
		END
	IF @IND_FILTRO = 1
		BEGIN
			SELECT F.Numero_FacAsociado, 
				   CASE F.CanNeta_FacAsociado
						WHEN -1 THEN NULL
						ELSE CONVERT(VARCHAR, ROUND(100 - ((F.CanNeta_FacAsociado * 100) / F.CanTotal_FacAsociado),2,2)) + '%'
				   END AS Merma,
				   CASE F.FecPago_FacAsociado
							WHEN N'0001-01-01' THEN NULL
							ELSE F.FecPago_FacAsociado
				   END AS FecPago_FacAsociado, F.FecEntrega_FacAsociado, F.CanTotal_FacAsociado, F.CanNeta_FacAsociado, A.Codigo_Asociado, 
				   P.CedParticular_Persona, P.CedJuridica_Persona, P.PriNombre_Persona + ' ' + P.PriApellido_Persona + ' ' + P.SegApellido_Persona AS Nombre_Asociado, 
				   CONVERT(VARCHAR(10), CONVERT(DATE,@FEC_INICIO),101) AS fecInicio, CONVERT(VARCHAR(10), CONVERT(DATE,@FEC_FIN),101) AS fecFinal,
				   (SELECT SUM(DF.Saldo_DetFacAsociado) AS MONTO
					FROM SIGEEA_DetFacAsociado DF
					WHERE DF.FK_Id_FacAsociado = F.PK_Id_FacAsociado
					GROUP BY DF.FK_Id_FacAsociado) AS Monto_Total
			FROM SIGEEA_FacAsociado F
			JOIN SIGEEA_Asociado A
			ON A.PK_Id_Asociado = F.FK_Id_Asociado
			JOIN SIGEEA_Persona P
			ON P.PK_Id_Persona = A.FK_Id_Persona
			WHERE CONVERT(date,FecEntrega_FacAsociado,126) BETWEEN CONVERT(date, @FEC_INICIO,126) AND CONVERT(date, @FEC_FIN,126) AND (F.Incompleta_FacAsociado = 1 OR F.Estado_FacAsociado = 1) AND FK_Id_Asociado = @ID_ASOCIADO
		END
	IF @IND_FILTRO = 2
		BEGIN
			SELECT F.Numero_FacAsociado, 
					CASE F.CanNeta_FacAsociado
						WHEN -1 THEN NULL
						ELSE CONVERT(VARCHAR, ROUND(100 - ((F.CanNeta_FacAsociado * 100) / F.CanTotal_FacAsociado),2,2)) + '%'
					END AS Merma,
				   CASE F.FecPago_FacAsociado
							WHEN N'0001-01-01' THEN NULL
							ELSE F.FecPago_FacAsociado
				   END AS FecPago_FacAsociado, F.FecEntrega_FacAsociado, F.CanTotal_FacAsociado, F.CanNeta_FacAsociado, A.Codigo_Asociado, 
				   P.CedParticular_Persona, P.CedJuridica_Persona, P.PriNombre_Persona + ' ' + P.PriApellido_Persona + ' ' + P.SegApellido_Persona AS Nombre_Asociado, 
				   CONVERT(VARCHAR(10), CONVERT(DATE,@FEC_INICIO),101) AS fecInicio, CONVERT(VARCHAR(10), CONVERT(DATE,@FEC_FIN),101) AS fecFinal,
				   (SELECT SUM(DF.Saldo_DetFacAsociado) AS MONTO
					FROM SIGEEA_DetFacAsociado DF
					WHERE DF.FK_Id_FacAsociado = F.PK_Id_FacAsociado
					GROUP BY DF.FK_Id_FacAsociado) AS Monto_Total
			FROM SIGEEA_FacAsociado F
			JOIN SIGEEA_Asociado A
			ON A.PK_Id_Asociado = F.FK_Id_Asociado
			JOIN SIGEEA_Persona P
			ON P.PK_Id_Persona = A.FK_Id_Persona
			WHERE CONVERT(date,FecEntrega_FacAsociado,126) BETWEEN CONVERT(date, @FEC_INICIO,126) AND CONVERT(date, @FEC_FIN,126) AND F.Incompleta_FacAsociado = 0 AND F.Estado_FacAsociado = 0 AND FK_Id_Asociado = @ID_ASOCIADO
		END

END






GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spGenerarFacturaCuota]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 20/03/2016
-- Description:	Genera la factura de pago de cuota
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spGenerarFacturaCuota]
	@CuotaAsociado int = null,
	@Monto float = null, 
	@SaldoAnterior float = null
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT E.Nombre_Empresa, CONCAT('Ced. Jurídica: ', E.CedJuridica_Empresa) as CedJuridica,
		   E.Direccion_Empresa, CONCAT('Num. Teléfono: ', E.Telefono_Empresa) as Telefono,
		   CONCAT('EMAIL: ', E.Correo_Empresa) AS Correo, 
		   CONVERT(varchar,GETDATE(),103) as Fecha, CONVERT(VARCHAR(8),GETDATE(),108) AS Hora,
		   CONCAT('Nombre de asociado: ', P.PriNombre_Persona, ' ', P.PriApellido_Persona, ' ',
				  P.SegApellido_Persona, '.') AS NombreAsociado,
		   CONCAT('Número de cédula: ', P.CedParticular_Persona) AS CedPersona,
		   CONCAT('Código: ', A.Codigo_Asociado) AS CodigoAsociado,
		   CONCAT('Cuota: ', c.Nombre_Cuota) AS NombreCuota,
		   CONCAT('Total a pagar: ',M.Simbolo_Moneda, c.Monto_Cuota) AS Total,
		   CONCAT('Monto pagado: ', M.Simbolo_Moneda, @Monto) AS Monto,		   
		   CONCAT('Saldo actual: ', M.Simbolo_Moneda, @SaldoAnterior - @Monto) AS Saldo
	FROM SIGEEA_Cuota_Asociado CA
	JOIN SIGEEA_Cuota C
	ON C.PK_Id_Cuota = CA.FK_Id_Cuota
	JOIN SIGEEA_Asociado A
	ON A.PK_Id_Asociado = CA.FK_Id_Asociado
	JOIN SIGEEA_Persona P
	ON P.PK_Id_Persona = A.FK_Id_Persona
	JOIN SIGEEA_Empresa E
	ON E.PK_Id_Empresa = A.FK_Id_Empresa
	JOIN SIGEEA_Moneda M
	ON M.PK_Id_Moneda = C.FK_Id_Moneda
	WHERE CA.PK_Id_Cuota_Asociado = @CuotaAsociado;
END

















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spGenerarFacturaEntrega]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 17/04/2016
-- Description:	Genera la factura
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spGenerarFacturaEntrega]
	@Factura int = null
AS
BEGIN

	SET NOCOUNT ON;
	SELECT E.Nombre_Empresa, E.CedJuridica_Empresa as CedJuridica,
		   E.Direccion_Empresa, E.Telefono_Empresa as Telefono,
		   E.Correo_Empresa AS Correo,
		   f.PK_Id_FacAsociado as NumFactura, 
		   CONVERT(varchar,GETDATE(),103) as Fecha, CONVERT(VARCHAR(8),GETDATE(),108) AS Hora,
		   CONCAT(P.PriNombre_Persona, ' ', P.PriApellido_Persona, ' ',
				  P.SegApellido_Persona) AS NombreAsociado,
		   P.CedParticular_Persona AS CedPersona,
		   A.Codigo_Asociado AS CodigoAsociado		   
	FROM SIGEEA_FacAsociado f
	JOIN SIGEEA_Asociado a
	ON a.PK_Id_Asociado = f.FK_Id_Asociado
	JOIN SIGEEA_Persona p
	ON p.PK_Id_Persona = a.FK_Id_Persona
	JOIN SIGEEA_Empresa e
	ON e.PK_Id_Empresa = a.FK_Id_Empresa
	WHERE f.PK_Id_FacAsociado = @Factura;
END















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spGenerarFacturaPagoEmpleado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 29/05/2016
-- Description:	Genera encabezado de factura para empleados
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spGenerarFacturaPagoEmpleado]
	@Empleado int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT E.Nombre_Empresa, CONCAT('Ced. Jurídica: ', E.CedJuridica_Empresa) as CedJuridica,
		   E.Direccion_Empresa, CONCAT('Num. Teléfono: ', E.Telefono_Empresa) as Telefono,
		   CONCAT('EMAIL: ', E.Correo_Empresa) AS Correo,
		   CONVERT(varchar,GETDATE(),103) as Fecha, CONVERT(VARCHAR(8),GETDATE(),108) AS Hora,
		   CONCAT('Nombre de empleado: ', P.PriNombre_Persona, ' ', P.PriApellido_Persona, ' ',
				  P.SegApellido_Persona, '.') AS NombreAsociado,
		   CONCAT('Número de cédula: ', P.CedParticular_Persona) AS CedPersona	   
	FROM SIGEEA_Empleado em
	JOIN SIGEEA_Persona p
	ON p.PK_Id_Persona = em.FK_Id_Persona
	JOIN SIGEEA_Empresa e
	ON e.PK_Id_Empresa = em.FK_Id_Empresa
	WHERE em.PK_Id_Empleado = @Empleado;
END













GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spGenerarReporteEmpleados]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spGenerarReporteEmpleados]
	-- Add the parameters for the stored procedure here
	@FecInicio datetime,
	@FecFin datetime,
	@Cedula varchar(15) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if @Cedula IS NULL
		SELECT SUM(DATEDIFF(mi, HL.HoraInicio_HorLaboradas, HL.HoraFin_HorLaboradas) /60) as CantidadHoras, PER.CedParticular_Persona, PER.PriNombre_Persona + ' ' + PER.PriApellido_Persona + ' ' + PER.SegApellido_Persona AS NOMBRE,
		   PUE.Nombre_Puesto, SUM((DATEDIFF(mi, HL.HoraInicio_HorLaboradas, HL.HoraFin_HorLaboradas) * (PUE.Tarifa_Puesto/60))) AS ADEUDADO
		FROM SIGEEA_HorLaboradas HL
		JOIN SIGEEA_Empleado EMP
		ON EMP.PK_Id_Empleado = HL.FK_Id_Empleado
		JOIN SIGEEA_Persona PER
		ON PER.PK_Id_Persona = EMP.FK_Id_Persona
		JOIN SIGEEA_PueTemporal PUE
		ON PUE.PK_Id_Puesto = HL.FK_Id_Puesto
		WHERE HoraInicio_HorLaboradas BETWEEN @FecInicio AND @FecFin AND Estado_HorLaboradas = 1 AND Activo_HorLaboradas = 0
		GROUP BY PER.CedParticular_Persona, PER.PriNombre_Persona, PER.PriApellido_Persona, PER.SegApellido_Persona, PUE.Nombre_Puesto

	else
		SELECT SUM(DATEDIFF(mi, HL.HoraInicio_HorLaboradas, HL.HoraFin_HorLaboradas) /60) as CantidadHoras, PER.CedParticular_Persona, PER.PriNombre_Persona + ' ' + PER.PriApellido_Persona + ' ' + PER.SegApellido_Persona AS NOMBRE,
		   PUE.Nombre_Puesto, SUM((DATEDIFF(mi, HL.HoraInicio_HorLaboradas, HL.HoraFin_HorLaboradas) * (PUE.Tarifa_Puesto/60))) AS ADEUDADO
		FROM SIGEEA_HorLaboradas HL
		JOIN SIGEEA_Empleado EMP
		ON EMP.PK_Id_Empleado = HL.FK_Id_Empleado
		JOIN SIGEEA_Persona PER
		ON PER.PK_Id_Persona = EMP.FK_Id_Persona
		JOIN SIGEEA_PueTemporal PUE
		ON PUE.PK_Id_Puesto = HL.FK_Id_Puesto
		WHERE HoraInicio_HorLaboradas BETWEEN @FecInicio AND @FecFin AND Estado_HorLaboradas = 1 AND Activo_HorLaboradas = 0 AND PER.CedParticular_Persona = @Cedula
		GROUP BY PER.CedParticular_Persona, PER.PriNombre_Persona, PER.PriApellido_Persona, PER.SegApellido_Persona, PUE.Nombre_Puesto

END



GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spInfoUsuario]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spInfoUsuario]
	@idUsuario int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	e.Estado_Empleado, e.FK_Id_Persona, p.PK_Id_Persona, p.PK_Id_Persona, u.PK_Id_Usuario, u.FK_Id_Rol, e.PK_Id_Empleado, r.FK_Id_Permiso,
	CONCAT(p.PriNombre_Persona,' ', p.SegNombre_Persona) as NomUsuario, u.RutFondo_Usuario

	FROM SIGEEA_Empleado e, SIGEEA_Usuario u, SIGEEA_Persona p, SIGEEA_Rol r
	where e.PK_Id_Empleado = u.FK_Id_Empleado and u.PK_Id_Usuario = @idUsuario and e.FK_Id_Persona = p.PK_Id_Persona and u.FK_Id_Rol = r.PK_Id_Rol;
END














GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spListarAsociado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 17/02/2016
-- Description:	Lista los asociados por nombre, apellido, cédula o código
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spListarAsociado]
	@CedNombreCod varchar(30) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT CONCAT(p.PriNombre_Persona, ' ', p.SegNombre_Persona, ' ', p.PriApellido_Persona, ' ', p.SegApellido_Persona) as Nombre,
		   p.CedParticular_Persona, a.Codigo_Asociado, p.PK_Id_Persona, a.PK_Id_Asociado, a.Estado_Asociado	   
	FROM SIGEEA_Persona p
	JOIN SIGEEA_Asociado a
	ON a.FK_Id_Persona = p.PK_Id_Persona
	WHERE p.PriNombre_Persona LIKE @CedNombreCod + '%' OR p.PriApellido_Persona LIKE @CedNombreCod + '%' OR
		  p.CedParticular_Persona LIKE @CedNombreCod + '%' OR a.Codigo_Asociado LIKE @CedNombreCod + '%';

END



















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spListarCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spListarCliente] 
	@CedNombre varchar(30) = null
AS
BEGIN
	
	SET NOCOUNT ON;
	

		select p.CedParticular_Persona, p.PK_Id_Persona,
		   clie.PK_Id_Cliente, clie.Estado_Cliente, catClie.Limite_CatCliente, tip.Nombre_TipCatCliente, catClie.RanPagos_CatCliente, catClie.TieMaximo_CatCliente,p.CedJuridica_Persona,	   
		   CONCAT (p.PriNombre_Persona,' ',p.SegNombre_Persona,' ',p.PriApellido_Persona, ' ',p.SegApellido_Persona) as nombreCompleto
		   
	     from SIGEEA_Persona p
		join SIGEEA_Cliente clie
		on clie.FK_Id_Persona = p.PK_Id_Persona
		join SIGEEA_CatCliente catClie
		on clie.FK_Id_CatCliente = catClie.PK_Id_CatCliente
		join SIGEEA_TipCatCliente tip
		on 
		catClie.FK_Id_TipCatCliente = tip.PK_Id_TipCatCliente
		where (p.CedParticular_Persona LIKE @CedNombre + '%' or p.PriNombre_Persona LIKE @CedNombre + '%')or
		(p.CedJuridica_Persona LIKE @CedNombre + '%' or p.PriNombre_Persona LIKE @CedNombre + '%' );
	
	
END























GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spListarCreditoCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spListarCreditoCliente]
	@idCliente int = null
AS
BEGIN
	
	SET NOCOUNT ON;

    
	SELECT cre.Estado_CreCliente, cre.Monto_CreCliente,
	(case mo.Nombre_Moneda
	when 'Colón' then cre.Saldo_CreCliente * mo.PreVenta_Moneda
	when 'Dolar' then cre.Saldo_CreCliente * mo.PreVenta_Moneda
	end) as Saldo
	from
	SIGEEA_Cliente cli
	join SIGEEA_CreCliente cre
	on cre.FK_Id_Cliente = cli.PK_Id_Cliente
	join SIGEEA_Moneda mo
	on mo.PK_Id_Moneda = cre.FK_Id_Moneda

	where cli.PK_Id_Cliente=@idCliente;
END














GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spListarEmpleados]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spListarEmpleados] 
	@NomCed varchar = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT distinct
	 CONCAT (p.PriNombre_Persona, ' ', p.SegNombre_Persona, ' ', p.PriApellido_Persona, ' ', p.SegApellido_Persona) as NombreCompleto, p.CedParticular_Persona, e.PK_Id_Empleado
	From SIGEEA_Persona p, SIGEEA_Empleado e
	where p.PK_Id_Persona =  e.FK_Id_Persona and CONCAT (p.PriNombre_Persona, ' ', p.SegNombre_Persona, ' ', p.PriApellido_Persona, ' ', p.SegApellido_Persona) like @NomCed+'%' or
	p.PK_Id_Persona =  e.FK_Id_Persona and p.CedParticular_Persona like @NomCed+'%'
END







GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spListarFacturaPendienteCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spListarFacturaPendienteCliente]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	cre.FecLimPago_CreCliente, cre.FecProPago_CreCliente, 
	CONCAT(mon.Simbolo_Moneda,cre.Saldo_CreCliente) as Saldo,clie.PK_Id_Cliente, 
	CONCAT(per.PriNombre_Persona, per.PriApellido_Persona, per.SegApellido_Persona) as NombreCompleto,
	facCli.PK_Id_FacCliente
	FROM
	SIGEEA_FacCliente facCli
	JOIN SIGEEA_Cliente clie
	ON clie.PK_Id_Cliente = facCli.FK_Id_Cliente
	JOIN SIGEEA_CreCliente cre
	ON cre.FK_Id_FacCliente = facCli.PK_Id_FacCliente
	JOIN SIGEEA_Persona per 
	ON per.PK_Id_Persona = clie.FK_Id_Persona
	JOIN SIGEEA_Moneda mon
	ON mon.PK_Id_Moneda = cre.FK_Id_Moneda
	WHERE cre.Estado_CreCliente = 1

END









GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spListarFacturaPendientePorCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spListarFacturaPendientePorCliente]
	@idCliente int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	cre.FecLimPago_CreCliente, cre.FecProPago_CreCliente, 
	CONCAT(mon.Simbolo_Moneda,cre.Saldo_CreCliente) as Saldo, 
	CONCAT(per.PriNombre_Persona, per.PriApellido_Persona, per.SegApellido_Persona) as NombreCompleto,
	facCli.PK_Id_FacCliente
	FROM
	SIGEEA_FacCliente facCli
	JOIN SIGEEA_Cliente clie
	ON clie.PK_Id_Cliente = facCli.FK_Id_Cliente
	JOIN SIGEEA_CreCliente cre
	ON cre.FK_Id_FacCliente = facCli.PK_Id_FacCliente
	JOIN SIGEEA_Persona per 
	ON per.PK_Id_Persona = clie.FK_Id_Persona
	JOIN SIGEEA_Moneda mon
	ON mon.PK_Id_Moneda = cre.FK_Id_Moneda
	WHERE clie.PK_Id_Cliente = @idCliente and cre.Estado_CreCliente = 1

END










GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spListarFacturaPendientePorFactura]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spListarFacturaPendientePorFactura]
	@idFactura int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	cre.FecLimPago_CreCliente, cre.FecProPago_CreCliente, cre.PK_Id_CreCliente,
	CONCAT(mon.Simbolo_Moneda,cre.Saldo_CreCliente) as Saldo,clie.PK_Id_Cliente, 
	CONCAT(per.PriNombre_Persona, per.PriApellido_Persona, per.SegApellido_Persona) as NombreCompleto,
	facCli.PK_Id_FacCliente
	FROM
	SIGEEA_FacCliente facCli
	JOIN SIGEEA_Cliente clie
	ON clie.PK_Id_Cliente = facCli.FK_Id_Cliente
	JOIN SIGEEA_CreCliente cre
	ON cre.FK_Id_FacCliente = facCli.PK_Id_FacCliente
	JOIN SIGEEA_Persona per 
	ON per.PK_Id_Persona = clie.FK_Id_Persona
	JOIN SIGEEA_Moneda mon
	ON mon.PK_Id_Moneda = cre.FK_Id_Moneda
	WHERE facCli.PK_Id_FacCliente = @idFactura and cre.Estado_CreCliente = 1

END










GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spListarFamiliares]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 19/02/2016
-- Description:	Listar familiares de los asociados
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spListarFamiliares]
	@CedAsociado varchar(15) = null
AS
BEGIN

	SET NOCOUNT ON;

    SELECT f.PK_Id_Familiar, f.Nombre_Familiar, f.Escolaridad_Familiar, f.DesEstudios_Familiar
	FROM SIGEEA_Familiar f
	JOIN SIGEEA_Asociado a
	ON a.PK_Id_Asociado = f.FK_Id_Asociado
	JOIN SIGEEA_Persona p
	ON p.PK_Id_Persona = a.FK_Id_Persona
	WHERE p.CedParticular_Persona = @CedAsociado;

END



















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spListarFincas]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Roberto Alvarado Fallas
-- Create date: 05/6/16
-- Description:	Obtiene un listado de las fincas, a partir del código o del pk del asociado del asociado
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spListarFincas]
	@CodFinca varchar(10) = null,
	@pkIdAsociado int = null,
	@NomDuenno varchar(60) = null
AS
BEGIN

	SET NOCOUNT ON;

	IF @CodFinca is not null
		SELECT F.PK_Id_Finca, F.FK_Id_Asociado, F.Codigo_Finca, F.FecRegistro_Finca,
		CONCAT(F.PriNomDuenno_Finca,' ', F.SegNomDuenno_Finca,' ', f.PriApeDuenno_Finca,' ', f.SegApeDuenno_Finca) as NombreCompleto,
		F.FK_Id_Direccion, F.Estado_Finca, F.Tamanno_Finca, F.Alquilada_Finca, F.NumRegistro_Finca
		FROM SIGEEA_Finca F
		JOIN SIGEEA_Asociado A
		ON A.PK_Id_Asociado = F.FK_Id_Asociado
		JOIN SIGEEA_Persona P
		ON P.PK_Id_Persona = A.FK_Id_Persona
		WHERE F.Codigo_Finca like @CodFinca + '%'or CONCAT(F.PriNomDuenno_Finca,' ', F.SegNomDuenno_Finca,' ', f.PriApeDuenno_Finca,' ', f.SegApeDuenno_Finca) like @NomDuenno + '%';
    
	IF @pkIdAsociado is not null
		SELECT F.PK_Id_Finca, F.FK_Id_Asociado, F.Codigo_Finca, F.FecRegistro_Finca,
		CONCAT(F.PriNomDuenno_Finca, F.SegNomDuenno_Finca, f.PriApeDuenno_Finca, f.SegApeDuenno_Finca) as NombreCompleto,
		F.FK_Id_Direccion, F.Estado_Finca, F.Tamanno_Finca, F.Alquilada_Finca, F.NumRegistro_Finca
		FROM
		SIGEEA_Asociado a
		JOIN SIGEEA_Finca f
		on f.FK_Id_Asociado = a.PK_Id_Asociado
		where a.PK_Id_Asociado = @pkIdAsociado;
	

END















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spListarInsumos]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spListarInsumos] 
  @NomInsumo Varchar(20) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	i.Nombre_Insumo, i.Estado_Insumo, i.Descripcion_Insumo, 
	ii.Cantidad_InvInsumo,ii.PK_IdInvInsumo, uni.Nombre_UniMedida, i.PK_Id_Insumo

	from SIGEEA_Insumo i
	join SIGEEA_InvInsumo ii
	on ii.FK_Id_Insumo = i.PK_Id_Insumo
	join SIGEEA_UniMedida uni
	on uni.PK_Id_UniMedida = ii.FK_UniMedida
	where i.Nombre_Insumo LIKE @NomInsumo + '%' ;
END






















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spListarProductos]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spListarProductos] 
	@nomProducto varchar(30) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TOP 1
	tipPro.Nombre_TipProducto, tipPro.Descripcion_TipProducto, tipPro.Calidad_TipProducto, tipPro.PK_Id_TipProducto
	,detInvPro.Cantidad_DetInvProductos, detInvPro.FK_Id_InvProductos,detInvPro.FK_Id_TipProducto,detInvPro.PK_Id_DetInvProductos,
	invPro.Descripcion_InvProductos, invPro.FK_Id_Bodega, invPro.PK_Id_InvProductos,
	preProVen.PK_Id_PreProVenta,preProVen.PreNacional_PreProVenta, preProVen.PreExtranjero_PreProVenta,
	bod.PK_Id_Bodega, bod.FK_Id_Empresa,
	mon.PK_Id_Moneda, uniMed.Nombre_UniMedida
	FROM
	SIGEEA_InvProductos invPro
	JOIN SIGEEA_DetInvProductos detInvPro
	ON detInvPro.FK_Id_InvProductos = invPro.PK_Id_InvProductos
	JOIN SIGEEA_TipProducto tipPro
	ON detInvPro.FK_Id_TipProducto = tipPro.PK_Id_TipProducto
	JOIN SIGEEA_Bodega bod
	ON invPro.FK_Id_Bodega  = bod.PK_Id_Bodega
	JOIN SIGEEA_PreProVenta preProVen
	ON preProVen.FK_Id_TipProducto = tipPro.PK_Id_TipProducto
	JOIN SIGEEA_Moneda mon
	ON preProVen.FK_Id_Moneda = mon.PK_Id_Moneda
	JOIN SIGEEA_UniMedida uniMed
	ON detInvPro.FK_Id_UniMedida = uniMed.PK_Id_UniMedida
	WHERE 
	preProVen.FecRegistro_PreProVenta = (SELECT MAX(pp.FecRegistro_PreProVenta)
										FROM SIGEEA_PreProVenta pp
										WHERE pp.PK_Id_PreProVenta = preProVen.PK_Id_PreProVenta
										GROUP BY pp.FecRegistro_PreProVenta)
		and	tipPro.Nombre_TipProducto LIKE @nomProducto +'%'
    ORDER BY preProVen.PK_Id_PreProVenta desc



END




















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spListarPuestos]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spListarPuestos]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT p.PK_Id_Puesto, p.Nombre_Puesto, p.Tarifa_Puesto
	FROM SIGEEA_PueTemporal p
	WHERE p.Estado_Puesto = 1;
END





















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spListarSubModulos]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Roberto Alvarado Fallas	
-- Create date: 28/05/2016
-- Description:	Carga permisos segun el usuario
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spListarSubModulos]
	@idPermiso int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
	sm.Nombre_SubModulo, sm.PK_Id_SubModulo, sm.FK_Id_Modulo
	FROM
	SIGEEA_SubModulo sm, [SIGEEA_Permiso_SubModulo] psm
	where sm.PK_Id_SubModulo = psm.FK_Id_SubModulo and psm.FK_Id_Permiso = @idPermiso;
END














GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spListarTiposDeProducto]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spListarTiposDeProducto]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
	SELECT
    tipProc.Nombre_TipProducto, tipProc.Descripcion_TipProducto, tipProc.Calidad_TipProducto 
	FROM 
	SIGEEA_TipProducto tipProc
END




















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spListarUsuario]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spListarUsuario]
	@NomCed varchar = null, 
	@idRol int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	SELECT distinct
	 CONCAT (p.PriNombre_Persona, ' ', p.SegNombre_Persona, ' ', p.PriApellido_Persona, ' ', p.SegApellido_Persona) as NombreCompleto, p.CedParticular_Persona, e.PK_Id_Empleado, u.Nombre_Usuario, r.Nombre_Rol, u.PK_Id_Usuario, u.Clave_Usuario, r.PK_Id_Rol,u.PK_Id_Usuario
	From SIGEEA_Persona p, SIGEEA_Empleado e, SIGEEA_Usuario u, SIGEEA_Rol r
	where (p.PK_Id_Persona =  e.FK_Id_Persona and u.FK_Id_Empleado = e.PK_Id_Empleado and r.PK_Id_Rol = u.FK_Id_Rol and r.PK_Id_Rol = @idRol and  CONCAT (p.PriNombre_Persona, ' ', p.SegNombre_Persona, ' ', p.PriApellido_Persona, ' ', p.SegApellido_Persona) like @NomCed+'%') or
	(p.PK_Id_Persona =  e.FK_Id_Persona and u.FK_Id_Empleado = e.PK_Id_Empleado and r.PK_Id_Rol = u.FK_Id_Rol and r.PK_Id_Rol = @idRol and  p.CedParticular_Persona like @NomCed+'%') or
	 (p.PK_Id_Persona =  e.FK_Id_Persona and u.FK_Id_Empleado = e.PK_Id_Empleado and r.PK_Id_Rol = u.FK_Id_Rol and r.PK_Id_Rol = @idRol and  u.Nombre_Usuario like @NomCed+'%')
END







GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spListaSubModuloPorPermiso]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spListaSubModuloPorPermiso]
	@idPermiso int = null,
	@idModulo int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT distinct
	s.Nombre_SubModulo, s.PK_Id_SubModulo
	FROM
	SIGEEA_Permiso_SubModulo pm, SIGEEA_SubModulo s, SIGEEA_Modulo m
	where pm.FK_Id_Permiso = @idPermiso and s.PK_Id_SubModulo = pm.FK_Id_SubModulo and s.FK_Id_Modulo = @idModulo
	
END







GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerAsambleas]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 25/05/2016
-- Description:	Obtiene un listado completo de las asambleas
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerAsambleas]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT A.PK_Id_Asamblea,
		   CONVERT(VARCHAR,A.Fecha_Asamblea,103) AS Fecha,
		   (CASE A.Tipo_Asamblea
		   WHEN 1 THEN 'Ordinaria'
		   WHEN 2 THEN 'Extraordinaria'
		   END) AS TipoAsamblea, CONVERT(VARCHAR,A.NumActa_Asamblea) AS NumActa
	FROM SIGEEA_Asamblea A
	ORDER BY A.Fecha_Asamblea DESC;
END















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerAsociado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author:		Luis Barrantes Mora
-- Create date: 15/12/15
-- Description:	Obtiene los datos del asociado a partir de su cédula o código único
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerAsociado] 
	@Cedula_Codigo varchar(30) = null
AS
BEGIN
	SET NOCOUNT ON;
	if @Cedula_Codigo is not null 
		select p.CedJuridica_Persona,p.CedParticular_Persona,p.FecNacimiento_Persona,
			   p.FK_Id_Direccion, p.FK_Id_Nacionalidad, p.Genero_Persona, p.PK_Id_Persona,
			   p.PriApellido_Persona,p.PriNombre_Persona,p.SegApellido_Persona,p.SegNombre_Persona,
			   p.Tipo_Persona, a.Codigo_Asociado, a.PK_Id_Asociado 
		from SIGEEA_Persona p
		join SIGEEA_Asociado a
		on a.FK_Id_Persona = p.PK_Id_Persona
		where CedParticular_Persona = @Cedula_Codigo OR a.Codigo_Asociado = @Cedula_Codigo;

END





























GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerAsociadoFactura]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 17/04/2016
-- Description:	Obtiene la información del asociado a partir del PK de la factura
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerAsociadoFactura]
	@Factura int = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT CONCAT(P.PriNombre_Persona, ' ', P.PriApellido_Persona, ' ', P.SegApellido_Persona) as NombreAsociado,
		   P.CedParticular_Persona, CONVERT(varchar,F.FecEntrega_FacAsociado,103) as Fecha, A.Codigo_Asociado, F.Numero_FacAsociado
	FROM SIGEEA_FacAsociado F
	JOIN SIGEEA_Asociado A
	ON A.PK_Id_Asociado = F.FK_Id_Asociado
	JOIN SIGEEA_Persona P
	ON P.PK_Id_Persona = A.FK_Id_Persona
	WHERE F.PK_Id_FacAsociado = @Factura;
END















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerCantones]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerCantones]
	@Provincia varchar(30)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT C.Nombre_Canton
	FROM SIGEEA_Canton C
	JOIN SIGEEA_Provincia P
	ON P.PK_Id_Provincia = C.FK_Id_Provincia
	WHERE P.Nombre_Provincia = @Provincia;
END























GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerCategoria]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerCategoria]
	@PkCatCliente int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	cat.Limite_CatCliente, cat.RanPagos_CatCliente, cat.PK_Id_CatCliente, cat.TieMaximo_CatCliente
	from SIGEEA_CatCliente cat
	where cat.PK_Id_CatCliente = @PkCatCliente
END






















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerCategoriaAsociado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 27/05/2016
-- Description:	Obtiene categoría del asociado
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerCategoriaAsociado]
	@Asociado int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT ((CA.CuotasProm_CatAsociado + CA.AsambleasProm_CatAsociado) / 2) AS Categoria
	FROM SIGEEA_Asociado A
	JOIN SIGEEA_CatAsociado CA
	ON CA.PK_Id_CatAsociado = A.FK_Id_CatAsociado
	WHERE A.PK_Id_Asociado = @Asociado;
END














GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerCategoriaCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerCategoriaCliente]
	@idCliente int = null
AS
BEGIN
	
	SET NOCOUNT ON;

    
	SELECT cat.Limite_CatCliente, cat.RanPagos_CatCliente, cat.TieMaximo_CatCliente, tip.Nombre_TipCatCliente
	from
	SIGEEA_Cliente cli
	join SIGEEA_CatCliente cat
	on cat.PK_Id_CatCliente = cli.FK_Id_CatCliente
	join SIGEEA_TipCatCliente tip
	on cat.FK_Id_TipCatCliente = tip.PK_Id_TipCatCliente
	where cli.PK_Id_Cliente=@idCliente;
END














GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerCliente]
	@pkIdCliente int = null
AS
BEGIN
	
	SET NOCOUNT ON;
	

		select p.CedParticular_Persona,p.FecNacimiento_Persona, n.Nombre_Nacionalidad, p.Genero_Persona, p.PK_Id_Persona,
		   p.PriApellido_Persona, p.PriNombre_Persona, p.SegApellido_Persona, p.SegNombre_Persona,
		   clie.PK_Id_Cliente, tip.Nombre_TipCatCliente, clie.Estado_Cliente, tip.PK_Id_TipCatCliente,p.Tipo_Persona,p.CedJuridica_Persona,
		   catClie.Limite_CatCliente,catClie.RanPagos_CatCliente, catClie.TieMaximo_CatCliente, catClie.PK_Id_CatCliente
	     from SIGEEA_Persona p
		join SIGEEA_Cliente clie
		on clie.FK_Id_Persona = p.PK_Id_Persona
		join SIGEEA_CatCliente catClie
		on clie.FK_Id_CatCliente = catClie.PK_Id_CatCliente
		join SIGEEA_TipCatCliente tip
		on catClie.FK_Id_TipCatCliente = tip.PK_Id_TipCatCliente
		join SIGEEA_Nacionalidad n 
		on n.PK_Id_Nacionalidad = p.FK_Id_Nacionalidad
		where clie.PK_Id_Cliente = @pkIdCliente;
	
	
END























GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerContacto]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 14/01/16
-- Description:	Obtiene los diferentes contactos de una persona en específico
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerContacto]
	@Persona int = null
AS
BEGIN
	SET NOCOUNT ON;

    SELECT p.PK_Id_Persona, c.PK_Id_Contacto, c.Dato_Contacto, tc.Nombre_TipContacto
	FROM SIGEEA_Persona p
	JOIN SIGEEA_Contacto c
	ON c.FK_Id_Persona = p.PK_Id_Persona
	JOIN SIGEEA_TipContacto tc
	ON tc.PK_Id_TipContacto = c.FK_Id_TipContacto
	WHERE p.PK_Id_Persona = @Persona;
END























GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerCuotas]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 18/3/2016
-- Description:	Obtiene las cuotas que se encuentran actualmente activos
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerCuotas]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT C.PK_ID_CUOTA, C.NOMBRE_CUOTA, CONCAT(M.SIMBOLO_MONEDA,C.MONTO_CUOTA) AS MONTO,
		   CONCAT(CONVERT(VARCHAR, C.FECINICIO_CUOTA, 103),' - ',CONVERT(VARCHAR, C.FECFIN_CUOTA,103)) AS RANGO
	FROM SIGEEA_CUOTA C
	JOIN SIGEEA_MONEDA M
	ON M.PK_ID_MONEDA = C.FK_ID_MONEDA
	WHERE FECFIN_CUOTA > GETDATE();
END

















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerDatosEmpresa]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora	
-- Create date: 02-04-2017
-- Description:	Obtiene información genérica sobre la empresa, información requerida para todas las facturas o reportes
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerDatosEmpresa]

AS
BEGIN
	SET NOCOUNT ON;

    SELECT *
	FROM SIGEEA_Empresa E
	WHERE E.PK_Id_Empresa = 1
END





GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerDetalleFacturaAsociado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 18/04/2016
-- Description:	Obtiene el detalle de una factura
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerDetalleFacturaAsociado]
	@Factura int = null
AS
BEGIN
	SET NOCOUNT ON;

    SELECT *
	FROM SIGEEA_DetFacAsociado 
	WHERE FK_Id_FacAsociado = @Factura;
END















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerDetallesEntrega]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 18/04/2016
-- Description:	Obtiene detalles de una factura
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerDetallesEntrega]
	@Factura int = null
AS
BEGIN

	SET NOCOUNT ON;

    SELECT DF.PK_Id_DetFacAsociado, TP.Nombre_TipProducto, DF.CanTotal_DetFacAsociado, 
			(CASE DF.Mercado_DetFacAsociado
			WHEN 1 THEN PC.PreNacional_PreProCompra
			WHEN 2 THEN PC.PreExtranjero_PreProCompra
			END) AS Precio,
			(CASE DF.Mercado_DetFacAsociado
			WHEN 1 THEN '₡'
			WHEN 2 THEN '₡'
			END) AS Moneda,
			(CASE DF.Mercado_DetFacAsociado
				WHEN 1 THEN 'Nacional'
				WHEN 2 THEN 'Extranjero'
			END) AS Mercado, DF.CanNeta_DetFacAsociado, UM.Nombre_UniMedida
	FROM SIGEEA_DetFacAsociado DF
	JOIN SIGEEA_FacAsociado F
	ON F.PK_Id_FacAsociado = DF.FK_Id_FacAsociado
	JOIN SIGEEA_PreProCompra PC
	ON PC.PK_Id_PreProCompra = DF.FK_Id_PreProCompra
	JOIN SIGEEA_TipProducto TP
	ON TP.PK_Id_TipProducto = PC.FK_Id_TipProducto
	JOIN SIGEEA_DetInvProductos dip
	ON dip.FK_Id_TipProducto = TP.PK_Id_TipProducto
	JOIN SIGEEA_UniMedida UM
	ON UM.PK_Id_UniMedida = DIP.FK_Id_UniMedida
	WHERE F.PK_Id_FacAsociado = @Factura
	GROUP BY DF.PK_Id_DetFacAsociado, TP.Nombre_TipProducto, DF.CanTotal_DetFacAsociado,
		     DF.Mercado_DetFacAsociado, PC.PreExtranjero_PreProCompra, PC.PreNacional_PreProCompra,
			 DF.CanNeta_DetFacAsociado, UM.Nombre_UniMedida;
END












GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerDetallesFacturaCompletaAsoc]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 06/05/2016
-- Description:	Obtiene la factura de entrega completa
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerDetallesFacturaCompletaAsoc]
	@Factura int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT F.PK_Id_FacAsociado, 
		CONCAT(DF.CanTotal_DetFacAsociado, UM.Nombre_UniMedida) AS CantidadTotalString, 
		CONCAT(DF.CanNeta_DetFacAsociado, UM.Nombre_UniMedida) AS CantidadNetaString,
		CONVERT(VARCHAR, DF.CanTotal_DetFacAsociado - DF.CanNeta_DetFacAsociado) + UM.Nombre_UniMedida + ' (' +
		CONVERT(VARCHAR,CONVERT(DECIMAL(10,2), 100-((100*DF.CanNeta_DetFacAsociado)/DF.CanTotal_DetFacAsociado))) + '%)' AS MERMA,
		   TP.PK_Id_TipProducto, DF.PK_Id_DetFacAsociado, 
		   (CASE DF.Mercado_DetFacAsociado
				 WHEN 1 THEN 'Nacional'
				 WHEN 2 THEN 'Extranjero'
		    END) AS Mercado, 
			tp.Nombre_TipProducto, 
			DF.CanNeta_DetFacAsociado, 
			DF.CanTotal_DetFacAsociado,
			(CASE DF.Mercado_DetFacAsociado
			WHEN 1 THEN PC.PreNacional_PreProCompra	
			WHEN 2 THEN PC.PreExtranjero_PreProCompra
			END) AS Precio,
			DF.CanNeta_DetFacAsociado * (CASE DF.Mercado_DetFacAsociado
			WHEN 1 THEN PC.PreNacional_PreProCompra	
			WHEN 2 THEN PC.PreExtranjero_PreProCompra
			END) AS Neto,
			DF.CanTotal_DetFacAsociado * (CASE DF.Mercado_DetFacAsociado
			WHEN 1 THEN PC.PreNacional_PreProCompra	
			WHEN 2 THEN PC.PreExtranjero_PreProCompra
			END) AS Total

	FROM SIGEEA_DetFacAsociado DF
	JOIN SIGEEA_PreProCompra PC
	ON PC.PK_Id_PreProCompra = DF.FK_Id_PreProCompra
	JOIN SIGEEA_TipProducto TP
	ON TP.PK_Id_TipProducto = PC.FK_Id_TipProducto
	JOIN SIGEEA_DetInvProductos DIP
	ON DIP.FK_Id_TipProducto = TP.PK_Id_TipProducto
	JOIN SIGEEA_UniMedida UM
	ON UM.PK_Id_UniMedida = DIP.FK_Id_UniMedida
	JOIN SIGEEA_FacAsociado F
	ON F.PK_Id_FacAsociado = DF.FK_Id_FacAsociado
	WHERE DF.FK_Id_FacAsociado = @Factura
	AND F.Estado_FacAsociado = 1
	AND F.Incompleta_FacAsociado = 0
	GROUP BY DF.CanNeta_DetFacAsociado, DF.CanTotal_DetFacAsociado, F.PK_Id_FacAsociado, TP.PK_Id_TipProducto, 
			 UM.Nombre_UniMedida, df.Mercado_DetFacAsociado, df.PK_Id_DetFacAsociado, tp.Nombre_TipProducto,
			 PC.PreExtranjero_PreProCompra, PC.PreNacional_PreProCompra;
END



GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerDetallesFacturaSinCancelarAsoc]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 30/04/2016
-- Description:	Obtiene los detalles de la factura que no se encuentran canceladas
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerDetallesFacturaSinCancelarAsoc]
	@Factura int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT CONVERT(varchar,DF.CanNeta_DetFacAsociado) + UM.Nombre_UniMedida AS canNeta, TP.PK_Id_TipProducto,
		   + ' de ' + TP.Nombre_TipProducto + ' destinados al mercado ' 
		   +(CASE DF.Mercado_DetFacAsociado
				WHEN 1 THEN ' nacional.'
				WHEN 2 THEN ' extranjero.'
			 END) AS Informacion, 
		   (CASE DF.Mercado_DetFacAsociado
				WHEN 1 THEN CONCAT('₡',PC.PreNacional_PreProCompra)
				WHEN 2 THEN CONCAT('₡',PC.PreExtranjero_PreProCompra)
		   END) AS Precio,
		  (CASE DF.Mercado_DetFacAsociado
				WHEN 1 THEN CONCAT('₡',PC.PreNacional_PreProCompra * DF.CanNeta_DetFacAsociado)
				WHEN 2 THEN CONCAT('₡',PC.PreExtranjero_PreProCompra * DF.CanNeta_DetFacAsociado)
		  END) AS Total, 
		  CONCAT('₡',DF.Saldo_DetFacAsociado) AS Saldo
		  ,DF.PK_Id_DetFacAsociado
	FROM SIGEEA_DetFacAsociado DF
	JOIN SIGEEA_FacAsociado F
	ON F.PK_Id_FacAsociado = DF.FK_Id_FacAsociado
	JOIN SIGEEA_PreProCompra PC
	ON PC.PK_Id_PreProCompra = DF.FK_Id_PreProCompra
	JOIN SIGEEA_TipProducto TP
	ON TP.PK_Id_TipProducto = PC.FK_Id_TipProducto
	JOIN SIGEEA_DetInvProductos DIP
	ON DIP.FK_Id_TipProducto = TP.PK_Id_TipProducto
	JOIN SIGEEA_UniMedida UM
	ON UM.PK_Id_UniMedida = DIP.FK_Id_UniMedida
	WHERE F.PK_Id_FacAsociado = @Factura
	AND DF.Cancelado_DetFacAsociado = 0
	AND F.Estado_FacAsociado = 1
	AND F.Incompleta_FacAsociado = 0
	GROUP BY DF.CanNeta_DetFacAsociado, TP.PK_Id_TipProducto, TP.Nombre_TipProducto, DF.Mercado_DetFacAsociado,
		     DF.PK_Id_DetFacAsociado, PC.PreExtranjero_PreProCompra, PC.PreNacional_PreProCompra, UM.Nombre_UniMedida,
			 DF.Saldo_DetFacAsociado;
END










GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerDeudoresCuotas]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 19/03/2016
-- Description:	Obtiene todos los asociados que tienen cuotas pendientes de pago y sus detalles
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerDeudoresCuotas]
	@Cuota int = null
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT CONCAT(p.PriNombre_Persona,' ', p.PriApellido_Persona,' ', p.SegApellido_Persona) as NombrePersona,
		   p.CedParticular_Persona as Cedula, ca.PK_Id_Cuota_Asociado, c.Nombre_Cuota as NombreCuota, 
		   CONCAT(m.Simbolo_Moneda,c.Monto_Cuota) as MontoCuota, 
		   CONCAT(m.Simbolo_Moneda,ca.Saldo_Cuota_Asociado) as SaldoPendiente
	FROM SIGEEA_Cuota_Asociado ca
	JOIN SIGEEA_Cuota c
	ON c.PK_Id_Cuota = ca.FK_Id_Cuota
	JOIN SIGEEA_Asociado a
	ON a.PK_Id_Asociado = ca.FK_Id_Asociado
	JOIN SIGEEA_Persona p
	ON p.PK_Id_Persona = a.FK_Id_Persona  
	JOIN SIGEEA_Moneda m
	ON m.PK_Id_Moneda = c.FK_Id_Moneda  
	WHERE ca.FK_Id_Cuota = @Cuota
	and ca.Estado_Cuota_Asociado = 0;
END

















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerDiaLaboral]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 10/02/16
-- Description:	Determina si existe un día laboral no completado (sin hora de salida)
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerDiaLaboral]
	@Empleado varchar(15) = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT hl.PK_Id_HorLaboradas
	FROM SIGEEA_HorLaboradas hl
	JOIN SIGEEA_Empleado em
	ON em.PK_Id_Empleado = hl.FK_Id_Empleado
	JOIN SIGEEA_Persona pe
	ON pe.PK_Id_Persona = em.FK_Id_Persona
	WHERE hl.Activo_HorLaboradas = 1;
END





















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerDireccionAsociado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerDireccionAsociado]
	@Cedula varchar(30) = null,
	@Codigo varchar(10) = null
AS
BEGIN
	SET NOCOUNT ON;

    if @Cedula is not null
		select p.PK_Id_Persona, a.PK_Id_Asociado, d.Detalles_Direccion, di.Nombre_Distrito, c.Nombre_Canton, pr.Nombre_Provincia
		from SIGEEA_Persona p
		join SIGEEA_Asociado a 
		on a.FK_Id_Persona = p.PK_Id_Persona
		join SIGEEA_Direccion d
		on d.PK_Id_Direccion = p.FK_Id_Direccion
		join SIGEEA_Distrito di
		on di.PK_Id_Distrito = d.FK_Id_Distrito
		join SIGEEA_Canton c
		on c.PK_Id_Canton = di.FK_Id_Canton
		join SIGEEA_Provincia pr
		on pr.PK_Id_Provincia = c.FK_Id_Provincia
		where p.CedParticular_Persona = @Cedula;

	else if @Codigo is not null
		select p.PK_Id_Persona, a.PK_Id_Asociado, d.Detalles_Direccion, di.Nombre_Distrito, c.Nombre_Canton, pr.Nombre_Provincia
		from SIGEEA_Persona p
		join SIGEEA_Asociado a 
		on a.FK_Id_Persona = p.PK_Id_Persona
		join SIGEEA_Direccion d
		on d.PK_Id_Direccion = p.FK_Id_Direccion
		join SIGEEA_Distrito di
		on di.PK_Id_Distrito = d.FK_Id_Distrito
		join SIGEEA_Canton c
		on c.PK_Id_Canton = di.FK_Id_Canton
		join SIGEEA_Provincia pr
		on pr.PK_Id_Provincia = c.FK_Id_Provincia
		where a.Codigo_Asociado = @Codigo;


END























GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerDireccionEmpleado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 07/01/2015
-- Description:	Obtiene los datos de la dirección de un empleado
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerDireccionEmpleado] 
	@Cedula varchar(15) = null
AS
BEGIN	
	SET NOCOUNT ON;
    if @Cedula is not null
		select p.PK_Id_Persona, e.PK_Id_Empleado, d.Detalles_Direccion, di.Nombre_Distrito, c.Nombre_Canton, pr.Nombre_Provincia
		from SIGEEA_Persona p
		join SIGEEA_Empleado e
		on e.FK_Id_Persona = p.PK_Id_Persona
		join SIGEEA_Direccion d
		on d.PK_Id_Direccion = p.FK_Id_Direccion
		join SIGEEA_Distrito di
		on di.PK_Id_Distrito = d.FK_Id_Distrito
		join SIGEEA_Canton c
		on c.PK_Id_Canton = di.FK_Id_Canton
		join SIGEEA_Provincia pr
		on pr.PK_Id_Provincia = c.FK_Id_Provincia
		where p.CedParticular_Persona = @Cedula;
END























GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerDireccionFinca]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerDireccionFinca]
	@Pk_Id_Finca int = null
AS
BEGIN	
	SET NOCOUNT ON;
    if @Pk_Id_Finca is not null
		select d.Detalles_Direccion, di.Nombre_Distrito, c.Nombre_Canton, pr.Nombre_Provincia
		from SIGEEA_Finca f
		join SIGEEA_Direccion d
		on d.PK_Id_Direccion = f.FK_Id_Direccion
		join SIGEEA_Distrito di
		on di.PK_Id_Distrito = d.FK_Id_Distrito
		join SIGEEA_Canton c
		on c.PK_Id_Canton = di.FK_Id_Canton
		join SIGEEA_Provincia pr
		on pr.PK_Id_Provincia = c.FK_Id_Provincia
		where f.PK_Id_Finca = @Pk_Id_Finca;
END















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerDistritos]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerDistritos]
	@Canton varchar(30)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT D.Nombre_Distrito
	FROM SIGEEA_Distrito D
	JOIN SIGEEA_Canton C
	ON C.PK_Id_Canton = D.FK_Id_Canton
	WHERE C.Nombre_Canton = @Canton;
END























GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerEmpleado]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 07/01/2016
-- Description:	Retorna la información personal y laborar de un empleado
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerEmpleado]
	@Cedula varchar(15) = null
AS
BEGIN

	SET NOCOUNT ON;

    SELECT p.CedParticular_Persona, p.FecNacimiento_Persona, n.Nombre_Nacionalidad, p.Genero_Persona, p.PriApellido_Persona,
		   p.PriNombre_Persona, p.SegApellido_Persona, p.SegNombre_Persona, es.GradoAcad_Escolaridad, es.Escribir_Escolaridad,
		   es.Leer_Escolaridad, es.Observaciones_Escolaridad, p.PK_Id_Persona, e.PK_Id_Empleado
	FROM SIGEEA_Persona p
	JOIN SIGEEA_Empleado e
	on e.FK_Id_Persona = p.PK_Id_Persona
	JOIN SIGEEA_Escolaridad es
	on es.PK_Id_Escolaridad = e.FK_Id_Escolaridad
	JOIN SIGEEA_Nacionalidad n
	on n.PK_Id_Nacionalidad = p.FK_Id_Nacionalidad
	WHERE p.CedParticular_Persona = @Cedula;
END























GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerFacturasIncompletasAsoc]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 18/04/2016
-- Description:	Obtiene las facturas incompletas
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerFacturasIncompletasAsoc]
	@Asociado varchar(30) = null
AS
BEGIN

	SET NOCOUNT ON;

	IF(@Asociado IS NULL)
		SELECT F.PK_Id_FacAsociado, CONVERT(VARCHAR(10),F.FecEntrega_FacAsociado,103) AS FECHA,  F.Numero_FacAsociado
		FROM SIGEEA_FacAsociado F
		WHERE F.Incompleta_FacAsociado  = 1;

	IF(@Asociado IS NOT NULL)
		SELECT F.PK_Id_FacAsociado, CONVERT(VARCHAR(10),F.FecEntrega_FacAsociado,103) AS FECHA,  F.Numero_FacAsociado
		FROM SIGEEA_FacAsociado F
		JOIN SIGEEA_Asociado A
		ON A.PK_Id_Asociado = F.FK_Id_Asociado
		JOIN SIGEEA_Persona P
		ON P.PK_Id_Persona = A.FK_Id_Persona
		WHERE P.CedParticular_Persona = @Asociado OR
			  A.Codigo_Asociado = @Asociado
			  AND F.Incompleta_FacAsociado = 1;
END










GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerFacturasPendientesAsoc]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 18/04/2016
-- Description:	Obtiene las facturas pendientes de pago
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerFacturasPendientesAsoc]
	@Asociado varchar(30) = null
AS
BEGIN

	SET NOCOUNT ON;

	IF(@Asociado IS NULL)
		SELECT F.PK_Id_FacAsociado, CONVERT(VARCHAR(10),F.FecEntrega_FacAsociado,103) AS FECHA,  F.Numero_FacAsociado
		FROM SIGEEA_FacAsociado F
		WHERE F.Estado_FacAsociado  = 1 AND F.Incompleta_FacAsociado = 0;

	IF(@Asociado IS NOT NULL)
		SELECT F.PK_Id_FacAsociado, CONVERT(VARCHAR(10),F.FecEntrega_FacAsociado,103) AS FECHA,  F.Numero_FacAsociado
		FROM SIGEEA_FacAsociado F
		JOIN SIGEEA_Asociado A
		ON A.PK_Id_Asociado = F.FK_Id_Asociado
		JOIN SIGEEA_Persona P
		ON P.PK_Id_Persona = A.FK_Id_Persona
		WHERE P.CedParticular_Persona = @Asociado OR
		A.Codigo_Asociado = @Asociado
		AND F.Estado_FacAsociado = 1 AND F.Incompleta_FacAsociado = 0;
END










GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerFincas]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 11/4/16
-- Description:	Obtiene un listado de las fincas, a partir del código o de la cédula del asociado
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerFincas]
	@CedulaCodigo varchar(30) = null
AS
BEGIN

	SET NOCOUNT ON;

    SELECT F.PK_Id_Finca, F.Codigo_Finca
	FROM SIGEEA_Finca F
	JOIN SIGEEA_Asociado A
	ON A.PK_Id_Asociado = F.FK_Id_Asociado
	JOIN SIGEEA_Persona P
	ON P.PK_Id_Persona = A.FK_Id_Persona
	WHERE A.Codigo_Asociado = @CedulaCodigo OR 
		  P.CedParticular_Persona = @CedulaCodigo;
END















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerIdUltimaFactura]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerIdUltimaFactura]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT MAX(f.PK_Id_FacCliente) as PKFactura
	FROM
	SIGEEA_FacCliente f
END












GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerIdUltimaFinca]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerIdUltimaFinca]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT MAX(f.PK_Id_Finca) as PKFinca
	FROM
	SIGEEA_Finca f
END










GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerInfoCategoriaAsocAsambleas]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 27/05/2016
-- Description:	Obtiene cantidad de reuniones de un asociado
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerInfoCategoriaAsocAsambleas]
	@Asociado int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT COUNT(AA.PK_Id_AsiAsamblea) as Cantidad
	FROM SIGEEA_AsiAsamblea AA
	WHERE AA.FK_Id_Asociado = @Asociado;
END














GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerInfoCategoriaAsocCuotas]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 27/05/2016
-- Description:	Obtiene cantidad de cuotas ya canceladas por el asociado
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerInfoCategoriaAsocCuotas]
	@Asociado int = null
AS
BEGIN
	SET NOCOUNT ON;

    SELECT COUNT(CA.Estado_Cuota_Asociado) as Cantidad
	FROM SIGEEA_Cuota_Asociado CA
	JOIN SIGEEA_Asociado A
	ON A.PK_Id_Asociado = CA.FK_Id_Asociado
	WHERE CA.FK_Id_Asociado = @Asociado AND CA.Estado_Cuota_Asociado = 1
	GROUP BY CA.PK_Id_Cuota_Asociado;
END














GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerInformacionEntrega]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 17/04/2016
-- Description:	Obtiene la información de cada detalle de la factura de entrega
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerInformacionEntrega]
	@Factura int = null
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT CONCAT(df.CanTotal_DetFacAsociado, UM.Nombre_UniMedida +' de ', tp.Nombre_TipProducto, 
				  ' destinados para el mercado ', (SELECT CASE DF.Mercado_DetFacAsociado
														 WHEN 1 THEN 'nacional'
														 WHEN 2 THEN 'extranjero'
														 END),
			(SELECT CASE DF.Mercado_DetFacAsociado
			WHEN 1 THEN '. Precio: ₡' + Convert(varchar(15),PC.PreNacional_PreProCompra)
			WHEN 2 THEN '. Precio: ₡' + Convert(varchar(15),PC.PreExtranjero_PreProCompra)
			END)) as Informacion, DF.PK_Id_DetFacAsociado, PC.FK_Id_TipProducto
	FROM SIGEEA_FacAsociado F
	JOIN SIGEEA_DetFacAsociado DF
	ON DF.FK_Id_FacAsociado = F.PK_Id_FacAsociado
	JOIN SIGEEA_PreProCompra PC
	ON PC.PK_Id_PreProCompra = DF.FK_Id_PreProCompra
	JOIN SIGEEA_TipProducto TP
	ON TP.PK_Id_TipProducto = PC.FK_Id_TipProducto
	JOIN SIGEEA_DetInvProductos DIP
	ON DIP.FK_Id_TipProducto = TP.PK_Id_TipProducto
	JOIN SIGEEA_UniMedida UM
	ON UM.PK_Id_UniMedida = DIP.FK_Id_UniMedida
	WHERE F.PK_Id_FacAsociado = @Factura
	GROUP BY DF.CanTotal_DetFacAsociado, UM.Nombre_UniMedida, TP.Nombre_TipProducto, DF.Mercado_DetFacAsociado, PC.PreExtranjero_PreProCompra, PC.PreNacional_PreProCompra, DF.PK_Id_DetFacAsociado, PC.FK_Id_TipProducto;
END










GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerInsumo]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerInsumo]
@idInsumo int = null
AS
BEGIN
	
	SET NOCOUNT ON;
	select i.PK_Id_Insumo, i.Nombre_Insumo, i.Descripcion_Insumo,
	invi.Cantidad_InvInsumo, unim.Nombre_UniMedida

	from SIGEEA_Insumo i
	join SIGEEA_InvInsumo invi
	on i.PK_Id_Insumo = invi.FK_Id_Insumo
	join SIGEEA_UniMedida unim
	on unim.PK_Id_UniMedida = invi.PK_IdInvInsumo
			where i.PK_Id_Insumo = @idInsumo;
END













GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerInvProducto]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 29/05/2016
-- Description:	Incrementa el inventario de un producto determinado
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerInvProducto]
AS
BEGIN
		
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;		
    
	SELECT *
	FROM SIGEEA_DetInvProductos;
END













GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerListadoAsistencia]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 25/05/2016
-- Description:	Obtiene la lista de asistencia de una asamblea en particular
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerListadoAsistencia]
	@IdAsamblea int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT AA.PK_Id_AsiAsamblea, ('Nombre: ' + P.PriNombre_Persona + ' ' + P.PriApellido_Persona + ' ' + P.SegApellido_Persona) as Nombre,
		   AA.Estado_AsiAsamblea, ('Cédula: ' + P.CedParticular_Persona) AS Cedula 
	FROM SIGEEA_Asamblea A
	JOIN SIGEEA_AsiAsamblea AA
	ON AA.FK_Id_Asamblea = A.PK_Id_Asamblea
	JOIN SIGEEA_Asociado AAA
	ON AAA.PK_Id_Asociado = AA.FK_Id_Asociado
	JOIN SIGEEA_Persona P
	ON P.PK_Id_Persona = AAA.FK_Id_Persona
	WHERE A.PK_Id_Asamblea = @IdAsamblea
	ORDER BY P.CedParticular_Persona;
END















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerLotes]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 11/4/2016
-- Description:	Obtiene un listado de los lotes, de acuerdo a su finca
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerLotes]
	@IdFinca int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT L.Codigo_Lote, L.PK_Id_Lote
	FROM SIGEEA_Finca F
	JOIN SIGEEA_Lote L
	ON L.FK_Id_Finca = F.PK_Id_Finca
	WHERE F.PK_Id_Finca = @IdFinca
END















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerMonedaCuota]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 20/03/2016
-- Description:	Obtiene el símbolo de la moneda a partir de la cuota_asociado 
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerMonedaCuota]
	@IdCuotaAsociado int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT M.Simbolo_Moneda
	FROM SIGEEA_Cuota_Asociado CA
	JOIN SIGEEA_Cuota C
	ON C.PK_Id_Cuota = CA.FK_Id_Cuota
	JOIN SIGEEA_Moneda M
	ON M.PK_Id_Moneda = C.FK_Id_Moneda
	WHERE CA.PK_Id_Cuota_Asociado = @IdCuotaAsociado;
END

















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerPagosEmpleadosPendientes]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 10/02/16
-- Description: Obtiene lo que se le debe a un empleado en específico
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerPagosEmpleadosPendientes]
	@Empleado varchar(15) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT CONVERT(VARCHAR(11), hl.HoraInicio_HorLaboradas,106) as Fecha, 
		   DATEDIFF(mi, hl.HoraInicio_HorLaboradas, hl.HoraFin_HorLaboradas)/60.0 as Diferencia,
		   pu.Nombre_Puesto, 
		   concat('₡',(DATEDIFF(mi, hl.HoraInicio_HorLaboradas, hl.HoraFin_HorLaboradas) * (pu.Tarifa_Puesto/60))) as Total,
		   (DATEDIFF(mi, hl.HoraInicio_HorLaboradas, hl.HoraFin_HorLaboradas) * (pu.Tarifa_Puesto/60)) as eTotal,
		   hl.PK_Id_HorLaboradas, concat('₡',pu.Tarifa_Puesto) as Tarifa,
		   pu.Tarifa_Puesto as eTarifa
	FROM SIGEEA_HorLaboradas hl
	JOIN SIGEEA_PueTemporal pu
	ON pu.PK_Id_Puesto = hl.FK_Id_Puesto
	JOIN SIGEEA_Empleado em
	ON em.PK_Id_Empleado = hl.FK_Id_Empleado
	JOIN SIGEEA_Persona pe
	ON pe.PK_Id_Persona = em.FK_Id_Persona
	WHERE pe.CedParticular_Persona = @Empleado
	AND hl.Estado_HorLaboradas = 0 AND hl.Activo_HorLaboradas = 0
		
END



GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerPrecioCompra]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 16/04/2016
-- Description:	Obtiene el registro más reciente del precio de compra de un producto
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerPrecioCompra]
	@Producto int = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT TOP 1 p.PK_Id_PreProCompra, p.FecRegistro_PreProCompra
	FROM SIGEEA_PreProCompra p
	WHERE p.FecRegistro_PreProCompra = (SELECT MAX(pp.FecRegistro_PreProCompra)
										FROM SIGEEA_PreProCompra pp
										WHERE pp.PK_Id_PreProCompra = p.PK_Id_PreProCompra
										GROUP BY pp.FecRegistro_PreProCompra)
		  AND p.FK_Id_TipProducto = @Producto
	ORDER BY p.PK_Id_PreProCompra desc
	
END















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerPreciosCompraActualProd]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 30/05/2016
-- Description:	Obtiene los precios actuales de los productos
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerPreciosCompraActualProd]
	@Producto varchar(100) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT TOP 1 C.PK_Id_PreProCompra, C.PreExtranjero_PreProCompra, C.PreNacional_PreProCompra, C.FecRegistro_PreProCompra,
				 TP.Nombre_TipProducto
	FROM SIGEEA_PreProCompra C 
	JOIN SIGEEA_TipProducto TP
	ON TP.PK_Id_TipProducto = C.FK_Id_TipProducto
	WHERE TP.Nombre_TipProducto = @Producto
	ORDER BY C.FecRegistro_PreProCompra DESC;
END











GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerPreciosVentaActualProd]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 30/05/2016
-- Description:	Obtiene los precios actuales de los productos
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerPreciosVentaActualProd]
	@Producto varchar(30) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT TOP 1 V.PK_Id_PreProVenta, V.PreExtranjero_PreProVenta, V.PreNacional_PreProVenta, V.FecRegistro_PreProVenta,
				 TP.Nombre_TipProducto
	FROM SIGEEA_PreProVenta V
	JOIN SIGEEA_TipProducto TP
	ON TP.PK_Id_TipProducto = V.FK_Id_TipProducto
	WHERE TP.Nombre_TipProducto = @Producto
	ORDER BY V.FecRegistro_PreProVenta DESC
END











GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerPrecioVentaMoneda]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerPrecioVentaMoneda]
	@nombreMoneda varchar(15) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	mo.PreVenta_Moneda
	from SIGEEA_Moneda mo
	where
	mo.Nombre_Moneda = @nombreMoneda
END
















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerUnidadesMedida]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerUnidadesMedida]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	uni.Nombre_UniMedida
	FROM
	SIGEEA_UniMedida uni
	where uni.Estado = 1 
END






















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spObtenerUnidadMedidaPorTipo]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 29/05/2016
-- Description:	Obtiene la unidad de medida de un producto a partir de su tipo
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spObtenerUnidadMedidaPorTipo]
	@Producto int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT UM.PK_Id_UniMedida, UM.Nombre_UniMedida
	FROM SIGEEA_TipProducto TP
	JOIN SIGEEA_DetInvProductos DIP
	ON DIP.FK_Id_TipProducto = TP.PK_Id_TipProducto
	JOIN SIGEEA_UniMedida UM
	ON UM.PK_Id_UniMedida = DIP.FK_Id_UniMedida
	WHERE TP.PK_Id_TipProducto = @Producto;
END











GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spPieFacturaCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spPieFacturaCliente]
	@idFactura int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE   
        @Tipo_Factura nvarchar(3) 
	SELECT @Tipo_Factura = F.Estado_FacCliente
	FROM SIGEEA_FacCliente F
	WHERE F.PK_Id_FacCliente = @idFactura;
	IF @Tipo_Factura = 'CO'
		BEGIN
			SELECT 
			CONCAT('Monto Neto: ',M.Simbolo_Moneda , format(F.MonNeto_FacCliente, 'N0')) AS MonNeto_Cliente,
			CONCAT('Monto Total: ',M.Simbolo_Moneda , format(F.MonTotal_FacCliente, 'N0')) AS MonTotal_FacCliente,
			CONCAT('Descuento: ',F.Descuento_FacCliente, '%') AS Descuento_FacCliente,
			CASE A.Metodo_AboCliente 
			  WHEN 1 THEN 'Metodo de pago: Efectivo'
			  WHEN 2 THEN 'Metodo de pago: Tarjeta' 
			  WHEN 3 THEN CONCAT('Metodo de pago: Cheque. Número de cheque: ', A.Numero_AboCliente)
			  WHEN 4 THEN CONCAT('Metodo de pago: Depósito. Número de cuenta: ', A.Numero_AboCliente)
			END as Metodo_AboCliente,
			CONCAT('Saldo Anterior: ', M.Simbolo_Moneda , format(F.MonTotal_FacCliente, 'N0')) AS Saldo_Anterior,
			CONCAT('Pago Cliente: ', M.Simbolo_Moneda , format(A.Monto_AboCliente, 'N0')) AS Abono_Cliente,
			CONCAT('Saldo Actual: ', M.Simbolo_Moneda , format(A.Monto_AboCliente - F.MonTotal_FacCliente, 'N0')) AS Saldo_Actual,
			CONCAT('Observaciones: ', F.Observaciones_FacCliente) AS Observaciones_FacCliente,
			CONCAT('Tipo de Factura: ', 'Contado') AS Tipo_Factura,
			'' as FecLimPago_CreCliente,
			'' as FecProPago_CreCliente
			FROM SIGEEA_FacCliente F
			JOIN SIGEEA_AboCliente A
			ON A.FK_Id_FacCliente = F.PK_Id_FacCliente
			JOIN SIGEEA_Moneda M
			ON M.PK_Id_Moneda = F.FK_Id_Moneda
			WHERE F.PK_Id_FacCliente = @idFactura
		END
	IF @Tipo_Factura = 'PR'
		BEGIN
			SELECT 
			CONCAT('Monto Neto: ',M.Simbolo_Moneda , format(F.MonNeto_FacCliente, 'N0')) AS MonNeto_Cliente,
			CONCAT('Monto Total: ',M.Simbolo_Moneda , format(F.MonTotal_FacCliente, 'N0')) AS MonTotal_FacCliente,
			CONCAT('Descuento: ',F.Descuento_FacCliente, '%') AS Descuento_FacCliente,
			CONCAT('Observaciones: ', F.Observaciones_FacCliente) AS Observaciones_FacCliente,
			CONCAT('Tipo de factura: ', 'Proforma') AS Tipo_Factura,
			'' AS Saldo_Anterior,
			'' as FecLimPago_CreCliente,
			'' as FecProPago_CreCliente,
			'' as MonTotal_FacCliente,
			'' as Metodo_AboCliente,
			'' as Saldo_Actual,
			'' as Abono_Cliente
			FROM SIGEEA_FacCliente F
			JOIN SIGEEA_Moneda M
			ON M.PK_Id_Moneda = F.FK_Id_Moneda
			WHERE F.PK_Id_FacCliente = @idFactura
		END
	IF @Tipo_Factura = 'CR'
		BEGIN
			SELECT 
			CONCAT('Monto Neto: ',M.Simbolo_Moneda , format(F.MonNeto_FacCliente, 'N0')) AS MonNeto_Cliente,
			CONCAT('Monto Total: ',M.Simbolo_Moneda , format(F.MonTotal_FacCliente, 'N0')) AS MonTotal_FacCliente,
			CONCAT('Descuento: ',F.Descuento_FacCliente, '%') AS Descuento_FacCliente,
			CONCAT('Fecha límite de pago: ', CONVERT (char(10), CF.FecLimPago_CreCliente, 103)) AS FecLimPago_CreCliente,
			CONCAT('Fecha próximo pago: ', CONVERT (char(10), CF.FecProPago_CreCliente, 103)) AS FecProPago_CreCliente,
			CONCAT('Observaciones: ', F.Observaciones_FacCliente) AS Observaciones_FacCliente,
			CONCAT('Tipo de factura: ', 'Crédito') AS Tipo_Factura,
			'' AS Saldo_Actual,
			'' as Metodo_AboCliente,
			'' as Saldo_Anterior,
			'' as Abono_Cliente
			FROM SIGEEA_FacCliente F
			JOIN SIGEEA_Moneda M
			ON M.PK_Id_Moneda = F.FK_Id_Moneda
			JOIN SIGEEA_CreCliente CF
			ON CF.FK_Id_FacCliente = F.PK_Id_FacCliente
			WHERE F.PK_Id_FacCliente = @idFactura
		END
END



GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spPieReporteVentasPorCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Roberto Alvarado Fallas
-- Create date: 13/03/2017
-- Description:	Reporte de ventas por cliente
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spPieReporteVentasPorCliente]
	@idCliente int = null,
	@fecInicio dateTime,
	@fecFin dateTime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
	M.Nombre_Moneda,
	CONCAT('₡', M.PreCompra_Moneda) as PreCompra_Moneda,
	CONCAT('₡', M.PreVenta_Moneda) as PreVenta_Moneda,
	CONCAT(M.Simbolo_Moneda , format(SUM(FC.MonNeto_FacCliente), 'N0')) AS MonNeto_Cliente,
    CONCAT(M.Simbolo_Moneda , format(SUM(FC.MonTotal_FacCliente), 'N0')) AS MonTotal_Cliente, 
	 CONCAT(M.Simbolo_Moneda , format(SUM(FC.MonTotal_FacCliente) - SUM(FC.MonNeto_FacCliente) , 'N0')) AS Descuento_Cliente, 
	CASE FC.Estado_FacCliente 
			WHEN 'CO' THEN 'Contado'
			WHEN 'CR' THEN 'Crédito' 
			WHEN 'PR' THEN 'Proforma'
		END as Estado_FacCliente
	FROM SIGEEA_FacCliente FC
	JOIN SIGEEA_Cliente C
	ON C.PK_Id_Cliente = FC.FK_Id_Cliente
	JOIN SIGEEA_Moneda M
	ON M.PK_Id_Moneda = FC.FK_Id_Moneda
	WHERE FC.FK_Id_Cliente = @idCliente AND
	FC.FecEntrega_FacCliente BETWEEN @fecInicio AND @fecFin
	GROUP BY M.Nombre_Moneda, M.PreVenta_Moneda, M.PreCompra_Moneda, FC.Estado_FacCliente,  M.Simbolo_Moneda
END




GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spRegistraHorasLaboradas]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 10/02/16
-- Description:	Registra las horas laboradas de un empleado en específico
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spRegistraHorasLaboradas]
	@Empleado varchar(15) = null,
	@Puesto varchar(30) = null
AS
BEGIN
	SET NOCOUNT ON;

	if (SELECT hl.PK_Id_HorLaboradas
		FROM SIGEEA_HorLaboradas hl
		JOIN SIGEEA_Empleado em
		ON em.PK_Id_Empleado = hl.FK_Id_Empleado
		JOIN SIGEEA_Persona pe
		ON pe.PK_Id_Persona = em.FK_Id_Persona
		WHERE pe.CedParticular_Persona LIKE @Empleado AND
			  hl.Activo_HorLaboradas = 1 AND
			  hl.Estado_HorLaboradas = 0) is not null
	
		UPDATE SIGEEA_HorLaboradas 
		SET HoraFin_HorLaboradas = GETDATE(), Activo_HorLaboradas = 0
		WHERE FK_Id_Empleado = (SELECT em.PK_Id_Empleado
								FROM SIGEEA_Empleado em
								JOIN SIGEEA_Persona pe
								ON pe.PK_Id_Persona = em.FK_Id_Persona
								AND pe.CedParticular_Persona = @Empleado)
			  AND Activo_HorLaboradas = 1 AND Estado_HorLaboradas = 0;


	else
		INSERT INTO SIGEEA_HorLaboradas(Activo_HorLaboradas,Estado_HorLaboradas,FK_Id_Empleado,FK_Id_Puesto,
										HoraInicio_HorLaboradas,HoraFin_HorLaboradas)
		VALUES(1,0,(SELECT em.PK_Id_Empleado
					FROM SIGEEA_Empleado em
					JOIN SIGEEA_Persona pe
					ON pe.PK_Id_Persona = em.FK_Id_Persona
					AND pe.CedParticular_Persona = @Empleado),
					(SELECT p.PK_Id_Puesto
					 FROM SIGEEA_PueTemporal p
					 WHERE p.Actualizacion_Puesto in (SELECT MAX(g.Actualizacion_Puesto)
													  FROM SIGEEA_PueTemporal g
													  WHERE g.Nombre_Puesto LIKE @Puesto)), 
					GETDATE(), null);


END





















GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spReporteVentasProductoPorCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Roberto Alvarado Fallas
-- Create date: 16/04/2017
-- Description:	Reporte de ventas por producto
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spReporteVentasProductoPorCliente]
	@idCliente int = null,
	@fecInicio dateTime,
	@fecFin dateTime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here



	SELECT
    TP.Nombre_TipProducto, TP.Calidad_TipProducto, @fecInicio AS Fecha_Inicio, @fecFin AS Fecha_Fin, FC.PK_Id_FacCliente,
	CONCAT('₡' , format(M.PreVenta_Moneda, 'N0')) as PreVenta_Moneda,
	CONCAT('₡' , format(M.PreCompra_Moneda, 'N0')) as PreCompra_Moneda,
	CONCAT(M.Simbolo_Moneda , format(DFC.PreUnidad_DetFacCliente, 'N0')) as PreUnidad_DetFacCliente,
	CONCAT(M.Simbolo_Moneda , format(FC.MonNeto_FacCliente, 'N0')) as MonNeto_Producto,
	CONCAT(M.Simbolo_Moneda , format(FC.MonTotal_FacCliente, 'N0')) as MonTotal_Producto,
	CONCAT(SUM(DFC.CanProducto_DetFacCliente), UM.Nombre_UniMedida) AS Cantidad,
	CONCAT(M.Simbolo_Moneda ,format(SUM(FC.MonTotal_FacCliente) - SUM(FC.MonNeto_FacCliente), 'N0')) as Descuento,
    CASE FC.Estado_FacCliente 
		WHEN 'CO' THEN 'Contado'
		WHEN 'CR' THEN 'Crédito' 
		WHEN 'PR' THEN 'Proforma'
	END as Estado_FacCliente
	FROM SIGEEA_FacCliente FC
	JOIN SIGEEA_Cliente C
	ON C.PK_Id_Cliente = FC.FK_Id_Cliente
	JOIN SIGEEA_DetFacCliente DFC
	ON DFC.FK_Id_FacCliente = FC.PK_Id_FacCliente
	JOIN SIGEEA_TipProducto TP
	ON TP.PK_Id_TipProducto = DFC.FK_Id_TipProducto
	JOIN SIGEEA_UniMedida UM
	ON UM.PK_Id_UniMedida = DFC.FK_Id_UniMedida
	JOIN SIGEEA_Moneda M
	ON M.PK_Id_Moneda = FC.FK_Id_Moneda
	WHERE FC.FK_Id_Cliente = @idCliente AND
	FC.FecEntrega_FacCliente BETWEEN @fecInicio AND @fecFin
	GROUP BY M.PreVenta_Moneda, M.PreCompra_Moneda, FC.Estado_FacCliente, TP.Nombre_TipProducto, 
	TP.Calidad_TipProducto, UM.Nombre_UniMedida, DFC.PreUnidad_DetFacCliente, PreUnidad_DetFacCliente, M.Simbolo_Moneda, FC.PK_Id_FacCliente, FC.MonNeto_FacCliente, FC.MonTotal_FacCliente
END


GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spSaldoCreditoCliente]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spSaldoCreditoCliente]
	@idCliente int = null,
	@fecInicio dateTime,
	@fecFin dateTime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
	format(sum(C.Saldo_CreCliente), 'N0') as Saldo_CreCliente,
	M.Simbolo_Moneda
	FROM SIGEEA_CreCliente C
	JOIN SIGEEA_Moneda M
	ON M.PK_Id_Moneda = C.FK_Id_Moneda
	WHERE C.FK_Id_Cliente = @idCliente AND
	C.Fecha_CreCliente BETWEEN @fecInicio AND @fecFin
	GROUP BY M.Simbolo_Moneda
END



GO
/****** Object:  StoredProcedure [dbo].[SIGEEA_spUltimaFacturaEntregaProducto]    Script Date: 13/03/2018 10:23:03 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Barrantes Mora
-- Create date: 11-03-2017
-- Description:	Obtiene el último consecutivo del número de factura de entrega y cancelación de producto
-- =============================================
CREATE PROCEDURE [dbo].[SIGEEA_spUltimaFacturaEntregaProducto]
AS
BEGIN
	SET NOCOUNT ON;

    SELECT TOP 1 Numero_FacAsociado, PK_Id_FacAsociado
	FROM SIGEEA_FacAsociado
	ORDER BY Numero_FacAsociado DESC

END







GO
