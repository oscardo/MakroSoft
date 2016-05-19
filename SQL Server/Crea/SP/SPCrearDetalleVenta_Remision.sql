USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPCrearDetalleVenta_Remision]    Script Date: 19/05/2016 11:10:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
ALTER PROCEDURE [dbo].[SPCrearDetalleVenta_Remision]
		    @FKTransaccion int	
           ,@Dependencia nchar(50)
           ,@Contactar nchar(50)
           ,@Fecha_Entrada datetime
           ,@Direccion nchar(50)
           ,@Piso nchar(50)
           ,@Telefono nchar(15)
           ,@Fecha_Salida datetime
           ,@CPU bit
           ,@NCPU nchar(50)
           ,@SerieCPU nchar(50)
           ,@PlacaCPU nchar(50)
           ,@Monitor bit
           ,@NMonitor nchar(50)
           ,@SerieMonitor nchar(50)
           ,@PlacaMonitor nchar(50)
           ,@Impresora bit
           ,@NImpresora nchar(50)
           ,@SerieImpresora nchar(50)
           ,@PlacaImpresora nchar(50)
           ,@DVD bit
           ,@NDVD nchar(50)
           ,@SerieDVD nchar(50)
           ,@PlacaDVD nchar(50)
           ,@DiscoDuro bit
           ,@NDiscoDuro nchar(50)
           ,@SerieDD nchar(50)
           ,@PlacaDD nchar(50)
           ,@Teclado bit
           ,@NTeclado nchar(50)
           ,@Mouse bit
           ,@NMouse nchar(50)
           ,@Scanner bit
           ,@NScanner nchar(50)
           ,@SerieScanner nchar(50)
           ,@PlacaScanner nchar(50)
           ,@Office bit
           ,@NOffice nchar(50)
           ,@Clave_Office nchar(50)
           ,@Memoria bit
           ,@NMemoria nchar(50)
           ,@Sistema_Operativo bit
           ,@NSistema_Operativo nchar(50)
           ,@Clave_SO nchar(50)
           ,@Correo bit
           ,@Correo_Electronico nchar(50)
           ,@Antivirus bit
           ,@NVAntivirus nchar(50)
           ,@Clave_Antivirus nchar(50)
           ,@Conexion_Red bit
           ,@Otro bit
           ,@Otros_NoReferenciado nchar(50)
           ,@Nombre_Reporta nchar(50)
           ,@Descripcion nchar(200)
           ,@Descripcion_Detallada nchar(200)
           ,@Preventivo bit
           ,@Correctivo bit
           ,@Observaciones nchar(1000)
           ,@Fecha_Sistema datetime
           ,@Valor_Unidad numeric(18,0)
           ,@IVA_Unidad numeric(18,0)
           ,@Retencion_Unidad numeric(18,0)
           ,@Valor_Total numeric(18,0)
           ,@IVA_Total numeric(18,0)
           ,@SubTotal numeric(18,0)
           ,@Retencion_Total numeric(18,0)
           ,@Notas nchar(200)
AS
BEGIN

INSERT INTO [dbo].[DetalleVenta_Remision]
           ([FKTransaccion]
           ,[Dependencia]
           ,[Contactar]
           ,[Fecha_Entrada]
           ,[Direccion]
           ,[Piso]
           ,[Telefono]
           ,[Fecha_Salida]
           ,[CPU]
           ,[NCPU]
           ,[SerieCPU]
           ,[PlacaCPU]
           ,[Monitor]
           ,[NMonitor]
           ,[SerieMonitor]
           ,[PlacaMonitor]
           ,[Impresora]
           ,[NImpresora]
           ,[SerieImpresora]
           ,[PlacaImpresora]
           ,[DVD]
           ,[NDVD]
           ,[SerieDVD]
           ,[PlacaDVD]
           ,[DiscoDuro]
           ,[NDiscoDuro]
           ,[SerieDD]
           ,[PlacaDD]
           ,[Teclado]
           ,[NTeclado]
           ,[Mouse]
           ,[NMouse]
           ,[Scanner]
           ,[NScanner]
           ,[SerieScanner]
           ,[PlacaScanner]
           ,[Office]
           ,[NOffice]
           ,[Clave_Office]
           ,[Memoria]
           ,[NMemoria]
           ,[Sistema_Operativo]
           ,[NSistema_Operativo]
           ,[Clave_SO]
           ,[Correo]
           ,[Correo_Electronico]
           ,[Antivirus]
           ,[NVAntivirus]
           ,[Clave_Antivirus]
           ,[Conexion_Red]
           ,[Otro]
           ,[Otros_NoReferenciado]
           ,[Nombre_Reporta]
           ,[Descripcion]
           ,[Descripcion_Detallada]
           ,[Preventivo]
           ,[Correctivo]
           ,[Observaciones]
           ,[Fecha_Sistema]
           ,[Valor_Unidad]
           ,[IVA_Unidad]
           ,[Retencion_Unidad]
           ,[Valor_Total]
           ,[IVA_Total]
           ,[SubTotal]
           ,[Retencion_Total]
           ,[Notas])
     VALUES
           (@FKTransaccion 
           ,@Dependencia 
           ,@Contactar 
           ,@Fecha_Entrada 
           ,@Direccion 
           ,@Piso 
           ,@Telefono 
           ,@Fecha_Salida 
           ,@CPU 
           ,@NCPU 
           ,@SerieCPU 
           ,@PlacaCPU 
           ,@Monitor 
           ,@NMonitor 
           ,@SerieMonitor 
           ,@PlacaMonitor 
           ,@Impresora 
           ,@NImpresora 
           ,@SerieImpresora 
           ,@PlacaImpresora 
           ,@DVD 
           ,@NDVD 
           ,@SerieDVD 
           ,@PlacaDVD 
           ,@DiscoDuro 
           ,@NDiscoDuro 
           ,@SerieDD 
           ,@PlacaDD 
           ,@Teclado 
           ,@NTeclado 
           ,@Mouse 
           ,@NMouse 
           ,@Scanner 
           ,@NScanner 
           ,@SerieScanner 
           ,@PlacaScanner 
           ,@Office 
           ,@NOffice 
           ,@Clave_Office 
           ,@Memoria 
           ,@NMemoria 
           ,@Sistema_Operativo 
           ,@NSistema_Operativo 
           ,@Clave_SO 
           ,@Correo 
           ,@Correo_Electronico 
           ,@Antivirus 
           ,@NVAntivirus 
           ,@Clave_Antivirus 
           ,@Conexion_Red 
           ,@Otro 
           ,@Otros_NoReferenciado 
           ,@Nombre_Reporta 
           ,@Descripcion 
           ,@Descripcion_Detallada 
           ,@Preventivo 
           ,@Correctivo 
           ,@Observaciones 
           ,@Fecha_Sistema 
           ,@Valor_Unidad 
           ,@IVA_Unidad 
           ,@Retencion_Unidad 
           ,@Valor_Total 
           ,@IVA_Total 
           ,@SubTotal 
           ,@Retencion_Total 
           ,@Notas )

END
