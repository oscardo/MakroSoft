USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaFabricantes]    Script Date: 12/05/2016 23:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaFabricante_valida]
	@Fabricante nchar(50) = ''
AS
BEGIN

  SELECT isnull(PKFabricante, '') as [Número de Fabricante]
      ,isnull(Fabricante, '') as [Fabricante]
      ,isnull(Notas, '') as [Notas]
  FROM Fabricante
  where Fabricante = @Fabricante
END