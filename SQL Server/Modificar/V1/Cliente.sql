USE [MakroSoftDB2]
GO

UPDATE [dbo].[Cliente]
   SET [FKDepartamento] = <FKDepartamento, nchar(10),>
      ,[FKMunicipio] = <FKMunicipio, nchar(10),>
      ,[NombreCliente] = <NombreCliente, nchar(50),>
      ,[Nit] = <Nit, nchar(15),>
      ,[Telefono1] = <Telefono1, nchar(15),>
      ,[Telefono2] = <Telefono2, nchar(15),>
      ,[Celular] = <Celular, nchar(15),>
      ,[Direccion] = <Direccion, nchar(50),>
      ,[NombreRepLegal] = <NombreRepLegal, nchar(50),>
      ,[Fecha] = <Fecha, datetime,>
      ,[Correo_Electronico] = <Correo_Electronico, nchar(50),>
      ,[PaginaWeb] = <PaginaWeb, nchar(50),>
      ,[Activo] = <Activo, bit,>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

