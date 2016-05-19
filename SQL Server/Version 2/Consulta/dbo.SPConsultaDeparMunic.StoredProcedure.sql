USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaDeparMunic]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaDeparMunic]
			@PKMunicipio nchar(10)
           ,@FKDepartamento nchar(10)
           ,@NombreMunicipio nchar(50)

AS
BEGIN
	SET NOCOUNT ON;
	

	if exists (SELECT [PKMunicipio]
      ,[FKDepartamento]
      ,[NombreMunicipio]
      ,[Notas]
	FROM [dbo].[Municipio]
	where PKMunicipio = @PKMunicipio
	or NombreMunicipio = @NombreMunicipio)
		select 1
	else
		select 0

END

GO
