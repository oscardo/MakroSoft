USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaMunicipios]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaMunicipios]
	
AS
BEGIN
	SET NOCOUNT ON;
	
	select 
	isnull(M.PKMunicipio, '') as [Codigo Municipio],
	isnull(D.NombreDepartamento, '') as Departamento,
	ISNULL(M.NombreMunicipio, '') as [Nombre Municipio],
	isnull(M.notas, '') as Notas
	from Municipio M
	left join Departamento D on M.FKDepartamento = D.PKDepartamento 
	order by M.PKMunicipio asc
END

GO
