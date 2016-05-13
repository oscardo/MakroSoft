USE [MakroSoftDB2]
GO

INSERT INTO [dbo].[Inventario]
           ([FKTransaccion]
           ,[FKProveedor]
           ,[FKBodega]
           ,[FKDetalle_VentaRemision]
           ,[FKEquipo]
           ,[Factura_Compra]
           ,[Ruta_Fotografia]
           ,[Fecha_Factura]
           ,[Fecha_Sistema]
           ,[Cantidad]
           ,[Valor_Unidad]
           ,[Subtotal]
           ,[IVA]
           ,[Total]
           ,[Observaciones]
           ,[Cantidad_Recibida]
           ,[Fecha_Mmto]
           ,[Planilla_Mmto]
           ,[Actvo]
           ,[Notas])
     VALUES
           (<FKTransaccion, int,>
           ,<FKProveedor, int,>
           ,<FKBodega, int,>
           ,<FKDetalle_VentaRemision, int,>
           ,<FKEquipo, int,>
           ,<Factura_Compra, nchar(50),>
           ,<Ruta_Fotografia, nchar(256),>
           ,<Fecha_Factura, datetime,>
           ,<Fecha_Sistema, datetime,>
           ,<Cantidad, int,>
           ,<Valor_Unidad, numeric(18,0),>
           ,<Subtotal, numeric(18,0),>
           ,<IVA, numeric(18,0),>
           ,<Total, numeric(18,0),>
           ,<Observaciones, nchar(200),>
           ,<Cantidad_Recibida, int,>
           ,<Fecha_Mmto, datetime,>
           ,<Planilla_Mmto, nchar(10),>
           ,<Actvo, bit,>
           ,<Notas, nchar(200),>)
GO


