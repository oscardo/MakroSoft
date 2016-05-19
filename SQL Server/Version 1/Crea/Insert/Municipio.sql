USE [MakroSoftDB2]
GO

INSERT INTO [dbo].[Municipio]
           ([PKMunicipio]
           ,[FKDepartamento]
           ,[NombreMunicipio]
           ,[Notas])
     VALUES
           (<PKMunicipio, nchar(10),>
           ,<FKDepartamento, nchar(10),>
           ,<NombreMunicipio, nchar(50),>
           ,<Notas, nchar(200),>)
GO


