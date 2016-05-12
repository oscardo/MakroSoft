using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace WebMakroSoft.Codigo
{
    public static class Conexion
    {
        public static string DBConexion
        {
            get
            {
                string connection = System.Configuration.ConfigurationManager.ConnectionStrings["MakroSoftDB2ConnectionString"].ConnectionString;
                return connection;
            }
        }


    }
}