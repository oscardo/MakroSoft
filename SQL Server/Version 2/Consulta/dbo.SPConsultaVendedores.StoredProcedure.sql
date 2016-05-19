USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaVendedores]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaVendedores]
	
AS
BEGIN

SELECT isnull(V.PKVendedor, '') as [Nro Vendedor]
      ,isnull(D.NombreDepartamento, '') as [Nombre Departamento]
      ,isnull(M.NombreMunicipio, '') as [Nombre Municipio]
      ,isnull(T.TipoDocumento, '') as [Tipo Documento]
      ,isnull(V.NroDocumento, '') as [Nro Documento]
	  ,isnull(V.NombrePersona, '') as [Nombre Persona]
      ,isnull(V.Direccion, '') as [Direccion]
      ,isnull(V.Telefono1, '') as [Telefono 1]
      ,isnull(V.Telefono2, '') as [Telefono 2]
      ,isnull(V.Celular, '') as [Celular]
      ,isnull(V.Fotografia, '') as [Fotografia]
      ,isnull(V.Activo, '') as [Activo]
      ,isnull(V.Notas, '') as [Notas]
  FROM Vendedor V
  left join Departamento D on D.PKDepartamento = V.FKDepartamento
  left join Municipio M on M.PKMunicipio = V.FKMunicipio
  left join TipoDocumento T on T.PKTipoDocumento = V.FKTipoDocumento
END
GO
