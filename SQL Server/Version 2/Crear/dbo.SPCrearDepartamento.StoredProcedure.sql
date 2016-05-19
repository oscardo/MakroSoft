USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPCrearDepartamento]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPCrearDepartamento]
	-- Add the parameters for the stored procedure here
			@PKDepartamento nchar(10)
           ,@NombreDepartamento nchar(50)
           ,@Notas nchar(200)
AS
BEGIN
	SET NOCOUNT ON;

INSERT INTO [dbo].[Departamento]
           ([PKDepartamento]
           ,[NombreDepartamento]
           ,[Notas])
     VALUES
           (@PKDepartamento
           ,@NombreDepartamento
           ,@Notas)



END

GO
