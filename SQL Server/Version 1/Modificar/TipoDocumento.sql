-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizarTipoDocumento 
	   @TipoDocumento nchar(20) = ''
      ,@Notas nchar(200) = ''
	  ,@PKTipoDocumento int
AS
BEGIN

UPDATE TipoDocumento
   SET TipoDocumento = @TipoDocumento -- ,nchar(20),>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE PKTipoDocumento = @PKTipoDocumento

END

GO


