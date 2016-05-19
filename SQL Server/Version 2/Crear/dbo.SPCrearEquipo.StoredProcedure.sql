USE [MakroSoftDB2]
GO
/****** Object:  StoredProcedure [dbo].[SPCrearEquipo]    Script Date: 19/05/2016 17:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oscar Ortiz
-- Create date: 13/05/2016
-- Description:	Creación
-- =============================================
CREATE PROCEDURE [dbo].[SPCrearEquipo]
			@FKCompras int
           ,@FKTipo int
           ,@FKFabricante int
           ,@FKProcesador int
           ,@FKCliente int
		   ,@NombreEquipo nchar(50) 
           ,@Sistema_Operativo nchar(50)
           ,@Descripcion nchar(50)
           ,@Serial nchar(50)
           ,@Board nchar(50)
           ,@RAM nchar(10)
           ,@DiscoDuro nchar(10)
           ,@Mouse nchar(10)
           ,@Clave_Windows nchar(50)
           ,@Clave_Office nchar(50)
           ,@Clave_Antivirus nchar(50)
           ,@Clave_Otros nchar(50)
           ,@Clave_Otros2 nchar(50)
           ,@Clave_Otros3 nchar(30)
           ,@Cantidad int
           ,@Activo bit
           ,@Notas nchar(200)
AS
BEGIN



INSERT INTO Equipo
           (FKCompras
           ,FKTipo
           ,FKFabricante
           ,FKProcesador
           ,FKCliente
		   ,NombreEquipo
           ,Sistema_Operativo
           ,Descripcion
           ,Serial
           ,Board
           ,RAM
           ,DiscoDuro
           ,Mouse
           ,Clave_Windows
           ,Clave_Office
           ,Clave_Antivirus
           ,Clave_Otros
           ,Clave_Otros2
           ,Clave_Otros3
           ,Cantidad
           ,Activo
           ,Notas)
     VALUES
           (@FKCompras
           ,@FKTipo
           ,@FKFabricante
           ,@FKProcesador
           ,@FKCliente
		   ,@NombreEquipo
           ,@Sistema_Operativo
           ,@Descripcion
           ,@Serial
           ,@Board
           ,@RAM
           ,@DiscoDuro
           ,@Mouse
           ,@Clave_Windows
           ,@Clave_Office
           ,@Clave_Antivirus
           ,@Clave_Otros
           ,@Clave_Otros2
           ,@Clave_Otros3
           ,@Cantidad
           ,@Activo
           ,@Notas)

END

GO
