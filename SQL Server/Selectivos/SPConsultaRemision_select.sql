USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaRemisiones]    Script Date: 12/05/2016 23:47:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaRemision_select]
	
AS
BEGIN

  SELECT isnull(R.PKRemisiones, '') as [Nro Remision]
      ,isnull(C.NombreCliente, '') as [Nombre Cliente]
      ,isnull(P.NombreProveedor, '') as [Nombre Proveedor]
      ,isnull(D.NombreDepartamento, '') as [Nombre Departamento]
      ,isnull(M.NombreMunicipio, '') as [Nombre Municipio]
      ,isnull(DV.Descripcion, '') as [Descripcion]
      ,isnull(R.Fecha_Inicio, '') as [Fecha Inicio]
      ,isnull(R.Fecha_Fin, '') as [Fecha Fin]
      ,isnull(R.Fecha_Sistema, '') as [Fecha Sistema]
      ,isnumeric(R.Valor_Unidad) as [Valor Unidad]
      ,isnumeric(R.IVA_Unidad) as [IVA Unidad]
      ,isnumeric(R.Valor_Total) as [Valor Total]
      ,isnumeric(R.Subtotal) as [Subtotal]
      ,isnumeric(R.IVA) as [IVA]
      ,isnumeric(R.Total) as [Total]
      ,isnumeric(R.FVenta) as [Venta]
      ,isnumeric(R.Cantidad) as [Cantidad]
      ,isnumeric(R.Diferencia) as [Diferencia]
      ,isnumeric(R.Diferencia_Precio) as [Diferencia Precio]
      ,isnull(R.Notas, '') as [Notas]
  FROM Remisiones R
  left join Departamento D on D.PKDepartamento = R.FKDepartamento
  left join Municipio M on M.PKMunicipio = R.FKMunicipio
  left join Cliente C on C.PKCliente = R.FKCliente
  left join Proveedor P on P.PKProveedor = R.FKProveedor
  left join DetalleVenta_Remision DV on DV.PKDetalleVenta_Remision = R.FKDetalle_Venta_Remision

END