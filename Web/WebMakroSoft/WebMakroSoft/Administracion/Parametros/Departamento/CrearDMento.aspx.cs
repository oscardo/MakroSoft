using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebMakroSoft.Administracion.Parametros.Departamento
{
    public partial class CrearDMento : System.Web.UI.Page
    {
        private string CodigoDep = string.Empty;
        private string NombreDep = string.Empty;
        private string Notas = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreacion_Click(object sender, EventArgs e)
        {
            if (Comprobar(this.txtNombreDep.Text.ToString().ToLower(), this.txtCodigo.Text.ToString()) == 1)
            {
                lblError.Text = "Error al crear el usuario, ya existe o debe revisar la base de datos!";
            }
            else
            {
                 if (CreacionDepartamento() == -1)
                {
                    this.txtCodigo.Text = string.Empty;
                    this.txtNombreDep.Text = string.Empty;
                    this.txtNotas.Text = string.Empty;

                    CodigoDep = string.Empty;
                    NombreDep = string.Empty;
                    Notas = string.Empty;
                    lblError.Text = "Ya se ha creado correctamente, puede crear otro?";
                }
                else
                {
                    lblError.Text = "Error en la creación del departamento";

                }
            }
        }

        private int CreacionDepartamento()
        {
            int Valor = 0;
            try
            {

            CodigoDep = this.txtCodigo.Text;
            NombreDep = this.txtNombreDep.Text;
            Notas = this.txtNotas.Text.ToString();
            using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
            {
                using (SqlCommand cmd = new SqlCommand("SPCrearDepartamento", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@PKDepartamento", SqlDbType.NChar, 10).Value = CodigoDep;
                    cmd.Parameters.Add("@NombreDepartamento", SqlDbType.NChar, 50).Value = NombreDep;
                    cmd.Parameters.Add("@Notas", SqlDbType.NChar, 200).Value = Notas;
                    conn.Open();
                    int result = (int)cmd.ExecuteNonQuery();
                    Valor = result;
                    conn.Close();
                }
            }
            }//fin try
            catch (Exception E)
            {
                lblError.Text = "Error: " + E.Message.ToString() + " Datos: " + E.Data.ToString();
            }
            return Valor;
        }

        private int Comprobar(string NombreDepar1, string CodigoDep1)
        {
            int Valor = 0;
            using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
            {
                using (SqlCommand cmd = new SqlCommand("SPConsultaDepartamento", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@PKDepartamento", SqlDbType.NVarChar, 10).Value = NombreDepar1;
                    cmd.Parameters.Add("@NombreDepartamento", SqlDbType.NVarChar, 50).Value = CodigoDep1;
                    conn.Open();
                    int result = (int)cmd.ExecuteScalar();
                    Valor = result;
                    conn.Close();
                }
            }
            return Valor;
        }
    }
}