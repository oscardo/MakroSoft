SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE CrearBodega
			@FKDepartamento nchar(10)
           ,@FKMunicipio nchar(10)
           ,@NombreBodega nchar(50)
           ,@Direccion nchar(50)
           ,@Responsable1 nchar(50)
           ,@Responsable2 nchar(50)
           ,@Telefono1 nchar(15)
           ,@Telefono2 nchar(15)
           ,@Celular nchar(15)
           ,@Notas nchar(200)
AS
BEGIN



INSERT INTO Bodega
           (FKDepartamento
           ,FKMunicipio
           ,NombreBodega
           ,Direccion
           ,Responsable1
           ,Responsable2
           ,Telefono1
           ,Telefono2
           ,Celular
           ,Notas)
     VALUES
           (@FKDepartamento
           ,@FKMunicipio
           ,@NombreBodega
           ,@Direccion
           ,@Responsable1
           ,@Responsable2
           ,@Telefono1
           ,@Telefono2
           ,@Celular
           ,@Notas)

END
GO
