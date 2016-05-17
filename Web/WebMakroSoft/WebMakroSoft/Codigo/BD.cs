using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace WebMakroSoft.Codigo
{
    public static class BD
    {
        /// <summary>
        /// ValidarInformacion
        /// </summary>
        /// <param name="ProcedimientoAlmacenado">a Validar</param>
        /// <param name="NombreParam">Nombre Parametro @Nombre</param>
        /// <param name="ValorParam">Valor Parametro 'Maria'</param>
        /// <returns>si hay alguna devuelve true, de lo contrario devuelve false</returns>
        public static bool ValidarInformacion(string ProcedimientoAlmacenado, string NombreParam, string ValorParam) {
            bool Valor = false;
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand(ProcedimientoAlmacenado, conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add(NombreParam, SqlDbType.NChar, 50).Value = ValorParam;
                        conn.Open();
                        int result = (int)cmd.ExecuteScalar();
                        if (result >= 1)
                            Valor = true;
                        else
                            Valor = false;
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), ProcedimientoAlmacenado);
            }
            return Valor;
        }

        /// <summary>
        /// crea Auditoria 
        /// </summary>
        /// <param name="Error">e.Data</param>
        /// <param name="Comentarios">e.Message</param>
        /// <param name="Linea">e.Source</param>
        /// <param name="Notas">Donde Sucede el error</param>
        public static void Auditoria(string Error, string Comentarios, string Linea, string Notas)
        {
            string Valor = "Error: " + Error.ToString() + " Comentarios: " + Comentarios.ToString() + " Línea: " + Linea.ToString();
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearAuditoria", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Accion", SqlDbType.Text).Value = Valor;
                        cmd.Parameters.Add("@Notas", SqlDbType.Text).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Auditoria");
            }
        }

    }
}