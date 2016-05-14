-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizar 


AS
BEGIN


UPDATE Compras
   SET FKProveedor = <FKProveedor, int,>
      ,FKDepartamento = <FKDepartamento, nchar(10),>
      ,FKMunicipio = <FKMunicipio, nchar(10),>
      ,Fecha_Compra = <Fecha_Compra, datetime,>
      ,Observaciones = <Observaciones, nchar(200),>
      ,Garantia = <Garantia, nchar(50),>
      ,Exterdida_Garantia = <Exterdida_Garantia, nchar(50),>
      ,Factura_Compra = <Factura_Compra, nchar(50),>
      ,Ruta_Fotografia = <Ruta_Fotografia, nchar(256),>
      ,Cantidad = <Cantidad, int,>
      ,Valor_Unidad = <Valor_Unidad, numeric(18,0),>
      ,SubTotal = <SubTotal, numeric(18,0),>
      ,IVA = <IVA, numeric(18,0),>
      ,Total = <Total, numeric(18,0),>
      ,Cantidad_Recibida = <Cantidad_Recibida, int,>
      ,Saldo = <Saldo, numeric(18,0),>
      ,Descuento = <Descuento, numeric(18,0),>
      ,Activo = <Activo, bit,>
      ,Notas = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>

END

GO


