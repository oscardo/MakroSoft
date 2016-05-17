USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaInventarios]    Script Date: 12/05/2016 23:47:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaInventario_valida]
	
AS
BEGIN

SELECT isnull(I.PKInventario, '') as [Nro. Inventario]
      ,isnull(P.NombreProveedor, '') as [Nombre Proveedor]
      ,isnull(B.NombreBodega, '') as [Nombre Bodega]
      ,isnull(DV.Contactar, '') as [Nombre Quien Reporta]
      ,isnull(E.Descripcion, '') as [Descripción]
      ,isnull(I.Factura_Compra, '') as [Factura Compra]
      ,isnull(I.Ruta_Fotografia, '') as [Ruta Fotografia]
      ,isnull(I.Fecha_Factura, '') as [Fecha Factura]
      ,isnull(I.Fecha_Sistema, '') as [Fecha Sistema]
      ,isnumeric(I.Cantidad) as [Cantidad]
      ,isnumeric(I.Valor_Unidad) as [Valor Unidad]
      ,isnumeric(I.Subtotal) as [Subtotal]
      ,isnumeric(I.IVA) as [IVA]
      ,isnumeric(I.Total) as [Total]
      ,isnull(I.Observaciones, '') as [Observaciones]
      ,isnumeric(I.Cantidad_Recibida) as [Cantidad Recibida]
      ,isnull(I.Fecha_Mmto, '') as [Fecha Mmto]
      ,isnull(I.Planilla_Mmto, '') as [Planilla Mmto]
      ,isnull(I.Actvo, '') as [Activo]
      ,isnull(I.Notas, '') as [Notas Operación]
	  ,isnull(T.Notas, '') as [Notas Transacción]
  FROM Inventario I
  left join Transaccion T on T.PKTransaccion = I.FKTransaccion
  left join Proveedor P On P.PKProveedor = I.FKProveedor
  left join Bodega B on B.PKBodega = I.FKBodega
  left join DetalleVenta_Remision DV on DV.PKDetalleVenta_Remision= I.FKDetalle_VentaRemision
  Left join Equipo E on E.PKEquipo = I.FKEquipo

END