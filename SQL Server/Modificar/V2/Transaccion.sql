-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizar 


AS
BEGIN


UPDATE Transaccion
   SET FKEquipo = <FKEquipo, int,>
      ,FKRemision = <FKRemision, int,>
      ,FKVentas = <FKVentas, int,>
      ,Notas = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>

END

GO


