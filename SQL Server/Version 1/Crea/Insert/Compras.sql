USE [MakroSoftDB2]


INSERT INTO [dbo].[Compras]
           ([FKProveedor]
           ,[FKDepartamento]
           ,[FKMunicipio]
           ,[Fecha_Compra]
           ,[Observaciones]
           ,[Garantia]
           ,[Exterdida_Garantia]
           ,[Factura_Compra]
           ,[Ruta_Fotografia]
           ,[Cantidad]
           ,[Valor_Unidad]
           ,[SubTotal]
           ,[IVA]
           ,[Total]
           ,[Cantidad_Recibida]
           ,[Saldo]
           ,[Descuento]
           ,[Activo]
           ,[Notas])
     VALUES
           (<FKProveedor, int,>
           ,<FKDepartamento, nchar(10),>
           ,<FKMunicipio, nchar(10),>
           ,<Fecha_Compra, datetime,>
           ,<Observaciones, nchar(200),>
           ,<Garantia, nchar(50),>
           ,<Exterdida_Garantia, nchar(50),>
           ,<Factura_Compra, nchar(50),>
           ,<Ruta_Fotografia, nchar(256),>
           ,<Cantidad, int,>
           ,<Valor_Unidad, numeric(18,0),>
           ,<SubTotal, numeric(18,0),>
           ,<IVA, numeric(18,0),>
           ,<Total, numeric(18,0),>
           ,<Cantidad_Recibida, int,>
           ,<Saldo, numeric(18,0),>
           ,<Descuento, numeric(18,0),>
           ,<Activo, bit,>
           ,<Notas, nchar(200),>)



