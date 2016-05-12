using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace WebMakroSoft.App_Code
{
    public class Conexion
    {
        public string DBConexion() {
            string connection = System.Configuration.ConfigurationManager.ConnectionStrings["MakroSoftDB2ConnectionString"].ConnectionString;
            return connection;
        }
    }
}