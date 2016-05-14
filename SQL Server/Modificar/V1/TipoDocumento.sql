USE [MakroSoftDB2]
GO

UPDATE [dbo].[TipoDocumento]
   SET [TipoDocumento] = <TipoDocumento, nchar(20),>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

