USE [MakroSoftDB2]


INSERT INTO [dbo].[Equipo]
           ([FKCompras]
           ,[FKTipo]
           ,[FKFabricante]
           ,[FKProcesador]
           ,[FKCliente]
           ,[Sistema_Operativo]
           ,[Descripcion]
           ,[Serial]
           ,[Board]
           ,[RAM]
           ,[DiscoDuro]
           ,[Mouse]
           ,[Clave_Windows]
           ,[Clave_Office]
           ,[Clave_Antivirus]
           ,[Clave_Otros]
           ,[Clave_Otros2]
           ,[Clave_Otros3]
           ,[Cantidad]
           ,[Activo]
           ,[Notas])
     VALUES
           (<FKCompras, int,>
           ,<FKTipo, int,>
           ,<FKFabricante, int,>
           ,<FKProcesador, int,>
           ,<FKCliente, int,>
           ,<Sistema_Operativo, nchar(50),>
           ,<Descripcion, nchar(50),>
           ,<Serial, nchar(50),>
           ,<Board, nchar(50),>
           ,<RAM, nchar(10),>
           ,<DiscoDuro, nchar(10),>
           ,<Mouse, nchar(10),>
           ,<Clave_Windows, nchar(50),>
           ,<Clave_Office, nchar(50),>
           ,<Clave_Antivirus, nchar(50),>
           ,<Clave_Otros, nchar(50),>
           ,<Clave_Otros2, nchar(50),>
           ,<Clave_Otros3, nchar(30),>
           ,<Cantidad, int,>
           ,<Activo, bit,>
           ,<Notas, nchar(200),>)



