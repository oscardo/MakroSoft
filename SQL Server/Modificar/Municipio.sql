-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizarMunicipio 
	   @PKMunicipio nchar(10)=''
      ,@FKDepartamento nchar(10)=''
      ,@NombreMunicipio nchar(50)=''
      ,@Notas nchar(200) =''
AS
BEGIN

UPDATE Municipio
   SET PKMunicipio = @PKMunicipio-- ,nchar(10),>
      ,FKDepartamento = @FKDepartamento-- ,nchar(10),>
      ,NombreMunicipio = @NombreMunicipio-- ,nchar(50),>
      ,Notas = @Notas-- ,nchar(200),>
 WHERE PKMunicipio = @PKMunicipio

END

GO


