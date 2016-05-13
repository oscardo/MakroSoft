USE [MakroSoftDB2]


INSERT INTO [dbo].[Proveedor]
           ([FKDepartamento]
           ,[FKMunicipio]
           ,[NombreProveedor]
           ,[Nit]
           ,[Telefono1]
           ,[Telefono2]
           ,[Celular]
           ,[NombreContacto]
           ,[NombreContacto2]
           ,[Servicios]
           ,[CorreoElectronico]
           ,[Paginaweb]
           ,[Activo]
           ,[Notas])
     VALUES
           (<FKDepartamento, nchar(10),>
           ,<FKMunicipio, nchar(10),>
           ,<NombreProveedor, nchar(50),>
           ,<Nit, nchar(15),>
           ,<Telefono1, nchar(15),>
           ,<Telefono2, nchar(15),>
           ,<Celular, nchar(15),>
           ,<NombreContacto, nchar(50),>
           ,<NombreContacto2, nchar(50),>
           ,<Servicios, nchar(200),>
           ,<CorreoElectronico, nchar(50),>
           ,<Paginaweb, nchar(50),>
           ,<Activo, bit,>
           ,<Notas, nchar(200),>)



