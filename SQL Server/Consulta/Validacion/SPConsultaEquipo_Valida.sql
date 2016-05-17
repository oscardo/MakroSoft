USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPConsultaEquipos]    Script Date: 12/05/2016 23:47:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 12/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPConsultaEquipo_valida]
	@NombreEquipo char(50) = ''
AS
BEGIN


SELECT isnull(PKEquipo, '') as [Número Equipo]
      ,isnull(C.Cantidad_Recibida, '') as [Cantidad Recibida]
      ,isnull(T.Nombre, '') as [Nombre Tipo]
      ,isnull(F.Fabricante, '') as [Nombre Fabricante] 
      ,isnull(P.NombreProcesador, '') as [Nombre Procesador]
      ,isnull(CC.NombreCliente, '') as [Nombre Cliente]
      ,isnull(E.Sistema_Operativo, '') as [Sistema Operativo]
      ,isnull(E.Descripcion, '') as Descripcion
      ,isnull(E.Serial, '') Serial
      ,isnull(E.Board, '') Board
      ,isnull(E.RAM, '') RAM
      ,isnull(E.DiscoDuro, '') [Disco Duro]
      ,isnull(E.Mouse, '') Mouse 
      ,isnull(E.Clave_Windows, '') as [Clave Windows]
      ,isnull(E.Clave_Office, '') as [Clave Office] 
      ,isnull(E.Clave_Antivirus, '') as [Clave Antivirus]
      ,isnull(E.Clave_Otros, '') as [Clave Otros]
      ,isnull(E.Clave_Otros2, '') as [Clave Otros 2]
      ,isnull(E.Clave_Otros3, '') as [Clave Otros 3]
      ,isnumeric(E.Cantidad) as [Cantidad]
      ,isnull(E.Activo, '') as Activo
      ,isnull(E.Notas, '') as Notas
  FROM Equipo E
  left join Compras C on C.PKCompras = E.FKCompras
  left join Tipo T on T.PKTipo = E.FKTipo
  left join Fabricante F on F.PKFabricante = E.FKFabricante
  left join Procesador P on P.PKProcesador = E.FKProcesador
  left join Cliente CC on CC.PKCliente = E.FKCliente
	where E.NombreEquipo like @NombreEquipo
END
