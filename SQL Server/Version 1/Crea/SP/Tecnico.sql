SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE CrearTecnico
			@Nombre nchar(50)
           ,@Activo bit
           ,@Notas nchar(200)
AS
BEGIN



INSERT INTO Tecnico
           (Nombre
           ,Activo
           ,Notas)
     VALUES
           (@Nombre
           ,@Activo
           ,@Notas)



END
GO
