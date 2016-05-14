USE [MakroSoftDB2]
GO

UPDATE [dbo].[DetalleVenta_Remision]
   SET [Dependencia] = <Dependencia, nchar(50),>
      ,[Contactar] = <Contactar, nchar(50),>
      ,[Fecha_Entrada] = <Fecha_Entrada, datetime,>
      ,[Direccion] = <Direccion, nchar(50),>
      ,[Piso] = <Piso, nchar(50),>
      ,[Telefono] = <Telefono, nchar(15),>
      ,[Fecha_Salida] = <Fecha_Salida, datetime,>
      ,[CPU] = <CPU, bit,>
      ,[NCPU] = <NCPU, nchar(50),>
      ,[Monitor] = <Monitor, bit,>
      ,[NMonitor] = <NMonitor, nchar(50),>
      ,[Impresora] = <Impresora, bit,>
      ,[NImpresora] = <NImpresora, nchar(50),>
      ,[DVD] = <DVD, bit,>
      ,[NDVD] = <NDVD, nchar(50),>
      ,[DiscoDuro] = <DiscoDuro, bit,>
      ,[NDiscoDuro] = <NDiscoDuro, nchar(50),>
      ,[Teclado] = <Teclado, bit,>
      ,[NTeclado] = <NTeclado, nchar(50),>
      ,[Mouse] = <Mouse, bit,>
      ,[NMouse] = <NMouse, nchar(50),>
      ,[Scanner] = <Scanner, bit,>
      ,[NScanner] = <NScanner, nchar(50),>
      ,[Office] = <Office, bit,>
      ,[NOffice] = <NOffice, nchar(50),>
      ,[Clave_Office] = <Clave_Office, nchar(50),>
      ,[Memoria] = <Memoria, bit,>
      ,[NMemoria] = <NMemoria, nchar(50),>
      ,[Sistema_Operativo] = <Sistema_Operativo, bit,>
      ,[NSistema_Operativo] = <NSistema_Operativo, nchar(50),>
      ,[Clave_SO] = <Clave_SO, nchar(50),>
      ,[Correo] = <Correo, bit,>
      ,[Correo_Electronico] = <Correo_Electronico, nchar(50),>
      ,[Antivirus] = <Antivirus, bit,>
      ,[NVAntivirus] = <NVAntivirus, nchar(50),>
      ,[Clave_Antivirus] = <Clave_Antivirus, nchar(50),>
      ,[Conexion_Red] = <Conexion_Red, bit,>
      ,[Otro] = <Otro, bit,>
      ,[Otros_NoReferenciado] = <Otros_NoReferenciado, nchar(50),>
      ,[Nombre_Reporta] = <Nombre_Reporta, nchar(50),>
      ,[Descripcion] = <Descripcion, nchar(200),>
      ,[Descripcion_Detallada] = <Descripcion_Detallada, nchar(200),>
      ,[Preventivo] = <Preventivo, bit,>
      ,[Correctivo] = <Correctivo, bit,>
      ,[Observaciones] = <Observaciones, nchar(1000),>
      ,[Fecha_Sistema] = <Fecha_Sistema, datetime,>
      ,[Valor_Unidad] = <Valor_Unidad, numeric(18,0),>
      ,[IVA_Unidad] = <IVA_Unidad, numeric(18,0),>
      ,[Retencion_Unidad] = <Retencion_Unidad, numeric(18,0),>
      ,[Valor_Total] = <Valor_Total, numeric(18,0),>
      ,[IVA_Total] = <IVA_Total, numeric(18,0),>
      ,[SubTotal] = <SubTotal, numeric(18,0),>
      ,[Retencion_Total] = <Retencion_Total, numeric(18,0),>
      ,[Notas] = <Notas, nchar(200),>
 WHERE <Condiciones de búsqueda,,>
GO

