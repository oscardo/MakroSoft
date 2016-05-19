USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarCompras]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE [dbo].[SPActualizarCompras] 
	   @FKProveedor int = 0
      ,@FKDepartamento nchar(10) = ''
      ,@FKMunicipio nchar(10) = ''
	  ,@FKTransaccion int = 0
	  ,@NombreCompra nchar(50) = ''
      ,@Fecha_Compra datetime = GETDATE
      ,@Observaciones nchar(200) = ''
      ,@Garantia nchar(50) = ''
      ,@Exterdida_Garantia nchar(50) = ''
      ,@Factura_Compra nchar(50) = ''
      ,@Ruta_Fotografia nchar(256) = ''
      ,@Cantidad int = 0
      ,@Valor_Unidad numeric(18,0) = 0
      ,@SubTotal numeric(18,0) = 0
      ,@IVA numeric(18,0) = 0
      ,@Total numeric(18,0) = 0
      ,@Cantidad_Recibida int = 0
      ,@Saldo numeric(18,0) = 0
      ,@Descuento numeric(18,0) = 0
      ,@Activo bit = 0
      ,@Notas nchar(200) = ''
	  ,@PKCompras int
AS
BEGIN


UPDATE Compras
   SET FKProveedor = @FKProveedor -- ,int,>
      ,FKDepartamento = @FKDepartamento -- ,nchar(10),>
      ,FKMunicipio = @FKMunicipio -- ,nchar(10),>
	  ,FKTransaccion = @FKTransaccion
	  ,NombreCompra = @NombreCompra --metido
      ,Fecha_Compra = @Fecha_Compra -- ,datetime,>
      ,Observaciones = @Observaciones -- ,nchar(200),>
      ,Garantia = @Garantia -- ,nchar(50),>
      ,Exterdida_Garantia = @Exterdida_Garantia -- ,nchar(50),>
      ,Factura_Compra = @Factura_Compra -- ,nchar(50),>
      ,Ruta_Fotografia = @Ruta_Fotografia -- ,nchar(256),>
      ,Cantidad = @Cantidad -- ,int,>
      ,Valor_Unidad = @Valor_Unidad -- ,numeric(18,0),>
      ,SubTotal = @SubTotal -- ,numeric(18,0),>
      ,IVA = @IVA -- ,numeric(18,0),>
      ,Total = @Total -- ,numeric(18,0),>
      ,Cantidad_Recibida = @Cantidad_Recibida -- ,int,>
      ,Saldo = @Saldo -- ,numeric(18,0),>
      ,Descuento = @Descuento -- ,numeric(18,0),>
      ,Activo = @Activo -- ,bit,>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE PKCompras = @PKCompras
 
END


GO
