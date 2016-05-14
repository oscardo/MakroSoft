USE [MakroSoftDB2]
GO

UPDATE [dbo].[Estado]
   SET [Estado] = <Estado, nchar(50),>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

