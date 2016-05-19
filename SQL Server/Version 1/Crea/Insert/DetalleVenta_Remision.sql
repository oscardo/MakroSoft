USE [MakroSoftDB2]


INSERT INTO [dbo].[DetalleVenta_Remision]
           ([Dependencia]
           ,[Contactar]
           ,[Fecha_Entrada]
           ,[Direccion]
           ,[Piso]
           ,[Telefono]
           ,[Fecha_Salida]
           ,[CPU]
           ,[NCPU]
           ,[Monitor]
           ,[NMonitor]
           ,[Impresora]
           ,[NImpresora]
           ,[DVD]
           ,[NDVD]
           ,[DiscoDuro]
           ,[NDiscoDuro]
           ,[Teclado]
           ,[NTeclado]
           ,[Mouse]
           ,[NMouse]
           ,[Scanner]
           ,[NScanner]
           ,[Office]
           ,[NOffice]
           ,[Clave_Office]
           ,[Memoria]
           ,[NMemoria]
           ,[Sistema_Operativo]
           ,[NSistema_Operativo]
           ,[Clave_SO]
           ,[Correo]
           ,[Correo_Electronico]
           ,[Antivirus]
           ,[NVAntivirus]
           ,[Clave_Antivirus]
           ,[Conexion_Red]
           ,[Otro]
           ,[Otros_NoReferenciado]
           ,[Nombre_Reporta]
           ,[Descripcion]
           ,[Descripcion_Detallada]
           ,[Preventivo]
           ,[Correctivo]
           ,[Observaciones]
           ,[Fecha_Sistema]
           ,[Valor_Unidad]
           ,[IVA_Unidad]
           ,[Retencion_Unidad]
           ,[Valor_Total]
           ,[IVA_Total]
           ,[SubTotal]
           ,[Retencion_Total]
           ,[Notas])
     VALUES
           (<Dependencia, nchar(50),>
           ,<Contactar, nchar(50),>
           ,<Fecha_Entrada, datetime,>
           ,<Direccion, nchar(50),>
           ,<Piso, nchar(50),>
           ,<Telefono, nchar(15),>
           ,<Fecha_Salida, datetime,>
           ,<CPU, bit,>
           ,<NCPU, nchar(50),>
           ,<Monitor, bit,>
           ,<NMonitor, nchar(50),>
           ,<Impresora, bit,>
           ,<NImpresora, nchar(50),>
           ,<DVD, bit,>
           ,<NDVD, nchar(50),>
           ,<DiscoDuro, bit,>
           ,<NDiscoDuro, nchar(50),>
           ,<Teclado, bit,>
           ,<NTeclado, nchar(50),>
           ,<Mouse, bit,>
           ,<NMouse, nchar(50),>
           ,<Scanner, bit,>
           ,<NScanner, nchar(50),>
           ,<Office, bit,>
           ,<NOffice, nchar(50),>
           ,<Clave_Office, nchar(50),>
           ,<Memoria, bit,>
           ,<NMemoria, nchar(50),>
           ,<Sistema_Operativo, bit,>
           ,<NSistema_Operativo, nchar(50),>
           ,<Clave_SO, nchar(50),>
           ,<Correo, bit,>
           ,<Correo_Electronico, nchar(50),>
           ,<Antivirus, bit,>
           ,<NVAntivirus, nchar(50),>
           ,<Clave_Antivirus, nchar(50),>
           ,<Conexion_Red, bit,>
           ,<Otro, bit,>
           ,<Otros_NoReferenciado, nchar(50),>
           ,<Nombre_Reporta, nchar(50),>
           ,<Descripcion, nchar(200),>
           ,<Descripcion_Detallada, nchar(200),>
           ,<Preventivo, bit,>
           ,<Correctivo, bit,>
           ,<Observaciones, nchar(1000),>
           ,<Fecha_Sistema, datetime,>
           ,<Valor_Unidad, numeric(18,0),>
           ,<IVA_Unidad, numeric(18,0),>
           ,<Retencion_Unidad, numeric(18,0),>
           ,<Valor_Total, numeric(18,0),>
           ,<IVA_Total, numeric(18,0),>
           ,<SubTotal, numeric(18,0),>
           ,<Retencion_Total, numeric(18,0),>
           ,<Notas, nchar(200),>)



