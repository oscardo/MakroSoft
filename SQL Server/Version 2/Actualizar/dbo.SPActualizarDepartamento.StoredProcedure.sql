USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarDepartamento]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE [dbo].[SPActualizarDepartamento] 
	   @PKDepartamento  nchar(10) = ''
      ,@NombreDepartamento  nchar(50) = ''
      ,@Notas nchar(200) = ''
AS
BEGIN


UPDATE Departamento
   SET PKDepartamento = @PKDepartamento -- ,nchar(10),>
      ,NombreDepartamento = @NombreDepartamento -- ,nchar(50),>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE PKDepartamento = @PKDepartamento

END


GO
