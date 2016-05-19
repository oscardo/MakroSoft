-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizarProveedor 
	   @FKDepartamento nchar(10) = ''
      ,@FKMunicipio nchar(10) = ''
      ,@NombreProveedor nchar(50) = ''
      ,@Nit nchar(15) = ''
      ,@Telefono1 nchar(15) = ''
      ,@Telefono2 nchar(15) = ''
      ,@Celular nchar(15) = ''
      ,@NombreContacto nchar(50) = ''
      ,@NombreContacto2 nchar(50) = ''
      ,@Servicios nchar(200) =''
      ,@CorreoElectronico nchar(50) =''
      ,@Paginaweb nchar(50) =''
      ,@Activo bit =0
      ,@Notas nchar(200) =''
	  ,@PKProveedor int 
AS
BEGIN

UPDATE Proveedor
   SET FKDepartamento = @FKDepartamento -- ,nchar(10),>
      ,FKMunicipio = @FKMunicipio -- ,nchar(10),>
      ,NombreProveedor = @NombreProveedor -- ,nchar(50),>
      ,Nit = @Nit -- ,nchar(15),>
      ,Telefono1 = @Telefono1 -- ,nchar(15),>
      ,Telefono2 = @Telefono2 -- ,nchar(15),>
      ,Celular = @Celular -- ,nchar(15),>
      ,NombreContacto = @NombreContacto -- ,nchar(50),>
      ,NombreContacto2 = @NombreContacto2 -- ,nchar(50),>
      ,Servicios = @Servicios -- ,nchar(200),>
      ,CorreoElectronico = @CorreoElectronico -- ,nchar(50),>
      ,Paginaweb = @Paginaweb -- ,nchar(50),>
      ,Activo = @Activo -- ,bit,>
      ,Notas = @Notas -- ,nchar(200),>
 WHERE PKProveedor = @PKProveedor

END

GO


