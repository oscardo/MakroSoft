USE [MakroSoftDB2]
GO

UPDATE [dbo].[Bodega]
   SET [FKDepartamento] = <FKDepartamento, nchar(10),>
      ,[FKMunicipio] = <FKMunicipio, nchar(10),>
      ,[NombreBodega] = <NombreBodega, nchar(50),>
      ,[Direccion] = <Direccion, nchar(50),>
      ,[Responsable1] = <Responsable1, nchar(50),>
      ,[Responsable2] = <Responsable2, nchar(50),>
      ,[Telefono1] = <Telefono1, nchar(15),>
      ,[Telefono2] = <Telefono2, nchar(15),>
      ,[Celular] = <Celular, nchar(15),>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

