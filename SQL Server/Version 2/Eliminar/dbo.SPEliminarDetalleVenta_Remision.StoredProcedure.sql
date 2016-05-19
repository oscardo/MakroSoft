USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarDetalleVenta_Remision]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Eliminar dentro de la base de datos
-- =============================================
CREATE PROCEDURE [dbo].[SPEliminarDetalleVenta_Remision] 
@PKDetalleVenta_Remision int = 0
AS
BEGIN

DELETE FROM DetalleVenta_Remision
      WHERE PKDetalleVenta_Remision = @PKDetalleVenta_Remision

END

GO
