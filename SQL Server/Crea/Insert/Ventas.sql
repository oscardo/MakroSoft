USE [MakroSoftDB2]


INSERT INTO [dbo].[Ventas]
           ([FKVendedor]
           ,[FKTipoDocumento]
           ,[FKDetalleVenta_Remision]
           ,[NombreReferencia]
           ,[Nit]
           ,[Cedula]
           ,[Telefono1]
           ,[Telefono2]
           ,[Celular])
     VALUES
           (<FKVendedor, int,>
           ,<FKTipoDocumento, int,>
           ,<FKDetalleVenta_Remision, int,>
           ,<NombreReferencia, nchar(50),>
           ,<Nit, nchar(50),>
           ,<Cedula, nchar(15),>
           ,<Telefono1, nchar(15),>
           ,<Telefono2, nchar(15),>
           ,<Celular, nchar(15),>)



