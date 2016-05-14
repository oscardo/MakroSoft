-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizar 
	   Nombre = <Nombre, nchar(50),>
      ,Activo = <Activo, bit,>
      ,Notas = <Notas, nchar(200),>

AS
BEGIN


UPDATE Tecnico
   SET Nombre = <Nombre, nchar(50),>
      ,Activo = <Activo, bit,>
      ,Notas = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>

END

GO


