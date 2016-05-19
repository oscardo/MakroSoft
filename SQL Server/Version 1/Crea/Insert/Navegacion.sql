USE [MakroSoftDB2]


INSERT INTO [dbo].[Navegacion]
           ([FKRol]
           ,[Navegacion]
           ,[Pagina]
           ,[EsPadre]
           ,[EsHijo]
           ,[Numero]
           ,[Notas])
     VALUES
           (<FKRol, int,>
           ,<Navegacion, nvarchar(200),>
           ,<Pagina, nchar(200),>
           ,<EsPadre, bit,>
           ,<EsHijo, bit,>
           ,<Numero, nchar(10),>
           ,<Notas, nchar(200),>)



