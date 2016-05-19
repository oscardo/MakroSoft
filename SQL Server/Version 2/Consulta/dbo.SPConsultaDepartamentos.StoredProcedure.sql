USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaDepartamentos]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaDepartamentos]
AS
BEGIN
	SET NOCOUNT ON;
	
	select 
	Isnull(PKDepartamento, '') as Codigo,
	isnull(NombreDepartamento, '') as [Nombre Departamento],
	isnull(Notas, '') as Notas
	from Departamento

END

GO
