SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE Crear
			@FKDepartamento nchar(10)
           ,@FKMunicipio nchar(10)
           ,@NombreProveedor nchar(50)
           ,@Nit nchar(15)
           ,@Telefono1 nchar(15)
           ,@Telefono2 nchar(15)
           ,@Celular nchar(15)
           ,@NombreContacto nchar(50)
           ,@NombreContacto2 nchar(50)
           ,@Servicios nchar(200)
           ,@CorreoElectronico nchar(50)
           ,@Paginaweb nchar(50)
           ,@Activo bit
           ,@Notas nchar(200)
AS
BEGIN



INSERT INTO Proveedor
           (FKDepartamento
           ,FKMunicipio
           ,NombreProveedor
           ,Nit
           ,Telefono1
           ,Telefono2
           ,Celular
           ,NombreContacto
           ,NombreContacto2
           ,Servicios
           ,CorreoElectronico
           ,Paginaweb
           ,Activo
           ,Notas)
     VALUES
           (@FKDepartamento
           ,@FKMunicipio
           ,@NombreProveedor
           ,@Nit
           ,@Telefono1
           ,@Telefono2
           ,@Celular
           ,@NombreContacto
           ,@NombreContacto2
           ,@Servicios
           ,@CorreoElectronico
           ,@Paginaweb
           ,@Activo
           ,@Notas)



END
GO
