USE [MakroSoftDB2]


INSERT INTO [dbo].[Cliente]
           ([FKDepartamento]
           ,[FKMunicipio]
           ,[NombreCliente]
           ,[Nit]
           ,[Telefono1]
           ,[Telefono2]
           ,[Celular]
           ,[Direccion]
           ,[NombreRepLegal]
           ,[Fecha]
           ,[Correo_Electronico]
           ,[PaginaWeb]
           ,[Activo]
           ,[Notas])
     VALUES
           (<FKDepartamento, nchar(10),>
           ,<FKMunicipio, nchar(10),>
           ,<NombreCliente, nchar(50),>
           ,<Nit, nchar(15),>
           ,<Telefono1, nchar(15),>
           ,<Telefono2, nchar(15),>
           ,<Celular, nchar(15),>
           ,<Direccion, nchar(50),>
           ,<NombreRepLegal, nchar(50),>
           ,<Fecha, datetime,>
           ,<Correo_Electronico, nchar(50),>
           ,<PaginaWeb, nchar(50),>
           ,<Activo, bit,>
           ,<Notas, nchar(200),>)



