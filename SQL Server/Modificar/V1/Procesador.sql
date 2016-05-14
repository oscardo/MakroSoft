USE [MakroSoftDB2]
GO

UPDATE [dbo].[Procesador]
   SET [NombreProcesador] = <NombreProcesador, nchar(50),>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

