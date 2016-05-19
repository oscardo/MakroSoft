USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaProveedores]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaProveedores]
	
AS
BEGIN

  SELECT isnull(P.PKProveedor, '') as [Nro Proveedor]
      ,isnull(D.NombreDepartamento, '') as [Nombre Departamento]
      ,isnull(M.NombreMunicipio, '') as [Nombre Municipio]
      ,isnull(P.NombreProveedor, '') as [Nombre Proveedor]
      ,isnull(P.Nit, '') as [Nit]
      ,isnull(P.Telefono1, '') as [Telefono1]
      ,isnull(P.Telefono2, '') as [Telefono2]
      ,isnull(P.Celular, '') as [Celular]
      ,isnull(P.NombreContacto, '') as [Nombre Contacto]
      ,isnull(P.NombreContacto2, '') as [Nombre Contacto 2]
      ,isnull(P.Servicios, '') as [Servicios]
      ,isnull(P.CorreoElectronico, '') as [Correo Electrónico]
      ,isnull(P.Paginaweb, '') as [Pagina Web]
      ,isnull(P.Activo, '') as [Activo]
      ,isnull(P.Notas, '') as [Notas]
  FROM Proveedor P
  left join Departamento D on D.PKDepartamento = P.FKDepartamento
  left join Municipio M on M.PKMunicipio = P.FKMunicipio


END
GO
