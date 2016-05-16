-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizarRemisiones 
	   @FKCliente int = 0
      ,@FKProveedor int = 0
      ,@FKDepartamento nchar(10) = ''
      ,@FKMunicipio nchar(10) = ''
      ,@FKDetalle_Venta_Remision int = 0
      ,@Fecha_Inicio datetime = getdate
      ,@Fecha_Fin datetime = getdate
      ,@Fecha_Sistema datetime = getdate
      ,@Valor_Unidad numeric(18,0)  = 0
      ,@IVA_Unidad numeric(18,0) = 0
      ,@Valor_Total numeric(18,0) = 0
      ,@Subtotal numeric(18,0) = 0
      ,@IVA numeric(18,0) = 0
      ,@Total numeric(18,0) = 0
      ,@FVenta nchar(50) = ''
      ,@Cantidad int = 0
      ,@Diferencia numeric(18,0) = 0
      ,@Diferencia_Precio numeric(18,0) = 0
      ,@Notas nchar(200) = ''
	  ,@PKRemisiones int
AS
BEGIN


UPDATE Remisiones
   SET FKCliente = @FKCliente -- ,int,>
      ,FKProveedor = @FKProveedor -- ,int,>
      ,FKDepartamento = @FKDepartamento -- ,nchar(10),>
      ,FKMunicipio = @FKMunicipio -- ,nchar(10),>
      ,FKDetalle_Venta_Remision = @FKDetalle_Venta_Remision -- ,int,>
      ,Fecha_Inicio = @Fecha_Inicio -- ,datetime,>
      ,Fecha_Fin = @Fecha_Fin -- ,datetime,>
      ,Fecha_Sistema = @Fecha_Sistema -- ,datetime,>
      ,Valor_Unidad = @Valor_Unidad -- ,numeric(18,0),>
      ,IVA_Unidad = @IVA_Unidad -- ,numeric(18,0),>
      ,Valor_Total = @Valor_Total -- ,numeric(18,0),>
      ,Subtotal = @Subtotal -- ,numeric(18,0),>
      ,IVA = @IVA -- ,numeric(18,0),>
      ,Total = @Total -- ,numeric(18,0),>
      ,FVenta = @FVenta -- ,nchar(50),>
      ,Cantidad = @Cantidad -- ,int,>
      ,Diferencia = @Diferencia -- ,numeric(18,0),>
      ,Diferencia_Precio = @Diferencia_Precio -- ,numeric(18,0),>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE PKRemisiones = @PKRemisiones

END

GO


