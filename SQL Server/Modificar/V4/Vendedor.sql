-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizar 
	   @FKDepartamento nchar(10)= ''
      @FKMunicipio nchar(10)= ''
      @FKTipoDocumento int= 0
      @NombrePersona nchar(50)= ''
      @Direccion nchar(50)= ''
      @Telefono1 nchar(15)= ''
      @Telefono2 nchar(15)= ''
      @Celular nchar(15)= ''
      @Fotografia nchar(256)= ''
      @Activo bit= 0
      @Notas nchar(200)= ''

AS
BEGIN


UPDATE Vendedor
   SET FKDepartamento = <FKDepartamento, nchar(10),>
      ,FKMunicipio = <FKMunicipio, nchar(10),>
      ,FKTipoDocumento = <FKTipoDocumento, int,>
      ,NombrePersona = <NombrePersona, nchar(50),>
      ,Direccion = <Direccion, nchar(50),>
      ,Telefono1 = <Telefono1, nchar(15),>
      ,Telefono2 = <Telefono2, nchar(15),>
      ,Celular = <Celular, nchar(15),>
      ,Fotografia = <Fotografia, nchar(256),>
      ,Activo = <Activo, bit,>
      ,Notas = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>

END

GO


