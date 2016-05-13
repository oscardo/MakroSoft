USE [MakroSoftDB2]


INSERT INTO [dbo].[Usuario]
           ([FKDepartamento]
           ,[FKMunicipio]
           ,[FKRol]
           ,[NombreUsuario]
           ,[Password]
           ,[Telefono1]
           ,[Celular]
           ,[Ubicacion]
           ,[Activo]
           ,[CorreoElectronico]
           ,[Notas])
     VALUES
           (<FKDepartamento, nchar(10),>
           ,<FKMunicipio, nchar(10),>
           ,<FKRol, int,>
           ,<NombreUsuario, nchar(20),>
           ,<Password, nchar(15),>
           ,<Telefono1, nchar(15),>
           ,<Celular, nchar(15),>
           ,<Ubicacion, nchar(50),>
           ,<Activo, bit,>
           ,<CorreoElectronico, nchar(50),>
           ,<Notas, nchar(200),>)



