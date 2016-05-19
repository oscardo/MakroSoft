USE [MakroSoftDB2]


INSERT INTO [dbo].[Bodega]
           ([FKDepartamento]
           ,[FKMunicipio]
           ,[NombreBodega]
           ,[Direccion]
           ,[Responsable1]
           ,[Responsable2]
           ,[Telefono1]
           ,[Telefono2]
           ,[Celular]
           ,[Notas])
     VALUES
           (<FKDepartamento, nchar(10),>
           ,<FKMunicipio, nchar(10),>
           ,<NombreBodega, nchar(50),>
           ,<Direccion, nchar(50),>
           ,<Responsable1, nchar(50),>
           ,<Responsable2, nchar(50),>
           ,<Telefono1, nchar(15),>
           ,<Telefono2, nchar(15),>
           ,<Celular, nchar(15),>
           ,<Notas, nchar(200),>)



