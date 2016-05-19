USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaTipoDocumento_valida]    Script Date: 19/05/2016 17:04:06 ******/
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
if exists(
SELECT isnull(PKTipoDocumento, '') as 'Nro'
      ,isnull(TipoDocumento, '') as [Tipo de Documento]
      ,isnull(Notas, '') as Notas
  FROM [dbo].[TipoDocumento]
  where TipoDocumento = @TipoDocumento)
  select 1
  else 
    select 0
END
GO
