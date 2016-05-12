using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace WebMakroSoft.Administracion.Parametros.Municipio
{
    public partial class CrearMunic : System.Web.UI.Page
    {
        private string PKMunicipio = string.Empty;
        private string FKDepartamento = string.Empty;
        private string NombreMunicipio = string.Empty;
        private string Notas = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCrearMunicipio_Click(object sender, EventArgs e)
        {
            if (Comprobar(this.DDDepar.SelectedValue.ToString(), this.txtNombreMunicipio.Text.ToString(), this.TxtCodigoMun.Text.ToString()) == 1)
            {
                lblError.Text = "Error al crear el usuario, ya existe o debe revisar la base de datos!";
            }
            else
            {
                if (CreacionDepartamento() == -1)
                {
                    this.TxtCodigoMun.Text = string.Empty;
                    this.txtNombreMunicipio.Text = string.Empty;
                    this.txtNotas.Text = string.Empty;

                    PKMunicipio = string.Empty;
                    FKDepartamento = string.Empty;
                    NombreMunicipio = string.Empty;
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

        
                PKMunicipio = this.TxtCodigoMun.Text.ToString();
                FKDepartamento = this.DDDepar.SelectedValue.ToString();
                NombreMunicipio = this.txtNombreMunicipio.Text.ToString();
                Notas = this.txtNotas.Text.ToString();
                using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
                {
                    using (SqlCommand cmd = new SqlCommand("SPCrearMunicipios", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@PKMunicipio", SqlDbType.NChar, 10).Value = PKMunicipio;
                        cmd.Parameters.Add("@FKDepartamento", SqlDbType.NChar, 10).Value = FKDepartamento;
                        cmd.Parameters.Add("@NombreMunicipio", SqlDbType.NChar, 50).Value = NombreMunicipio;
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

        private int Comprobar(string Depar, string NMunic, string CMunic)
        {
            int Valor = 0;
            using (SqlConnection conn = new SqlConnection(Codigo.Conexion.DBConexion))
            {
                using (SqlCommand cmd = new SqlCommand("SPConsultaDeparMunic", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@PKMunicipio", SqlDbType.NVarChar, 10).Value = NMunic;
                    cmd.Parameters.Add("@FKDepartamento", SqlDbType.NVarChar, 10).Value = Depar;
                    cmd.Parameters.Add("@NombreMunicipio", SqlDbType.NVarChar, 50).Value = CMunic;
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