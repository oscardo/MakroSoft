SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE CrearMunicipio
			@PKMunicipio nchar(10)
           ,@FKDepartamento nchar(10)
           ,@NombreMunicipio nchar(50)
           ,@Notas nchar(200)
AS
BEGIN


INSERT INTO Municipio
           (PKMunicipio
           ,FKDepartamento
           ,NombreMunicipio
           ,Notas)
     VALUES
           (@PKMunicipio
           ,@FKDepartamento
           ,@NombreMunicipio
           ,@Notas)

END
GO


