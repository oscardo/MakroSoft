USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarTecnico]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Eliminar dentro de la base de datos
-- =============================================
CREATE PROCEDURE [dbo].[SPEliminarTecnico] 
@PKTecnico int = 0,
@activo bit = 0
AS
BEGIN

if @activo = 1
DELETE FROM Tecnico
      WHERE PKTecnico = @PKTecnico
	  and activo = @activo

END

GO
