-- =============================================
-- Author:		Oscar Ortiz 
-- Create date: 14/05/2016
-- Description:	Actualizar en la base de datos
-- =============================================
CREATE PROCEDURE SPActualizar 
		@FKDepartamento, nchar(10)= ''
      ,@FKMunicipio, nchar(10)= ''
      ,@FKRol, int= ''
      ,@NombreUsuario, nchar(20)= ''
      ,@Password, nchar(15)= ''
      ,@Telefono1, nchar(15)= ''
      ,@Celular, nchar(15)= ''
      ,@Ubicacion, nchar(50)= ''
      ,@Activo, bit= ''
      ,@CorreoElectronico, nchar(50)= ''
      ,@Notas, nchar(200)= ''


AS
BEGIN


UPDATE Usuario
   SET FKDepartamento = <FKDepartamento, nchar(10),>
      ,FKMunicipio = <FKMunicipio, nchar(10),>
      ,FKRol = <FKRol, int,>
      ,NombreUsuario = <NombreUsuario, nchar(20),>
      ,Password = <Password, nchar(15),>
      ,Telefono1 = <Telefono1, nchar(15),>
      ,Celular = <Celular, nchar(15),>
      ,Ubicacion = <Ubicacion, nchar(50),>
      ,Activo = <Activo, bit,>
      ,CorreoElectronico = <CorreoElectronico, nchar(50),>
      ,Notas = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>

END

GO


