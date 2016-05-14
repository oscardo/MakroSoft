USE [MakroSoftDB2]
GO

UPDATE [dbo].[Roles]
   SET [Rol] = <Rol, nchar(15),>
      ,[Activo] = <Activo, bit,>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

