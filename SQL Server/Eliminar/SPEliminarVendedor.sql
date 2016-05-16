USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPEliminar]    Script Date: 16/05/2016 8:52:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Eliminar dentro de la base de datos
-- =============================================
create PROCEDURE SPEliminarVendedor 
	@PKVendedor int = 0
AS
BEGIN

DELETE FROM Vendedor
      WHERE PKVendedor = @PKVendedor

END
