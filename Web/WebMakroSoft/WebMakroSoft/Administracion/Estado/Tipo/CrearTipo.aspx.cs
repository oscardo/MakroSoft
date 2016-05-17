using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
namespace WebMakroSoft.Administracion.Estado.Tipo
{
    public partial class CrearTipo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCrear_Click(object sender, EventArgs e)
        {
            if (BD.ValidarInformacion("SPConsultaTipo_Valida", "@Nombre", this.txtNombreTipo.Text.ToString()) == false)
            {
                BD.CrearTipo(this.txtNombreTipo.Text.ToString(),this.txtNotas.Text.ToString());
                this.txtNombreTipo.Text = string.Empty;
                this.txtNotas.Text = string.Empty;
                lblError.Text = "La referencia se ha creado satisfactoriamente";
            }
            else
            {
                lblError.Text = "La Referencia ya existe";
            }
        }
    }
}