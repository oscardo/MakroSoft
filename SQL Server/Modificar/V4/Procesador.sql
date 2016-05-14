-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizar 
		NombreProcesador = <NombreProcesador, nchar(50),>
      ,Notas = <Notas, nchar(200),>

AS
BEGIN


UPDATE Procesador
   SET NombreProcesador = <NombreProcesador, nchar(50),>
      ,Notas = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>

END

GO


