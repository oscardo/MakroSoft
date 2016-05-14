USE [MakroSoftDB2]
GO

UPDATE [dbo].[Proveedor]
   SET [FKDepartamento] = <FKDepartamento, nchar(10),>
      ,[FKMunicipio] = <FKMunicipio, nchar(10),>
      ,[NombreProveedor] = <NombreProveedor, nchar(50),>
      ,[Nit] = <Nit, nchar(15),>
      ,[Telefono1] = <Telefono1, nchar(15),>
      ,[Telefono2] = <Telefono2, nchar(15),>
      ,[Celular] = <Celular, nchar(15),>
      ,[NombreContacto] = <NombreContacto, nchar(50),>
      ,[NombreContacto2] = <NombreContacto2, nchar(50),>
      ,[Servicios] = <Servicios, nchar(200),>
      ,[CorreoElectronico] = <CorreoElectronico, nchar(50),>
      ,[Paginaweb] = <Paginaweb, nchar(50),>
      ,[Activo] = <Activo, bit,>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

