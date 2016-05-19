USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[spObtenerDetalleVenta_Remision]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 18/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spObtenerDetalleVenta_Remision]
	
AS
BEGIN
	--SET NOCOUNT ON;
	declare @Final int 
	SELECT top 1 @Final = PKDetalleVenta_Remision from DetalleVenta_Remision
	order by PKDetalleVenta_Remision desc
	select @Final

END

GO
