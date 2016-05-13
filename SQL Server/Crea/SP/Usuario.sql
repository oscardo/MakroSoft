SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE CrearUsuario
			@FKDepartamento nchar(10)
           ,@FKMunicipio nchar(10)
           ,@FKRol int
           ,@NombreUsuario nchar(20)
           ,@Password nchar(15)
           ,@Telefono1 nchar(15)
           ,@Celular nchar(15)
           ,@Ubicacion nchar(50)
           ,@Activo bit
           ,@CorreoElectronico nchar(50)
           ,@Notas nchar(200)
AS
BEGIN

INSERT INTO Usuario
           (FKDepartamento
           ,FKMunicipio
           ,FKRol
           ,NombreUsuario
           ,Password
           ,Telefono1
           ,Celular
           ,Ubicacion
           ,Activo
           ,CorreoElectronico
           ,Notas)
     VALUES
           (@FKDepartamento
           ,@FKMunicipio
           ,@FKRol
           ,@NombreUsuario
           ,@Password
           ,@Telefono1
           ,@Celular
           ,@Ubicacion
           ,@Activo
           ,@CorreoElectronico
           ,@Notas)


END
GO

