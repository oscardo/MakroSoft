USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaAuditoria]    Script Date: 12/05/2016 23:46:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaAuditoria] 
AS
BEGIN

SELECT isnull([PKAuditoria], '') [Nro Auditoria]
      ,isnull([Accion], '') Accion
      ,isnull([Notas], '') Notas
  FROM Auditoria

END
