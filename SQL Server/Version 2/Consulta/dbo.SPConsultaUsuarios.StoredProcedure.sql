USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaUsuarios]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaUsuarios]
	
AS
BEGIN
	SET NOCOUNT ON;
	select 
	isnull(U.NombreUsuario, '') [Nombre Usuario], 
	isnull(D.NombreDepartamento, '') Departamento, 
	isnull(M.NombreMunicipio, '') Municipio, 
	isnull(R.Rol, '') Rol, 
	Isnull(U.Celular, '') Celular, 
	Isnull(U.CorreoElectronico, '') [Correo Electrónico] ,
	iSNULL(U.Activo, '') Activo,
	Isnull(U.Telefono1, '') Telefono,
	isnull(U.Notas, '') notas
	from usuario U
	left join Departamento D on U.FKDepartamento = D.PKDepartamento
	left join Municipio M on U.FKMunicipio = M.NombreMunicipio
	Left join Roles R on R.PKRol = U.FKRol
END

GO
