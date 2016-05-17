USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaClientes]    Script Date: 12/05/2016 23:47:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaCliente_valida]
	@NombreCliente nchar(50) = ''
AS
BEGIN
	SELECT 
	   isnull(C.PKCliente, '') as [Cliente] 
      ,isnull(D.NombreDepartamento, '') as [Nombre Departamento]
      ,isnull(M.NombreMunicipio, '') as [Nombre Municipio]
      ,isnull(C.NombreCliente, '') as [Nombre Cliente]
      ,isnull(C.Nit, '') as Nit
      ,isnull(C.Telefono1, '') as Telefono1
      ,isnull(C.Telefono2, '') as Telefono2
      ,isnull(C.Celular, '') as Celular
      ,isnull(C.Direccion, '') as Direccion
      ,isnull(C.NombreRepLegal, '') as [Nombre Rep Legal]
      ,isnull(C.Fecha, '') as Fecha
      ,isnull(C.Correo_Electronico, '') as [Correo Electrónico]
      ,isnull(C.PaginaWeb, '') as [Pagina Web]
      ,isnull(C.Activo, '') as Activo
      ,isnull(C.Notas, '') as Notas
  FROM Cliente C
  left join Departamento D on D.PKDepartamento = C.FKDepartamento
  left join Municipio M on M.PKMunicipio = C.FKMunicipio
  where C.NombreCliente = @NombreCliente
END
