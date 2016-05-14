SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Eliminar dentro de la base de datos
-- =============================================
CREATE PROCEDURE SPEliminarMunicipio 
@PKMunicipio nchar(10) = '',
@NombreMunicipio nchar(50) = ''
AS
BEGIN


DELETE FROM Municipio
      WHERE PKMunicipio = @PKMunicipio
	  and NombreMunicipio = @NombreMunicipio

END
GO



