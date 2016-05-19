USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaBodega_select]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaBodega_select]
AS
BEGIN

SELECT isnull(B.PKBodega, '') as Bodega
      ,isnull(D.NombreDepartamento, '') [Nombre Departamento]
      ,isnull(M.NombreMunicipio,'') as [Nombre Municipio]
      ,isnull(B.NombreBodega,'') as [Nombre Bodega]
      ,isnull(B.Direccion,'') as Direccion
      ,isnull(B.Responsable1,'') as Responsable1
      ,isnull(B.Responsable2,'') as Responsable2
      ,isnull(B.Telefono1,'') as Telefono1
      ,isnull(B.Telefono2,'') as Telefono2
      ,isnull(B.Celular,'') as Celular
      ,isnull(B.Notas,'') as notas
  FROM Bodega B
  left join Departamento D on D.PKDepartamento = B.FKDepartamento
  left join Municipio M on M.PKMunicipio = B.FKMunicipio
END

GO
