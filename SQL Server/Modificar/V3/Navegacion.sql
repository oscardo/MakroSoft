-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizar 
FKRol = <FKRol, int,>
      ,Navegacion = <Navegacion, nvarchar(200),>
      ,Pagina = <Pagina, nchar(200),>
      ,EsPadre = <EsPadre, bit,>
      ,EsHijo = <EsHijo, bit,>
      ,Numero = <Numero, nchar(10),>
      ,Notas = <Notas, nchar(200),>
AS
BEGIN


UPDATE Navegacion
   SET FKRol = <FKRol, int,>
      ,Navegacion = <Navegacion, nvarchar(200),>
      ,Pagina = <Pagina, nchar(200),>
      ,EsPadre = <EsPadre, bit,>
      ,EsHijo = <EsHijo, bit,>
      ,Numero = <Numero, nchar(10),>
      ,Notas = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>

END

GO


