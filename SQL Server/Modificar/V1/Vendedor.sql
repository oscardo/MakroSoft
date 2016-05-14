USE [MakroSoftDB2]
GO

UPDATE [dbo].[Vendedor]
   SET [FKDepartamento] = <FKDepartamento, nchar(10),>
      ,[FKMunicipio] = <FKMunicipio, nchar(10),>
      ,[FKTipoDocumento] = <FKTipoDocumento, int,>
      ,[NombrePersona] = <NombrePersona, nchar(50),>
      ,[Direccion] = <Direccion, nchar(50),>
      ,[Telefono1] = <Telefono1, nchar(15),>
      ,[Telefono2] = <Telefono2, nchar(15),>
      ,[Celular] = <Celular, nchar(15),>
      ,[Fotografia] = <Fotografia, nchar(256),>
      ,[Activo] = <Activo, bit,>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

