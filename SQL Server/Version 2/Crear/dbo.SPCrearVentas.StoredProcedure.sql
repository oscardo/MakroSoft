USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPCrearVentas]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE [dbo].[SPCrearVentas]
			@FKVendedor int
           ,@FKTipoDocumento int
           ,@FKDetalleVenta_Remision int
           ,@NombreReferencia nchar(50)
           ,@Nit nchar(50)
           ,@Cedula nchar(15)
           ,@Telefono1 nchar(15)
           ,@Telefono2 nchar(15)
           ,@Celular nchar(15)
		   ,@notas nchar(200)
AS
BEGIN

INSERT INTO Ventas
           (FKVendedor
           ,FKTipoDocumento
           ,FKDetalleVenta_Remision
           ,NombreReferencia
           ,Nit
           ,Cedula
           ,Telefono1
           ,Telefono2
           ,Celular
		   ,notas)
     VALUES
           (@FKVendedor
           ,@FKTipoDocumento
           ,@FKDetalleVenta_Remision
           ,@NombreReferencia
           ,@Nit
           ,@Cedula
           ,@Telefono1
           ,@Telefono2
           ,@Celular
		   ,@notas)



END

GO
