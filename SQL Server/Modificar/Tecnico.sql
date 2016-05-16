-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizarTecnico 
	   @Nombre nchar(50) = ''
      ,@Activo bit = 0
      ,@Notas nchar(200) = ''
      ,@PKTecnico int
AS
BEGIN


UPDATE Tecnico
   SET Nombre = @Nombre -- ,nchar(50),>
      ,Activo = @Activo -- ,bit,>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE PKTecnico = @PKTecnico

END

GO


