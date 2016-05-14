-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizar 
	   TipoDocumento = <TipoDocumento, nchar(20),>
      ,Notas = <Notas, nchar(200),>

AS
BEGIN


UPDATE TipoDocumento
   SET TipoDocumento = <TipoDocumento, nchar(20),>
      ,Notas = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>

END

GO


