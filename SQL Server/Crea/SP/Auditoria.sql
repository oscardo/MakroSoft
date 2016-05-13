SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE CrearAuditoria
			@Accion text
           ,@Notas nchar(200)
AS
BEGIN

INSERT INTO Auditoria
           (Accion
           ,Notas)
     VALUES
           (@Accion
           ,@Notas)



END
GO
