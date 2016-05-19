USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaEstado_select]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaEstado_select]
	
AS
BEGIN

SELECT isnull(PKEstado, '') as [Número de Estado]
      ,isnull(Estado, '') as [Estado]
      ,isnull(Notas, '') as [Notas]
  FROM Estado

END

GO
