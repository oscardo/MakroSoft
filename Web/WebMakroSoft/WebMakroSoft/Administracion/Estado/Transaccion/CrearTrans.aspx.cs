using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;

namespace WebMakroSoft.Administracion.Estado.Transaccion
{
    public partial class CrearTrans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCrearTransaccion_Click(object sender, EventArgs e)
        {
                BD.CrearTransaccion(this.DDEquipo.SelectedValue.ToString(), this.DDRemision.SelectedValue.ToString(), this.DDVentas.SelectedValue.ToString(),this.DDCompra.SelectedValue.ToString(), this.txtNotas.Text.ToString());
                this.DDEquipo.SelectedIndex = 1;
                this.DDRemision.SelectedIndex = 1;
                this.DDVentas.SelectedIndex = 1;
                this.DDCompra.SelectedIndex = 1;
                this.txtNotas.Text = string.Empty;
                lblError.Text = "La referencia se ha creado satisfactoriamente";
        }
    }
}