USE [MakroSoftDB2]
GO

INSERT INTO [dbo].[Mantenimiento]
           ([FKEquipo]
           ,[FKTecnico]
           ,[FKEstado]
           ,[Planilla_Mmto]
           ,[Fecha]
           ,[Fecha_Sistema]
           ,[Notas])
     VALUES
           (<FKEquipo, int,>
           ,<FKTecnico, int,>
           ,<FKEstado, int,>
           ,<Planilla_Mmto, nchar(50),>
           ,<Fecha, datetime,>
           ,<Fecha_Sistema, datetime,>
           ,<Notas, nchar(200),>)
GO


