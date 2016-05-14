-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizar 
	   Fabricante = <Fabricante, nchar(50),>
      ,Notas = <Notas, nchar(200),>

AS
BEGIN


UPDATE Fabricante
   SET Fabricante = <Fabricante, nchar(50),>
      ,Notas = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>

END

GO


