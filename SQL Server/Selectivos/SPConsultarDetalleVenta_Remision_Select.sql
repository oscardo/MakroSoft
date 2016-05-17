SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 17/05/2016
-- Description:	Procedimiento
-- =============================================
CREATE PROCEDURE SPConsultarDetalleVenta_Remision_Select
	
AS
BEGIN
	SET NOCOUNT ON;


SELECT isnumeric(PKDetalleVenta_Remision) as [Nro de Detalle]
      ,isnull(DV.Dependencia, '') as [Dependencia]
      ,isnull(DV.Contactar, '') as [Contactar]
      ,isnull(DV.Fecha_Entrada, getdate()) as [Fecha Entrada]
      ,isnull(DV.Direccion, '') as [Direccion]
      ,isnull(DV.Piso, '') as [Piso]
      ,isnull(DV.Telefono, '') as [Telefono]
      ,isnull(DV.Fecha_Salida, Getdate()) as [Fecha Salida]
      ,isnull(DV.CPU, 0) as [CPU]
      ,isnull(DV.NCPU, '') as [Nombre CPU]
      ,isnull(DV.Monitor, 0) as [Monitor]
      ,isnull(DV.NMonitor, '') as [Nombre Monitor]
      ,isnull(DV.Impresora, 0) as [Impresora]
      ,isnull(DV.NImpresora, '') as [Nombre Impresora]
      ,isnull(DV.DVD, 0) as [DVD]
      ,isnull(DV.NDVD, '') as [Nombre DVD]
      ,isnull(DV.DiscoDuro, 0) as [DiscoDuro]
      ,isnull(DV.NDiscoDuro, '') as [Nombre DiscoDuro]
      ,isnull(DV.Teclado, 0) as [Teclado]
      ,isnull(DV.NTeclado, '') as [Nombre Teclado]
      ,isnull(DV.Mouse, 0) as [Mouse]
      ,isnull(DV.NMouse, '') as [Nombre Mouse]
      ,isnull(DV.Scanner, 0) as [Scanner]
      ,isnull(DV.NScanner, '') as [Nombre Scanner]
      ,isnull(DV.Office, 0) as [Office]
      ,isnull(DV.NOffice, '') as [Nombre Office]
      ,isnull(DV.Clave_Office, '') as [Clave Office]
      ,isnull(DV.Memoria, 0) as [Memoria]
      ,isnull(DV.NMemoria, '') as [Nombre Memoria]
      ,isnull(DV.Sistema_Operativo, 0) as [SOperativo]
      ,isnull(DV.NSistema_Operativo, '') as [Sistema Operativo]
      ,isnull(DV.Clave_SO, '') as [Clave SO]
      ,isnull(DV.Correo, 0) as [Correo]
      ,isnull(DV.Correo_Electronico, '') as [Correo Electronico]
      ,isnull(DV.Antivirus, 0) as [Antivirus]
      ,isnull(DV.NVAntivirus, '') as [Nombre Antivirus]
      ,isnull(DV.Clave_Antivirus, '') as [Clave Antivirus]
      ,isnull(DV.Conexion_Red, 0) as [Conexion Red]
      ,isnull(DV.Otro, '') as [Otro]
      ,isnull(DV.Otros_NoReferenciado, '') as [Otro No Referenciado]
      ,isnull(DV.Nombre_Reporta, '') as [Nombre Reporta]
      ,isnull(DV.Descripcion, '') as [Descripcion]
      ,isnull(DV.Descripcion_Detallada, '') as [Descripcion Detallada]
      ,isnull(DV.Preventivo, 0) as [Preventivo]
      ,isnull(DV.Correctivo, 0) as [Correctivo]
      ,isnull(DV.Observaciones, '') as [Observaciones]
      ,isnull(DV.Fecha_Sistema, '') as [Fecha Sistema]
      ,isnumeric(DV.Valor_Unidad) as [Valor Unidad]
      ,isnumeric(DV.IVA_Unidad) as [IVA Unidad]
      ,isnumeric(DV.Retencion_Unidad) as [Retencion Unidad]
      ,isnumeric(DV.Valor_Total) as [Valor Total]
      ,isnumeric(DV.IVA_Total) as [IVA Total]
      ,isnumeric(DV.SubTotal) as [SubTotal]
      ,isnumeric(DV.Retencion_Total) as [Retencion Total]
      ,isnull(DV.Notas, '') as [Notas]
	  ,isnull(I.Actvo, 0) as [Activo Inventario]
  FROM DetalleVenta_Remision DV
  right join Inventario I on I.FKDetalle_VentaRemision = DV.PKDetalleVenta_Remision 
  right join Ventas V on V.FKDetalleVenta_Remision = DV.PKDetalleVenta_Remision 
  right join Remisiones R on R.FKDetalle_Venta_Remision = DV.PKDetalleVenta_Remision 
  where I.Actvo = 1
END
GO
