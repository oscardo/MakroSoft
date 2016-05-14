USE [MakroSoftDB2]
GO

UPDATE [dbo].[Navegacion]
   SET [FKRol] = <FKRol, int,>
      ,[Navegacion] = <Navegacion, nvarchar(200),>
      ,[Pagina] = <Pagina, nchar(200),>
      ,[EsPadre] = <EsPadre, bit,>
      ,[EsHijo] = <EsHijo, bit,>
      ,[Numero] = <Numero, nchar(10),>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

