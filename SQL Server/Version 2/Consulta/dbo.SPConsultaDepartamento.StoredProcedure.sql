USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaDepartamento]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaDepartamento]
 @PKDepartamento nchar(10),
 @NombreDepartamento nchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	if exists (SELECT *
	--Isnull(PKDepartamento, '') as Codigo,
	--isnull(NombreDepartamento, '') as [Nombre Departamento],
	--isnull(Notas, '') as Notas
	from Departamento
	where PKDepartamento = @PKDepartamento
	or NombreDepartamento = @NombreDepartamento)
	select 1
  else
	select 0
END

GO
