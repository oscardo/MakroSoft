USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaUsuario_Valida]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SPConsultaUsuario_Valida]
	@NombreUsuario nchar(50)
AS
BEGIN
  if exists (SELECT *
  FROM [dbo].[Usuario]
  where NombreUsuario = @NombreUsuario)
   select 1
  else
	select 0
END

GO
