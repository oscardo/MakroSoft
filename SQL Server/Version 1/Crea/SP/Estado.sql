SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE CrearEstado
			@Estado nchar(50)
           ,@Notas nchar(200)
AS
BEGIN



INSERT INTO Estado
           (Estado
           ,Notas)
     VALUES
           (@Estado
           ,@Notas)
END
GO

