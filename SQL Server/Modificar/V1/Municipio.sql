USE [MakroSoftDB2]
GO

UPDATE [dbo].[Municipio]
   SET [PKMunicipio] = <PKMunicipio, nchar(10),>
      ,[FKDepartamento] = <FKDepartamento, nchar(10),>
      ,[NombreMunicipio] = <NombreMunicipio, nchar(50),>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

