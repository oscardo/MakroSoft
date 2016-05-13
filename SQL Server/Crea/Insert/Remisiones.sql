USE [MakroSoftDB2]


INSERT INTO [dbo].[Remisiones]
           ([FKCliente]
           ,[FKProveedor]
           ,[FKDepartamento]
           ,[FKMunicipio]
           ,[FKDetalle_Venta_Remision]
           ,[Fecha_Inicio]
           ,[Fecha_Fin]
           ,[Fecha_Sistema]
           ,[Valor_Unidad]
           ,[IVA_Unidad]
           ,[Valor_Total]
           ,[Subtotal]
           ,[IVA]
           ,[Total]
           ,[FVenta]
           ,[Cantidad]
           ,[Diferencia]
           ,[Diferencia_Precio]
           ,[Notas])
     VALUES
           (<FKCliente, int,>
           ,<FKProveedor, int,>
           ,<FKDepartamento, nchar(10),>
           ,<FKMunicipio, nchar(10),>
           ,<FKDetalle_Venta_Remision, int,>
           ,<Fecha_Inicio, datetime,>
           ,<Fecha_Fin, datetime,>
           ,<Fecha_Sistema, datetime,>
           ,<Valor_Unidad, numeric(18,0),>
           ,<IVA_Unidad, numeric(18,0),>
           ,<Valor_Total, numeric(18,0),>
           ,<Subtotal, numeric(18,0),>
           ,<IVA, numeric(18,0),>
           ,<Total, numeric(18,0),>
           ,<FVenta, nchar(50),>
           ,<Cantidad, int,>
           ,<Diferencia, numeric(18,0),>
           ,<Diferencia_Precio, numeric(18,0),>
           ,<Notas, nchar(200),>)



