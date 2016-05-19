-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizarProcesador 
	   @NombreProcesador nchar(50) = ''
      ,@Notas nchar(200) = ''
	  ,@PKProcesador int
AS
BEGIN

UPDATE Procesador
   SET NombreProcesador = @NombreProcesador -- nchar(50) -->
       ,Notas = @Notas -- nchar(200) -->
 WHERE PKProcesador = @PKProcesador
 
END

GO


