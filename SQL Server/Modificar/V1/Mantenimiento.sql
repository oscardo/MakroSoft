USE [MakroSoftDB2]
GO

UPDATE [dbo].[Mantenimiento]
   SET [FKEquipo] = <FKEquipo, int,>
      ,[FKTecnico] = <FKTecnico, int,>
      ,[FKEstado] = <FKEstado, int,>
      ,[Planilla_Mmto] = <Planilla_Mmto, nchar(50),>
      ,[Fecha] = <Fecha, datetime,>
      ,[Fecha_Sistema] = <Fecha_Sistema, datetime,>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

