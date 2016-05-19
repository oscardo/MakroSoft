USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPCrearCompras]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE [dbo].[SPCrearCompras]
			@FKProveedor int
           ,@FKDepartamento nchar(10)
           ,@FKMunicipio nchar(10)
		   ,@FKDetalleVenta_Remision int 
		   ,@FKTransaccion int 
		   ,@NombreCompra nchar(50)
           ,@Fecha_Compra datetime
           ,@Observaciones nchar(200)
           ,@Garantia nchar(50)
           ,@Exterdida_Garantia nchar(50)
           ,@Factura_Compra nchar(50)
           ,@Ruta_Fotografia nchar(256)
           ,@Cantidad int
           ,@Valor_Unidad numeric(18,2)
           ,@SubTotal numeric(18,2)
           ,@IVA numeric(18,2)
           ,@Total numeric(18,2)
           ,@Cantidad_Recibida int
           ,@Saldo numeric(18,2)
           ,@Descuento numeric(18,2)
           ,@Activo bit
           ,@Notas nchar(200)
AS
BEGIN



INSERT INTO Compras
           (FKProveedor
           ,FKDepartamento
           ,FKMunicipio
           ,FKTransaccion
		   ,NombreCompra
		   ,Fecha_Compra
           ,Observaciones
           ,Garantia
           ,Exterdida_Garantia
           ,Factura_Compra
           ,Ruta_Fotografia
           ,Cantidad
           ,Valor_Unidad
           ,SubTotal
           ,IVA
           ,Total
           ,Cantidad_Recibida
           ,Saldo
           ,Descuento
           ,Activo
           ,Notas)
     VALUES
           (@FKProveedor
           ,@FKDepartamento
           ,@FKMunicipio
           ,@FKTransaccion
		   ,@NombreCompra
		   ,@Fecha_Compra
           ,@Observaciones
           ,@Garantia
           ,@Exterdida_Garantia
           ,@Factura_Compra
           ,@Ruta_Fotografia
           ,@Cantidad
           ,@Valor_Unidad
           ,@SubTotal
           ,@IVA
           ,@Total
           ,@Cantidad_Recibida
           ,@Saldo
           ,@Descuento
           ,@Activo
           ,@Notas)

END

GO
