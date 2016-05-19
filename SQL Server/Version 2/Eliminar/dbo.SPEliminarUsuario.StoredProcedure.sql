USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarUsuario]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Eliminar dentro de la base de datos
-- =============================================
CREATE PROCEDURE [dbo].[SPEliminarUsuario] 
@PKUsuario int = 0,
@NombreUsuario nchar(50) = '',
@activo bit = false
AS
BEGIN

if @activo = 1  
	  DELETE FROM Usuario
      WHERE PKUsuario = @PKUsuario
	  and NombreUsuario = @NombreUsuario
	  and activo = @activo
	   
END

GO
