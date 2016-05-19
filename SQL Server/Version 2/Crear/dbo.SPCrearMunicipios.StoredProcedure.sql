USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPCrearMunicipios]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPCrearMunicipios]
			@PKMunicipio nchar(10)
           ,@FKDepartamento nchar(10)
           ,@NombreMunicipio nchar(50)
           ,@Notas nchar(200)
AS
BEGIN
	SET NOCOUNT ON;
	

INSERT INTO [dbo].[Municipio]
           ([PKMunicipio]
           ,[FKDepartamento]
           ,[NombreMunicipio]
           ,[Notas])
     VALUES
           (@PKMunicipio
           ,@FKDepartamento
           ,@NombreMunicipio
           ,@Notas)




END

GO
