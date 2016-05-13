USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaTecnicos]    Script Date: 12/05/2016 23:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaTecnico_select]
	
AS
BEGIN

SELECT isnull(PKTecnico, '') as [Nro Tecnico]
      ,isnull(Nombre, '') as [Nombres]
      ,isnull(Activo, '') as [Activo]
      ,isnull(Notas, '') as [Notas]
  FROM Tecnico

END