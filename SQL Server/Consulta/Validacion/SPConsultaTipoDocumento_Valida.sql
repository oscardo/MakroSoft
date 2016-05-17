USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaTiposDocumentos]    Script Date: 12/05/2016 23:47:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaTipoDocumento_valida]
	@TipoDocumento char(50) = ''
AS
BEGIN

SELECT isnull(PKTipoDocumento, '') as 'Nro'
      ,isnull(TipoDocumento, '') as [Tipo de Documento]
      ,isnull(Notas, '') as Notas
  FROM [dbo].[TipoDocumento]
  where TipoDocumento = @TipoDocumento
END