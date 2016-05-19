USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[spObtenerCompra]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 19/05/2016
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[spObtenerCompra]
	
AS
BEGIN
	--SET NOCOUNT ON;
	declare @Final int 
	SELECT top 1 @Final = PKCompras from Compras
	order by PKCompras desc
	select @Final

END

GO
