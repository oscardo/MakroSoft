USE [MakroSoftDB2]
GO

UPDATE [dbo].[Tipo]
   SET [Nombre] = <Nombre, nchar(50),>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

