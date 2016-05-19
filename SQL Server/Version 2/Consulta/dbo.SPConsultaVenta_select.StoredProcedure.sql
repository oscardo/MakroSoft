USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaVenta_select]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaVenta_select]
	
AS
BEGIN

SELECT isnull(V.PKVentas, '') as [Nro Ventas]
      ,isnull(VV.NombrePersona, '') as [Nombre Persona]
      ,isnull(T.TipoDocumento, '') as [Tipo Documento]
      ,isnull(DV.Descripcion, '') as [Descripcion]
      ,isnull(V.NombreReferencia, '') as [Nombre Referencia]
      ,isnull(V.Nit, '') as [Nit]
      ,isnull(V.Cedula, '') as [Cedula]
      ,isnull(V.Telefono1, '') as [Telefono 1]
      ,isnull(V.Telefono2, '') as [Telefono 2]
      ,isnull(V.Celular, '') as [Celular]
	  ,isnull(V.Notas, '') as Notas 
  FROM Ventas V
  left join Vendedor VV on VV.PKVendedor = V.FKVendedor
  left join TipoDocumento T on T.PKTipoDocumento = V.FKTipoDocumento
  left join DetalleVenta_Remision DV on DV.PKDetalleVenta_Remision = V.FKDetalleVenta_Remision

END
GO
