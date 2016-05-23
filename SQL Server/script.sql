USE [MakroSoftDB2]
GO
/****** Object:  Table [dbo].[Auditoria]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auditoria](
	[PKAuditoria] [int] IDENTITY(1,1) NOT NULL,
	[Accion] [text] NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Auditoria] PRIMARY KEY CLUSTERED 
(
	[PKAuditoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bodega]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bodega](
	[PKBodega] [int] IDENTITY(1,1) NOT NULL,
	[FKDepartamento] [nchar](10) NULL,
	[FKMunicipio] [nchar](10) NULL,
	[NombreBodega] [nchar](50) NULL,
	[Direccion] [nchar](50) NULL,
	[Responsable1] [nchar](50) NULL,
	[Responsable2] [nchar](50) NULL,
	[Telefono1] [nchar](15) NULL,
	[Telefono2] [nchar](15) NULL,
	[Celular] [nchar](15) NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Bodega] PRIMARY KEY CLUSTERED 
(
	[PKBodega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[PKCliente] [int] IDENTITY(1,1) NOT NULL,
	[FKDepartamento] [nchar](10) NOT NULL,
	[FKMunicipio] [nchar](10) NOT NULL,
	[NombreCliente] [nchar](50) NULL,
	[Nit] [nchar](15) NULL,
	[Telefono1] [nchar](15) NULL,
	[Telefono2] [nchar](15) NULL,
	[Celular] [nchar](15) NULL,
	[Direccion] [nchar](50) NULL,
	[NombreRepLegal] [nchar](50) NULL,
	[Fecha] [datetime] NULL,
	[Correo_Electronico] [nchar](50) NULL,
	[PaginaWeb] [nchar](50) NULL,
	[Activo] [bit] NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[PKCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Compras]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[PKCompras] [int] IDENTITY(1,1) NOT NULL,
	[FKProveedor] [int] NULL,
	[FKDepartamento] [nchar](10) NULL,
	[FKMunicipio] [nchar](10) NULL,
	[Fecha_Compra] [datetime] NULL,
	[Observaciones] [nchar](200) NULL,
	[Garantia] [nchar](50) NULL,
	[Exterdida_Garantia] [nchar](50) NULL,
	[Factura_Compra] [nchar](50) NULL,
	[Ruta_Fotografia] [nchar](256) NULL,
	[Cantidad] [int] NULL,
	[Valor_Unidad] [numeric](18, 0) NULL,
	[SubTotal] [numeric](18, 0) NULL,
	[IVA] [numeric](18, 0) NULL,
	[Total] [numeric](18, 0) NULL,
	[Cantidad_Recibida] [int] NULL,
	[Saldo] [numeric](18, 0) NULL,
	[Descuento] [numeric](18, 0) NULL,
	[Activo] [bit] NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Compras] PRIMARY KEY CLUSTERED 
(
	[PKCompras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[PKDepartamento] [nchar](10) NOT NULL,
	[NombreDepartamento] [nchar](50) NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[PKDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DetalleVenta_Remision]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta_Remision](
	[PKDetalleVenta_Remision] [int] IDENTITY(1,1) NOT NULL,
	[Dependencia] [nchar](50) NULL,
	[Contactar] [nchar](50) NULL,
	[Fecha_Entrada] [datetime] NULL,
	[Direccion] [nchar](50) NULL,
	[Piso] [nchar](50) NULL,
	[Telefono] [nchar](15) NULL,
	[Fecha_Salida] [datetime] NULL,
	[CPU] [bit] NULL,
	[NCPU] [nchar](50) NULL,
	[Monitor] [bit] NULL,
	[NMonitor] [nchar](50) NULL,
	[Impresora] [bit] NULL,
	[NImpresora] [nchar](50) NULL,
	[DVD] [bit] NULL,
	[NDVD] [nchar](50) NULL,
	[DiscoDuro] [bit] NULL,
	[NDiscoDuro] [nchar](50) NULL,
	[Teclado] [bit] NULL,
	[NTeclado] [nchar](50) NULL,
	[Mouse] [bit] NULL,
	[NMouse] [nchar](50) NULL,
	[Scanner] [bit] NULL,
	[NScanner] [nchar](50) NULL,
	[Office] [bit] NULL,
	[NOffice] [nchar](50) NULL,
	[Clave_Office] [nchar](50) NULL,
	[Memoria] [bit] NULL,
	[NMemoria] [nchar](50) NULL,
	[Sistema_Operativo] [bit] NULL,
	[NSistema_Operativo] [nchar](50) NULL,
	[Clave_SO] [nchar](50) NULL,
	[Correo] [bit] NULL,
	[Correo_Electronico] [nchar](50) NULL,
	[Antivirus] [bit] NULL,
	[NVAntivirus] [nchar](50) NULL,
	[Clave_Antivirus] [nchar](50) NULL,
	[Conexion_Red] [bit] NULL,
	[Otro] [bit] NULL,
	[Otros_NoReferenciado] [nchar](50) NULL,
	[Nombre_Reporta] [nchar](50) NULL,
	[Descripcion] [nchar](200) NULL,
	[Descripcion_Detallada] [nchar](200) NULL,
	[Preventivo] [bit] NULL,
	[Correctivo] [bit] NULL,
	[Observaciones] [nchar](1000) NULL,
	[Fecha_Sistema] [datetime] NULL,
	[Valor_Unidad] [numeric](18, 0) NULL,
	[IVA_Unidad] [numeric](18, 0) NULL,
	[Retencion_Unidad] [numeric](18, 0) NULL,
	[Valor_Total] [numeric](18, 0) NULL,
	[IVA_Total] [numeric](18, 0) NULL,
	[SubTotal] [numeric](18, 0) NULL,
	[Retencion_Total] [numeric](18, 0) NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_DetalleVenta_Remision] PRIMARY KEY CLUSTERED 
(
	[PKDetalleVenta_Remision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipo](
	[PKEquipo] [int] IDENTITY(1,1) NOT NULL,
	[FKCompras] [int] NULL,
	[FKTipo] [int] NOT NULL,
	[FKFabricante] [int] NULL,
	[FKProcesador] [int] NULL,
	[FKCliente] [int] NULL,
	[Sistema_Operativo] [nchar](50) NULL,
	[Descripcion] [nchar](50) NULL,
	[Serial] [nchar](50) NULL,
	[Board] [nchar](50) NULL,
	[RAM] [nchar](10) NULL,
	[DiscoDuro] [nchar](10) NULL,
	[Mouse] [nchar](10) NULL,
	[Clave_Windows] [nchar](50) NULL,
	[Clave_Office] [nchar](50) NULL,
	[Clave_Antivirus] [nchar](50) NULL,
	[Clave_Otros] [nchar](50) NULL,
	[Clave_Otros2] [nchar](50) NULL,
	[Clave_Otros3] [nchar](30) NULL,
	[Cantidad] [int] NULL,
	[Activo] [bit] NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Equipo] PRIMARY KEY CLUSTERED 
(
	[PKEquipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Estado]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[PKEstado] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [nchar](50) NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[PKEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fabricante]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricante](
	[PKFabricante] [int] IDENTITY(1,1) NOT NULL,
	[Fabricante] [nchar](50) NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Fabricante] PRIMARY KEY CLUSTERED 
(
	[PKFabricante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[PKInventario] [int] IDENTITY(1,1) NOT NULL,
	[FKTransaccion] [int] NULL,
	[FKProveedor] [int] NULL,
	[FKBodega] [int] NOT NULL,
	[FKDetalle_VentaRemision] [int] NULL,
	[FKEquipo] [int] NULL,
	[Factura_Compra] [nchar](50) NULL,
	[Ruta_Fotografia] [nchar](256) NULL,
	[Fecha_Factura] [datetime] NULL,
	[Fecha_Sistema] [datetime] NULL,
	[Cantidad] [int] NULL,
	[Valor_Unidad] [numeric](18, 0) NULL,
	[Subtotal] [numeric](18, 0) NULL,
	[IVA] [numeric](18, 0) NULL,
	[Total] [numeric](18, 0) NULL,
	[Observaciones] [nchar](200) NULL,
	[Cantidad_Recibida] [int] NULL,
	[Fecha_Mmto] [datetime] NULL,
	[Planilla_Mmto] [nchar](10) NULL,
	[Actvo] [bit] NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Inventario] PRIMARY KEY CLUSTERED 
(
	[PKInventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mantenimiento]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mantenimiento](
	[PKMantenimiento] [int] IDENTITY(1,1) NOT NULL,
	[FKEquipo] [int] NULL,
	[FKTecnico] [int] NULL,
	[FKEstado] [int] NULL,
	[Planilla_Mmto] [nchar](50) NULL,
	[Fecha] [datetime] NULL,
	[Fecha_Sistema] [datetime] NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Mantenimiento] PRIMARY KEY CLUSTERED 
(
	[PKMantenimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[PKMunicipio] [nchar](10) NOT NULL,
	[FKDepartamento] [nchar](10) NULL,
	[NombreMunicipio] [nchar](50) NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Municipio] PRIMARY KEY CLUSTERED 
(
	[PKMunicipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Navegacion]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Navegacion](
	[PKNavegacion] [int] IDENTITY(1,1) NOT NULL,
	[FKRol] [int] NOT NULL,
	[Navegacion] [nvarchar](200) NULL,
	[Pagina] [nchar](200) NULL,
	[EsPadre] [bit] NULL,
	[EsHijo] [bit] NULL,
	[Numero] [nchar](10) NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Navegacion] PRIMARY KEY CLUSTERED 
(
	[PKNavegacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Procesador]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Procesador](
	[PKProcesador] [int] IDENTITY(1,1) NOT NULL,
	[NombreProcesador] [nchar](50) NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Procesador] PRIMARY KEY CLUSTERED 
(
	[PKProcesador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[PKProveedor] [int] IDENTITY(1,1) NOT NULL,
	[FKDepartamento] [nchar](10) NULL,
	[FKMunicipio] [nchar](10) NULL,
	[NombreProveedor] [nchar](50) NULL,
	[Nit] [nchar](15) NULL,
	[Telefono1] [nchar](15) NOT NULL,
	[Telefono2] [nchar](15) NULL,
	[Celular] [nchar](15) NULL,
	[NombreContacto] [nchar](50) NULL,
	[NombreContacto2] [nchar](50) NULL,
	[Servicios] [nchar](200) NULL,
	[CorreoElectronico] [nchar](50) NULL,
	[Paginaweb] [nchar](50) NULL,
	[Activo] [bit] NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[PKProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Remisiones]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remisiones](
	[PKRemisiones] [int] IDENTITY(1,1) NOT NULL,
	[FKCliente] [int] NOT NULL,
	[FKProveedor] [int] NOT NULL,
	[FKDepartamento] [nchar](10) NULL,
	[FKMunicipio] [nchar](10) NULL,
	[FKDetalle_Venta_Remision] [int] NULL,
	[Fecha_Inicio] [datetime] NULL,
	[Fecha_Fin] [datetime] NULL,
	[Fecha_Sistema] [datetime] NOT NULL,
	[Valor_Unidad] [numeric](18, 0) NULL,
	[IVA_Unidad] [numeric](18, 0) NULL,
	[Valor_Total] [numeric](18, 0) NULL,
	[Subtotal] [numeric](18, 0) NULL,
	[IVA] [numeric](18, 0) NULL,
	[Total] [numeric](18, 0) NULL,
	[FVenta] [nchar](50) NULL,
	[Cantidad] [int] NULL,
	[Diferencia] [numeric](18, 0) NULL,
	[Diferencia_Precio] [numeric](18, 0) NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Remisiones] PRIMARY KEY CLUSTERED 
(
	[PKRemisiones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[PKRol] [int] IDENTITY(1,1) NOT NULL,
	[Rol] [nchar](15) NULL,
	[Activo] [bit] NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[PKRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tecnico]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tecnico](
	[PKTecnico] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](50) NULL,
	[Activo] [bit] NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Tecnico] PRIMARY KEY CLUSTERED 
(
	[PKTecnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo](
	[PKTipo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](50) NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Tipo] PRIMARY KEY CLUSTERED 
(
	[PKTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[PKTipoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[TipoDocumento] [nchar](20) NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[PKTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transaccion]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaccion](
	[PKTransaccion] [int] IDENTITY(1,1) NOT NULL,
	[FKEquipo] [int] NOT NULL,
	[FKRemision] [int] NULL,
	[FKVentas] [int] NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Transaccion] PRIMARY KEY CLUSTERED 
(
	[PKTransaccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[PKUsuario] [int] IDENTITY(1,1) NOT NULL,
	[FKDepartamento] [nchar](10) NULL,
	[FKMunicipio] [nchar](10) NULL,
	[FKRol] [int] NULL,
	[NombreUsuario] [nchar](20) NULL,
	[Password] [nchar](15) NULL,
	[Telefono1] [nchar](15) NULL,
	[Celular] [nchar](15) NOT NULL,
	[Ubicacion] [nchar](50) NULL,
	[Activo] [bit] NULL,
	[CorreoElectronico] [nchar](50) NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[PKUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendedor]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendedor](
	[PKVendedor] [int] IDENTITY(1,1) NOT NULL,
	[FKDepartamento] [nchar](10) NOT NULL,
	[FKMunicipio] [nchar](10) NOT NULL,
	[FKTipoDocumento] [int] NULL,
	[NombrePersona] [nchar](50) NULL,
	[Direccion] [nchar](50) NULL,
	[Telefono1] [nchar](15) NULL,
	[Telefono2] [nchar](15) NULL,
	[Celular] [nchar](15) NULL,
	[Fotografia] [nchar](256) NULL,
	[Activo] [bit] NULL,
	[Notas] [nchar](200) NULL,
 CONSTRAINT [PK_Vendedor] PRIMARY KEY CLUSTERED 
(
	[PKVendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 14/05/2016 14:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[PKVentas] [int] IDENTITY(1,1) NOT NULL,
	[FKVendedor] [int] NULL,
	[FKTipoDocumento] [int] NULL,
	[FKDetalleVenta_Remision] [int] NULL,
	[NombreReferencia] [nchar](50) NULL,
	[Nit] [nchar](50) NULL,
	[Cedula] [nchar](15) NULL,
	[Telefono1] [nchar](15) NULL,
	[Telefono2] [nchar](15) NULL,
	[Celular] [nchar](15) NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[PKVentas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Bodega]  WITH CHECK ADD  CONSTRAINT [FK_Bodega_Departamento] FOREIGN KEY([FKDepartamento])
REFERENCES [dbo].[Departamento] ([PKDepartamento])
GO
ALTER TABLE [dbo].[Bodega] CHECK CONSTRAINT [FK_Bodega_Departamento]
GO
ALTER TABLE [dbo].[Bodega]  WITH CHECK ADD  CONSTRAINT [FK_Bodega_Municipio] FOREIGN KEY([FKMunicipio])
REFERENCES [dbo].[Municipio] ([PKMunicipio])
GO
ALTER TABLE [dbo].[Bodega] CHECK CONSTRAINT [FK_Bodega_Municipio]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Departamento] FOREIGN KEY([FKDepartamento])
REFERENCES [dbo].[Departamento] ([PKDepartamento])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Departamento]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Municipio] FOREIGN KEY([FKMunicipio])
REFERENCES [dbo].[Municipio] ([PKMunicipio])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Municipio]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Departamento] FOREIGN KEY([FKDepartamento])
REFERENCES [dbo].[Departamento] ([PKDepartamento])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Departamento]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Municipio] FOREIGN KEY([FKMunicipio])
REFERENCES [dbo].[Municipio] ([PKMunicipio])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Municipio]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Proveedor] FOREIGN KEY([FKProveedor])
REFERENCES [dbo].[Proveedor] ([PKProveedor])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Proveedor]
GO
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD  CONSTRAINT [FK_Equipo_Cliente] FOREIGN KEY([FKCliente])
REFERENCES [dbo].[Cliente] ([PKCliente])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_Equipo_Cliente]
GO
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD  CONSTRAINT [FK_Equipo_Fabricante] FOREIGN KEY([FKFabricante])
REFERENCES [dbo].[Fabricante] ([PKFabricante])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_Equipo_Fabricante]
GO
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD  CONSTRAINT [FK_Equipo_Procesador] FOREIGN KEY([FKProcesador])
REFERENCES [dbo].[Procesador] ([PKProcesador])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_Equipo_Procesador]
GO
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD  CONSTRAINT [FK_Equipo_Tipo] FOREIGN KEY([FKTipo])
REFERENCES [dbo].[Tipo] ([PKTipo])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_Equipo_Tipo]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Bodega] FOREIGN KEY([FKBodega])
REFERENCES [dbo].[Bodega] ([PKBodega])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Bodega]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_DetalleVenta_Remision] FOREIGN KEY([FKDetalle_VentaRemision])
REFERENCES [dbo].[DetalleVenta_Remision] ([PKDetalleVenta_Remision])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_DetalleVenta_Remision]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Equipo] FOREIGN KEY([FKEquipo])
REFERENCES [dbo].[Equipo] ([PKEquipo])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Equipo]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Proveedor] FOREIGN KEY([FKProveedor])
REFERENCES [dbo].[Proveedor] ([PKProveedor])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Proveedor]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Transaccion] FOREIGN KEY([FKTransaccion])
REFERENCES [dbo].[Transaccion] ([PKTransaccion])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Transaccion]
GO
ALTER TABLE [dbo].[Mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_Mantenimiento_Equipo] FOREIGN KEY([FKEquipo])
REFERENCES [dbo].[Equipo] ([PKEquipo])
GO
ALTER TABLE [dbo].[Mantenimiento] CHECK CONSTRAINT [FK_Mantenimiento_Equipo]
GO
ALTER TABLE [dbo].[Mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_Mantenimiento_Estado] FOREIGN KEY([FKEstado])
REFERENCES [dbo].[Estado] ([PKEstado])
GO
ALTER TABLE [dbo].[Mantenimiento] CHECK CONSTRAINT [FK_Mantenimiento_Estado]
GO
ALTER TABLE [dbo].[Mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_Mantenimiento_Tecnico] FOREIGN KEY([FKTecnico])
REFERENCES [dbo].[Tecnico] ([PKTecnico])
GO
ALTER TABLE [dbo].[Mantenimiento] CHECK CONSTRAINT [FK_Mantenimiento_Tecnico]
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD  CONSTRAINT [FK_Municipio_Departamento] FOREIGN KEY([FKDepartamento])
REFERENCES [dbo].[Departamento] ([PKDepartamento])
GO
ALTER TABLE [dbo].[Municipio] CHECK CONSTRAINT [FK_Municipio_Departamento]
GO
ALTER TABLE [dbo].[Navegacion]  WITH CHECK ADD  CONSTRAINT [FK_Navegacion_Roles] FOREIGN KEY([FKRol])
REFERENCES [dbo].[Roles] ([PKRol])
GO
ALTER TABLE [dbo].[Navegacion] CHECK CONSTRAINT [FK_Navegacion_Roles]
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Proveedor_Departamento] FOREIGN KEY([FKDepartamento])
REFERENCES [dbo].[Departamento] ([PKDepartamento])
GO
ALTER TABLE [dbo].[Proveedor] CHECK CONSTRAINT [FK_Proveedor_Departamento]
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Proveedor_Municipio] FOREIGN KEY([FKMunicipio])
REFERENCES [dbo].[Municipio] ([PKMunicipio])
GO
ALTER TABLE [dbo].[Proveedor] CHECK CONSTRAINT [FK_Proveedor_Municipio]
GO
ALTER TABLE [dbo].[Remisiones]  WITH CHECK ADD  CONSTRAINT [FK_Remisiones_Departamento] FOREIGN KEY([FKDepartamento])
REFERENCES [dbo].[Departamento] ([PKDepartamento])
GO
ALTER TABLE [dbo].[Remisiones] CHECK CONSTRAINT [FK_Remisiones_Departamento]
GO
ALTER TABLE [dbo].[Remisiones]  WITH CHECK ADD  CONSTRAINT [FK_Remisiones_DetalleVenta_Remision] FOREIGN KEY([FKDetalle_Venta_Remision])
REFERENCES [dbo].[DetalleVenta_Remision] ([PKDetalleVenta_Remision])
GO
ALTER TABLE [dbo].[Remisiones] CHECK CONSTRAINT [FK_Remisiones_DetalleVenta_Remision]
GO
ALTER TABLE [dbo].[Remisiones]  WITH CHECK ADD  CONSTRAINT [FK_Remisiones_Municipio] FOREIGN KEY([FKMunicipio])
REFERENCES [dbo].[Municipio] ([PKMunicipio])
GO
ALTER TABLE [dbo].[Remisiones] CHECK CONSTRAINT [FK_Remisiones_Municipio]
GO
ALTER TABLE [dbo].[Transaccion]  WITH CHECK ADD  CONSTRAINT [FK_Transaccion_Equipo] FOREIGN KEY([FKEquipo])
REFERENCES [dbo].[Equipo] ([PKEquipo])
GO
ALTER TABLE [dbo].[Transaccion] CHECK CONSTRAINT [FK_Transaccion_Equipo]
GO
ALTER TABLE [dbo].[Transaccion]  WITH CHECK ADD  CONSTRAINT [FK_Transaccion_Remisiones] FOREIGN KEY([FKRemision])
REFERENCES [dbo].[Remisiones] ([PKRemisiones])
GO
ALTER TABLE [dbo].[Transaccion] CHECK CONSTRAINT [FK_Transaccion_Remisiones]
GO
ALTER TABLE [dbo].[Transaccion]  WITH CHECK ADD  CONSTRAINT [FK_Transaccion_Ventas] FOREIGN KEY([FKVentas])
REFERENCES [dbo].[Ventas] ([PKVentas])
GO
ALTER TABLE [dbo].[Transaccion] CHECK CONSTRAINT [FK_Transaccion_Ventas]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Departamento] FOREIGN KEY([FKDepartamento])
REFERENCES [dbo].[Departamento] ([PKDepartamento])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Departamento]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Municipio] FOREIGN KEY([FKMunicipio])
REFERENCES [dbo].[Municipio] ([PKMunicipio])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Municipio]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Roles] FOREIGN KEY([FKRol])
REFERENCES [dbo].[Roles] ([PKRol])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Roles]
GO
ALTER TABLE [dbo].[Vendedor]  WITH CHECK ADD  CONSTRAINT [FK_Vendedor_Departamento] FOREIGN KEY([FKDepartamento])
REFERENCES [dbo].[Departamento] ([PKDepartamento])
GO
ALTER TABLE [dbo].[Vendedor] CHECK CONSTRAINT [FK_Vendedor_Departamento]
GO
ALTER TABLE [dbo].[Vendedor]  WITH CHECK ADD  CONSTRAINT [FK_Vendedor_Municipio] FOREIGN KEY([FKMunicipio])
REFERENCES [dbo].[Municipio] ([PKMunicipio])
GO
ALTER TABLE [dbo].[Vendedor] CHECK CONSTRAINT [FK_Vendedor_Municipio]
GO
ALTER TABLE [dbo].[Vendedor]  WITH CHECK ADD  CONSTRAINT [FK_Vendedor_TipoDocumento] FOREIGN KEY([FKTipoDocumento])
REFERENCES [dbo].[TipoDocumento] ([PKTipoDocumento])
GO
ALTER TABLE [dbo].[Vendedor] CHECK CONSTRAINT [FK_Vendedor_TipoDocumento]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_DetalleVenta_Remision] FOREIGN KEY([FKDetalleVenta_Remision])
REFERENCES [dbo].[DetalleVenta_Remision] ([PKDetalleVenta_Remision])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_DetalleVenta_Remision]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_TipoDocumento] FOREIGN KEY([FKTipoDocumento])
REFERENCES [dbo].[TipoDocumento] ([PKTipoDocumento])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_TipoDocumento]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Vendedor] FOREIGN KEY([FKVendedor])
REFERENCES [dbo].[Vendedor] ([PKVendedor])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Vendedor]
GO
