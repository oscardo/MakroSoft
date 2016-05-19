-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizarFabricante 
	   @Fabricante nchar(50) = ''
      ,@Notas nchar(200) = ''
	  ,@pkFabricante int
AS
BEGIN


UPDATE Fabricante
   SET Fabricante = @Fabricante -- ,nchar(50),>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE pkFabricante = @pkFabricante 

END

GO


