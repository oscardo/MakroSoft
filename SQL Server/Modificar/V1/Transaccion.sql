USE [MakroSoftDB2]
GO

UPDATE [dbo].[Transaccion]
   SET [FKEquipo] = <FKEquipo, int,>
      ,[FKRemision] = <FKRemision, int,>
      ,[FKVentas] = <FKVentas, int,>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

