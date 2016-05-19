USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPCrearAuditoria]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE [dbo].[SPCrearAuditoria]
			@Accion text
           ,@Notas nchar(200)
AS
BEGIN

INSERT INTO Auditoria
           (Accion
		   ,Fecha
           ,Notas)
     VALUES
           (@Accion
		   ,GetDate()
           ,@Notas)



END

GO
