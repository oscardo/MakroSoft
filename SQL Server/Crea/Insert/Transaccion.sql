USE [MakroSoftDB2]


INSERT INTO [dbo].[Transaccion]
           ([FKEquipo]
           ,[FKRemision]
           ,[FKVentas]
           ,[Notas])
     VALUES
           (<FKEquipo, int,>
           ,<FKRemision, int,>
           ,<FKVentas, int,>
           ,<Notas, nchar(200),>)



