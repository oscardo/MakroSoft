using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
namespace WebMakroSoft.Administracion.Estado.Estado
{
    public partial class CrearEstado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCrearEstado_Click(object sender, EventArgs e)
        {
            if (BD.ValidarInformacion("SPConsultaEstado_Valida", "@Estado", this.txtEstado.Text.ToString()) == false)
            {
                BD.CrearEstado(this.txtEstado.Text.ToString(), this.txtNotas.Text.ToString());
                this.txtEstado.Text = string.Empty;
                this.txtNotas.Text = string.Empty;
                lblError.Text = "La referencia se ha creado satisfactoriamente";
            }
            else {
                lblError.Text = "La Referencia ya existe";
            }
        }
    }
}