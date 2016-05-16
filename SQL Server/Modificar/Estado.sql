-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizarEstado 
	   @Estado nchar(50)=''
      ,@Notas nchar(200)=''
	  ,@pkestado int
AS
BEGIN


UPDATE Estado
   SET Estado = @Estado -- ,nchar(50),>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE pkestado = @pkestado

END

GO


