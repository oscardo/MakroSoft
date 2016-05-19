SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE CrearTipoDocumento
			@TipoDocumento nchar(20)
           ,@Notas nchar(200)
AS
BEGIN



INSERT INTO TipoDocumento
           (TipoDocumento
           ,Notas)
     VALUES
           (@TipoDocumento
           ,@Notas)


END
GO

