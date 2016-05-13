USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaTipos]    Script Date: 12/05/2016 23:47:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaTipo_select]
	
AS
BEGIN

SELECT isnull(PKTipo, '') as [Nro Tipo]
      ,isnull(Nombre, '') as [Nombre]
      ,isnull(Notas, '') as [Notas]
  FROM Tipo

END