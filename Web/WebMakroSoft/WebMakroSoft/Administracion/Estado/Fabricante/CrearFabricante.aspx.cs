using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
namespace WebMakroSoft.Administracion.Estado.Fabricante
{
    public partial class CrearFabricante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCrear_Click(object sender, EventArgs e)
        {
            if (BD.ValidarInformacion("SPConsultaFabricante_Valida", "@Fabricante", this.txtFabricante.Text.ToString()) == false)
            {
                BD.CrearFabricante(this.txtFabricante.Text.ToString(), this.txtNotas.Text.ToString());
                this.txtFabricante.Text = string.Empty;
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