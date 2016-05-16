-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizarTransaccion 
	   @FKEquipo int = 0
      ,@FKRemision int = 0
      ,@FKVentas int = 0
      ,@Notas nchar(200) = ''
	  ,@PKTransaccion int
AS
BEGIN


UPDATE Transaccion
   SET FKEquipo = @FKEquipo -- ,int,>
      ,FKRemision = @FKRemision -- ,int,>
      ,FKVentas = @FKVentas -- ,int,>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE PKTransaccion = @PKTransaccion

END

GO


