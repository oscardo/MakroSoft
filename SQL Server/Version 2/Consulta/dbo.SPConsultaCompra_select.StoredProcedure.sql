USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaCompra_select]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaCompra_select]
	
AS
BEGIN

SELECT isNumeric([PKCompras]) as [Compras] 
      ,isnull(P.NombreProveedor, '') as [Nombre Proveedor]
      ,isnull(D.NombreDepartamento, '') [Nombre Departamento]
      ,isnull(M.NombreMunicipio, '') [Nombre Municipio] 
	  ,isnull(C.NombreCompra, '') [Nombre Compra] 
      ,isnull(C.Fecha_Compra, '')  as [Fecha Compra]
      ,isnull(C.Observaciones, '')  as Observaciones
      ,isnull(C.Garantia, '') as Garantia
      ,isnull(C.Exterdida_Garantia, '') as [Exterdida Garantia] 
      ,isnull(C.Factura_Compra, '') as [Factura Compra]
      ,isnull(C.Ruta_Fotografia, '')  as [Ruta Fotografia]
      ,isnumeric(C.Cantidad) as Cantidad
      ,isnumeric(C.Valor_Unidad) as [Valor Unidad] 
      ,isnumeric(C.SubTotal) as SubTotal 
      ,isnumeric(C.IVA) as IVA
      ,isnumeric(C.Total) as Total
      ,isnumeric(C.Cantidad_Recibida) as [Cantidad Recibida] 
      ,isnumeric(C.Saldo) as Saldo
      ,isnumeric(C.Descuento) as Descuento
      ,isnull(C.Activo, '') as Activo
      ,isnull(C.Notas, '') as Notas 
  FROM Compras C
  left join Departamento D on D.PKDepartamento = C.FKDepartamento
  left join Municipio M on M.PKMunicipio = C.FKMunicipio
  left join Proveedor P on P.PKProveedor = C.FKProveedor
END

GO
