USE [MakroSoftDB2]
GO

UPDATE [dbo].[Departamento]
   SET [PKDepartamento] = <PKDepartamento, nchar(10),>
      ,[NombreDepartamento] = <NombreDepartamento, nchar(50),>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

