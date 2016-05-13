USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaTransacciones]    Script Date: 12/05/2016 23:47:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaTransaccion_select]
	
AS
BEGIN

SELECT isnull(PKTransaccion, '') as [Nro Transacción]
      ,isnull(E.Descripcion, '') as Descripcion
      ,isnull(R.Notas, '') as [Notas de la Remision]
      ,ISNULL(v.NombreReferencia, '') as [Nombre Referencia]
      ,T.Notas
  FROM Transaccion T
  left join Equipo E on E.PKEquipo = T.FKEquipo
  left join Remisiones R on R.PKRemisiones = T.FKRemision
  left join Ventas V on V.PKVentas = T.FKVentas


END