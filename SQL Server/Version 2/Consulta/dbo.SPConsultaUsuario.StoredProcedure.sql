USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaUsuario]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaUsuario]
	@NombreUsuario nchar(50),
	@Password nchar(15)
AS
BEGIN
  if exists (SELECT *
  FROM [dbo].[Usuario]
  where NombreUsuario = @NombreUsuario and Password = @Password)
   select 1
  else
	select 0
END

GO
