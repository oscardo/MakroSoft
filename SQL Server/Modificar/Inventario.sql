-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizarInventario 
	   @FKTransaccion int = 0 
      ,@FKProveedor int  = 0
      ,@FKBodega int  = 0
      ,@FKDetalle_VentaRemision int  = 0
      ,@FKEquipo int  = 0
      ,@Factura_Compra nchar(50)  = ''
      ,@Ruta_Fotografia nchar(256) = ''
      ,@Fecha_Factura datetime = getdate
      ,@Fecha_Sistema datetime = getdate
      ,@Cantidad int = 0
      ,@Valor_Unidad numeric(18,0)= 0 
      ,@Subtotal numeric(18,0)= 0 
      ,@IVA numeric(18,0) = 0
      ,@Total numeric(18,0) = 0
      ,@Observaciones nchar(200) = ''
      ,@Cantidad_Recibida int = 0
      ,@Fecha_Mmto datetime = getdate
      ,@Planilla_Mmto nchar(10) = ''
      ,@Actvo bit = 0
      ,@Notas nchar(200) = '' 
	  ,@PkInventario int
AS
BEGIN

UPDATE Inventario
   SET FKTransaccion = @FKTransaccion -- ,int,>
      ,FKProveedor = @FKProveedor -- ,int,>
      ,FKBodega = @FKBodega -- ,int,>
      ,FKDetalle_VentaRemision = @FKDetalle_VentaRemision -- ,int,>
      ,FKEquipo = @FKEquipo -- ,int,>
      ,Factura_Compra = @Factura_Compra -- ,nchar(50),>
      ,Ruta_Fotografia = @Ruta_Fotografia -- ,nchar(256),>
      ,Fecha_Factura = @Fecha_Factura -- ,datetime,>
      ,Fecha_Sistema = @Fecha_Sistema -- ,datetime,>
      ,Cantidad = @Cantidad -- ,int,>
      ,Valor_Unidad = @Valor_Unidad -- ,numeric(18,0),>
      ,Subtotal = @Subtotal -- ,numeric(18,0),>
      ,IVA = @IVA -- ,numeric(18,0),>
      ,Total = @Total -- ,numeric(18,0),>
      ,Observaciones = @Observaciones -- ,nchar(200),>
      ,Cantidad_Recibida = @Cantidad_Recibida -- ,int,>
      ,Fecha_Mmto = @Fecha_Mmto -- ,datetime,>
      ,Planilla_Mmto = @Planilla_Mmto -- ,nchar(10),>
      ,Actvo = @Actvo -- ,bit,>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE PkInventario = @PkInventario

END

GO


