USE [MakroSoftDB2]
GO

UPDATE [dbo].[Ventas]
   SET [FKVendedor] = <FKVendedor, int,>
      ,[FKTipoDocumento] = <FKTipoDocumento, int,>
      ,[FKDetalleVenta_Remision] = <FKDetalleVenta_Remision, int,>
      ,[NombreReferencia] = <NombreReferencia, nchar(50),>
      ,[Nit] = <Nit, nchar(50),>
      ,[Cedula] = <Cedula, nchar(15),>
      ,[Telefono1] = <Telefono1, nchar(15),>
      ,[Telefono2] = <Telefono2, nchar(15),>
      ,[Celular] = <Celular, nchar(15),>
 WHERE <Condiciones de búsqueda,,>
GO

