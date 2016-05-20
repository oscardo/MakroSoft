using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace WebMakroSoft.Codigo
{
    public static class Eliminar
    {
        public static bool Estado(int valor) {
            bool rpt = false;
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPEliminarEstado", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@PKEstado", SqlDbType.Int).Value = valor;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        rpt = true;
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                BD.Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Eliminar Estado");
            }
            return rpt;
        }

        public static int ObtenerDetalleVenta_Remision()
        {
            int Valor = 0;
            
            return Valor;
        }
    }
}