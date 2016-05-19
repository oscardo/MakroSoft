using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebMakroSoft.Codigo
{
    public static class Detalle
    {
        /// <summary>
        /// Crea Detalle Venta Remision
        /// </summary>
        /// <param name="FKTransaccion"></param>
        /// <param name="Dependencia"></param>
        /// <param name="Contactar"></param>
        /// <param name="Fecha_Entrada"></param>
        /// <param name="Direccion"></param>
        /// <param name="Piso"></param>
        /// <param name="Telefono"></param>
        /// <param name="Fecha_Salida"></param>
        /// <param name="CPU"></param>
        /// <param name="NCPU"></param>
        /// <param name="SerieCPU"></param>
        /// <param name="PlacaCPU"></param>
        /// <param name="Monitor"></param>
        /// <param name="NMonitor"></param>
        /// <param name="SerieMonitor"></param>
        /// <param name="PlacaMonitor"></param>
        /// <param name="Impresora"></param>
        /// <param name="NImpresora"></param>
        /// <param name="SerieImpresora"></param>
        /// <param name="PlacaImpresora"></param>
        /// <param name="DVD"></param>
        /// <param name="NDVD"></param>
        /// <param name="SerieDVD"></param>
        /// <param name="PlacaDVD"></param>
        /// <param name="DiscoDuro"></param>
        /// <param name="NDiscoDuro"></param>
        /// <param name="SerieDD"></param>
        /// <param name="PlacaDD"></param>
        /// <param name="Teclado"></param>
        /// <param name="NTeclado"></param>
        /// <param name="Mouse"></param>
        /// <param name="NMouse"></param>
        /// <param name="Scanner"></param>
        /// <param name="NScanner"></param>
        /// <param name="SerieScanner"></param>
        /// <param name="PlacaScanner"></param>
        /// <param name="Office"></param>
        /// <param name="NOffice"></param>
        /// <param name="Clave_Office"></param>
        /// <param name="Memoria"></param>
        /// <param name="NMemoria"></param>
        /// <param name="Sistema_Operativo"></param>
        /// <param name="NSistema_Operativo"></param>
        /// <param name="Clave_SO"></param>
        /// <param name="Correo"></param>
        /// <param name="Correo_Electronico"></param>
        /// <param name="Antivirus"></param>
        /// <param name="NVAntivirus"></param>
        /// <param name="Clave_Antivirus"></param>
        /// <param name="Conexion_Red"></param>
        /// <param name="Otro"></param>
        /// <param name="Otros_NoReferenciado"></param>
        /// <param name="Nombre_Reporta"></param>
        /// <param name="Descripcion"></param>
        /// <param name="Descripcion_Detallada"></param>
        /// <param name="Preventivo"></param>
        /// <param name="Correctivo"></param>
        /// <param name="Observaciones"></param>
        /// <param name="Fecha_Sistema"></param>
        /// <param name="Valor_Unidad"></param>
        /// <param name="IVA_Unidad"></param>
        /// <param name="Retencion_Unidad"></param>
        /// <param name="Valor_Total"></param>
        /// <param name="IVA_Total"></param>
        /// <param name="SubTotal"></param>
        /// <param name="Retencion_Total"></param>
        /// <param name="Notas"></param>
        public static void CrearDetalleVenta_Remision(
            int FKTransaccion 
           ,string Dependencia 
           ,string Contactar 
           ,DateTime Fecha_Entrada 
           ,string Direccion 
           ,string Piso 
           ,string Telefono 
           ,DateTime Fecha_Salida 
           ,bool CPU 
           ,string NCPU 
           ,string SerieCPU 
           ,string PlacaCPU 
           ,bool Monitor 
           ,string NMonitor 
           ,string SerieMonitor 
           ,string PlacaMonitor 
           ,bool Impresora 
           ,string NImpresora 
           ,string SerieImpresora 
           ,string PlacaImpresora 
           ,bool DVD 
           ,string NDVD 
           ,string SerieDVD 
           ,string PlacaDVD
           ,bool DiscoDuro 
           ,string NDiscoDuro
           ,string SerieDD 
           ,string PlacaDD 
           ,bool Teclado 
           ,string NTeclado
           ,bool Mouse 
           ,string NMouse 
           ,bool Scanner 
           ,string NScanner 
           ,string SerieScanner 
           ,string PlacaScanner 
           ,bool Office 
           ,string NOffice 
           ,string Clave_Office 
           ,bool Memoria 
           ,string NMemoria 
           ,bool Sistema_Operativo 
           ,string NSistema_Operativo 
           ,string Clave_SO 
           ,bool Correo 
           ,string Correo_Electronico 
           ,bool Antivirus 
           ,string NVAntivirus 
           ,string Clave_Antivirus
           ,bool Conexion_Red 
           ,string Otro 
           ,string Otros_NoReferenciado 
           ,string Nombre_Reporta 
           ,string Descripcion 
           ,string Descripcion_Detallada 
           ,bool Preventivo 
           ,bool Correctivo 
           ,string Observaciones 
           ,DateTime Fecha_Sistema 
           ,float Valor_Unidad 
           ,float IVA_Unidad 
           ,float Retencion_Unidad 
           ,float Valor_Total 
           ,float IVA_Total 
           ,float SubTotal 
           ,float Retencion_Total 
           ,string Notas 
            )
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearCompras", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                       cmd.Parameters.Add("@FKTransaccion", SqlDbType.Int).Value = FKTransaccion;
                           cmd.Parameters.Add("@Dependencia", SqlDbType.NChar , 50).Value = Dependencia;
                           cmd.Parameters.Add("@Contactar", SqlDbType.NChar , 50).Value = Contactar;
                           cmd.Parameters.Add("@Fecha_Entrada", SqlDbType.DateTime).Value = Fecha_Entrada;
                           cmd.Parameters.Add("@Direccion", SqlDbType.NChar , 50).Value = Direccion;
                           cmd.Parameters.Add("@Piso", SqlDbType.NChar , 50).Value = Piso;
                           cmd.Parameters.Add("@Telefono", SqlDbType.NChar , 15).Value = Telefono;
                           cmd.Parameters.Add("@Fecha_Salida", SqlDbType.DateTime).Value = Fecha_Salida;
                           cmd.Parameters.Add("@CPU", SqlDbType.Bit).Value = CPU;
                           cmd.Parameters.Add("@NCPU", SqlDbType.NChar , 50).Value = NCPU;
                           cmd.Parameters.Add("@SerieCPU", SqlDbType.NChar , 50).Value = SerieCPU;
                           cmd.Parameters.Add("@PlacaCPU", SqlDbType.NChar , 50).Value = PlacaCPU;
                           cmd.Parameters.Add("@Monitor", SqlDbType.Bit).Value = Monitor;
                           cmd.Parameters.Add("@NMonitor", SqlDbType.NChar , 50).Value = NMonitor;
                           cmd.Parameters.Add("@SerieMonitor", SqlDbType.NChar , 50).Value = SerieMonitor;
                           cmd.Parameters.Add("@PlacaMonitor", SqlDbType.NChar , 50).Value = PlacaMonitor;
                           cmd.Parameters.Add("@Impresora", SqlDbType.Bit).Value = Impresora;
                           cmd.Parameters.Add("@NImpresora", SqlDbType.NChar , 50).Value = NImpresora;
                           cmd.Parameters.Add("@SerieImpresora", SqlDbType.NChar , 50).Value = SerieImpresora;
                           cmd.Parameters.Add("@PlacaImpresora", SqlDbType.NChar , 50).Value = PlacaImpresora;
                           cmd.Parameters.Add("@DVD", SqlDbType.Bit).Value = DVD;
                           cmd.Parameters.Add("@NDVD", SqlDbType.NChar , 50).Value = NDVD;
                           cmd.Parameters.Add("@SerieDVD", SqlDbType.NChar , 50).Value = SerieDVD;
                           cmd.Parameters.Add("@PlacaDVD", SqlDbType.NChar , 50).Value = PlacaDVD;
                           cmd.Parameters.Add("@DiscoDuro", SqlDbType.Bit).Value = DiscoDuro;
                           cmd.Parameters.Add("@NDiscoDuro", SqlDbType.NChar , 50).Value = NDiscoDuro;
                           cmd.Parameters.Add("@SerieDD", SqlDbType.NChar , 50).Value = SerieDD;
                           cmd.Parameters.Add("@PlacaDD", SqlDbType.NChar , 50).Value = PlacaDD;
                           cmd.Parameters.Add("@Teclado", SqlDbType.Bit).Value = Teclado;
                           cmd.Parameters.Add("@NTeclado", SqlDbType.NChar , 50).Value = NTeclado;
                           cmd.Parameters.Add("@Mouse", SqlDbType.Bit).Value = Mouse;
                           cmd.Parameters.Add("@NMouse", SqlDbType.NChar , 50).Value = NMouse;
                           cmd.Parameters.Add("@Scanner", SqlDbType.Bit).Value = Scanner;
                           cmd.Parameters.Add("@NScanner", SqlDbType.NChar , 50).Value = NScanner;
                           cmd.Parameters.Add("@SerieScanner", SqlDbType.NChar , 50).Value = SerieScanner;
                           cmd.Parameters.Add("@PlacaScanner", SqlDbType.NChar , 50).Value = PlacaScanner;
                           cmd.Parameters.Add("@Office", SqlDbType.Bit).Value = Office;
                           cmd.Parameters.Add("@NOffice", SqlDbType.NChar , 50).Value = NOffice;
                           cmd.Parameters.Add("@Clave_Office", SqlDbType.NChar , 50).Value = Clave_Office;
                           cmd.Parameters.Add("@Memoria", SqlDbType.Bit).Value = Memoria;
                           cmd.Parameters.Add("@NMemoria", SqlDbType.NChar , 50).Value = NMemoria;
                           cmd.Parameters.Add("@Sistema_Operativo", SqlDbType.Bit).Value = Sistema_Operativo;
                           cmd.Parameters.Add("@NSistema_Operativo", SqlDbType.NChar , 50).Value = NSistema_Operativo;
                           cmd.Parameters.Add("@Clave_SO", SqlDbType.NChar , 50).Value = Clave_SO;
                           cmd.Parameters.Add("@Correo", SqlDbType.Bit).Value = Correo;
                           cmd.Parameters.Add("@Correo_Electronico", SqlDbType.NChar , 50).Value = Correo_Electronico;
                           cmd.Parameters.Add("@Antivirus", SqlDbType.Bit).Value = Antivirus;
                           cmd.Parameters.Add("@NVAntivirus", SqlDbType.NChar , 50).Value = NVAntivirus;
                           cmd.Parameters.Add("@Clave_Antivirus", SqlDbType.NChar , 50).Value = Clave_Antivirus;
                           cmd.Parameters.Add("@Conexion_Red", SqlDbType.Bit).Value = Conexion_Red;
                           cmd.Parameters.Add("@Otro", SqlDbType.Bit).Value = Otro;
                           cmd.Parameters.Add("@Otros_NoReferenciado", SqlDbType.NChar , 50).Value = Otros_NoReferenciado;
                           cmd.Parameters.Add("@Nombre_Reporta", SqlDbType.NChar , 50).Value = Nombre_Reporta;
                           cmd.Parameters.Add("@Descripcion", SqlDbType.NChar , 200).Value = Descripcion;
                           cmd.Parameters.Add("@Descripcion_Detallada", SqlDbType.NChar , 200).Value = Descripcion_Detallada;
                           cmd.Parameters.Add("@Preventivo", SqlDbType.Bit).Value = Preventivo;
                           cmd.Parameters.Add("@Correctivo", SqlDbType.Bit).Value = Correctivo;
                           cmd.Parameters.Add("@Observaciones", SqlDbType.NChar , 1000).Value = Observaciones;
                           cmd.Parameters.Add("@Fecha_Sistema", SqlDbType.DateTime).Value = Fecha_Sistema;
                           cmd.Parameters.Add("@Valor_Unidad", SqlDbType.Float).Value = Valor_Unidad;
                           cmd.Parameters.Add("@IVA_Unidad", SqlDbType.Float).Value = IVA_Total;
                           cmd.Parameters.Add("@Retencion_Unidad", SqlDbType.Float).Value = Retencion_Unidad;
                           cmd.Parameters.Add("@Valor_Total", SqlDbType.Float).Value = Valor_Total;
                           cmd.Parameters.Add("@IVA_Total", SqlDbType.Float).Value = IVA_Total;
                           cmd.Parameters.Add("@SubTotal", SqlDbType.Float).Value = SubTotal;
                           cmd.Parameters.Add("@Retencion_Total", SqlDbType.Float).Value = Retencion_Total;
                           cmd.Parameters.Add("@Notas", SqlDbType.NChar , 200).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                BD.Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Crear Compras");
            }
        }
    }
}