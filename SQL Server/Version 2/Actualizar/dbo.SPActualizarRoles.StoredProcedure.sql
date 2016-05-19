USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarRoles]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE [dbo].[SPActualizarRoles] 
	   @Rol nchar(15) =''
      ,@Activo bit =''
      ,@Notas nchar(200) =''
	  ,@pkRol int
AS
BEGIN


UPDATE Roles
   SET Rol = @Rol -- ,nchar(15),>
      ,Activo = @Activo -- ,bit,>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE pkRol = @pkRol

END


GO
