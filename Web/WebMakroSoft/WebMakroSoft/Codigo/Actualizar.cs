using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebMakroSoft.Codigo
{
    public static class Actualizar
    {
        /// <summary>
        /// Creacion de Estado
        /// </summary>
        /// <param name="Estado">Nombre del estado</param>
        /// <param name="Notas">Parametro</param>
        public static void ActualizaEstado(string PKEstado, string Estado, string Notas)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPActualizarEstado", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@PKEstado", SqlDbType.Int).Value = int.Parse(PKEstado);
                        cmd.Parameters.Add("@Estado", SqlDbType.Text).Value = Estado;
                        cmd.Parameters.Add("@Notas", SqlDbType.Text).Value = Notas;
                        conn.Open();
                        int result = (int)cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception e)
            {
                BD.Auditoria(e.Data.ToString(), e.Message.ToString(), e.Source.ToString(), "Actualizar Estado");
            }
        }
    }
}