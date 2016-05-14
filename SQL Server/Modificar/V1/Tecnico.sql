USE [MakroSoftDB2]
GO

UPDATE [dbo].[Tecnico]
   SET [Nombre] = <Nombre, nchar(50),>
      ,[Activo] = <Activo, bit,>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

