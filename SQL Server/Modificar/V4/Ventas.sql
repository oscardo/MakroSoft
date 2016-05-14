-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizar 
	  @FKVendedor int = 0
      @FKTipoDocumento int = 0
      @FKDetalleVenta_Remision int = 0
      @NombreReferencia nchar(50) = ''
      @Nit nchar(50) = ''
      @Cedula nchar(15) = ''
      @Telefono1 nchar(15) = ''
      @Telefono2 nchar(15) = ''
      @Celular nchar(15) = ''

AS
BEGIN


UPDATE Ventas
   SET FKVendedor = <FKVendedor, int,>
      ,FKTipoDocumento = <FKTipoDocumento, int,>
      ,FKDetalleVenta_Remision = <FKDetalleVenta_Remision, int,>
      ,NombreReferencia = <NombreReferencia, nchar(50),>
      ,Nit = <Nit, nchar(50),>
      ,Cedula = <Cedula, nchar(15),>
      ,Telefono1 = <Telefono1, nchar(15),>
      ,Telefono2 = <Telefono2, nchar(15),>
      ,Celular = <Celular, nchar(15),>
 WHERE <Condiciones de búsqueda,,>

END

GO


