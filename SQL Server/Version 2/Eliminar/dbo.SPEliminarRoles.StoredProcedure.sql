USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarRoles]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Eliminar dentro de la base de datos
-- =============================================
CREATE PROCEDURE [dbo].[SPEliminarRoles] 
@PKRol int = 0,
@Activo bit = 0
AS
BEGIN

if @activo = 1
	  DELETE FROM Roles
      WHERE PKRol = @PKRol
	  and Activo = @Activo

END

GO
