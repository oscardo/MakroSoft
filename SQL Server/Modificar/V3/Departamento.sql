-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizar 
	   PKDepartamento = <PKDepartamento, nchar(10),>
      ,NombreDepartamento = <NombreDepartamento, nchar(50),>
      ,Notas = <Notas, nchar(200),>

AS
BEGIN


UPDATE Departamento
   SET PKDepartamento = <PKDepartamento, nchar(10),>
      ,NombreDepartamento = <NombreDepartamento, nchar(50),>
      ,Notas = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>

END

GO


