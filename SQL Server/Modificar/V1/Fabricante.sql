USE [MakroSoftDB2]
GO

UPDATE [dbo].[Fabricante]
   SET [Fabricante] = <Fabricante, nchar(50),>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

