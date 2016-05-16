-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizarRoles 
	   @Rol nchar(15) =''
      ,@Activo bit =''
      ,@Notas nchar(200) =''
	  ,@pkRol int
AS
BEGIN


UPDATE Roles
   SET Rol = @Rol -- ,nchar(15),>
      ,Activo = @Activo -- ,bit,>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE pkRol = @pkRol

END

GO


