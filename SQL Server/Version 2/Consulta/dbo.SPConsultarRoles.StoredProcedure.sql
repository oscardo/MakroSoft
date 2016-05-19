USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultarRoles]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SPConsultarRoles]
			
AS
BEGIN
	SET NOCOUNT ON;
	
select 
isnull(PKRol, '') [Código Rol],
isnull(Rol, '') as Rol,
isnull(Activo, '') Activo,
ISNULL(Notas, '') Notas
from Roles


END

GO
