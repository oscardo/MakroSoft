SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Eliminar dentro de la base de datos
-- =============================================
CREATE PROCEDURE SPEliminarMantenimiento 
@PKMantenimiento int =  0
AS
BEGIN


DELETE FROM Mantenimiento
      WHERE PKMantenimiento = @PKMantenimiento

END
GO



