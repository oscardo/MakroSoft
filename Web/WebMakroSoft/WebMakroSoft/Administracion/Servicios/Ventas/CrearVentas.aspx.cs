using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
namespace WebMakroSoft.Administracion.Servicios.Ventas
{
    public partial class CrearVentas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVentas_Click(object sender, EventArgs e)
        {
                BD.CrearVentas(int.Parse(DDVendedor.SelectedValue.ToString()), int.Parse(DDTipoDocumento.SelectedValue.ToString()), int.Parse(DDDetalleVenta.SelectedValue.ToString()), this.txtNombreReferencia.Text.ToString(), this.txtNit.Text, this.txtDocumento.Text.ToString(), this.txtTelefono1.Text, this.txtTelefono2.Text, this.txtCelular.Text, this.txtNotas.Text);
                this.txtNombreReferencia.Text = string.Empty;
                this.txtNit.Text = string.Empty;
                this.txtDocumento.Text = string.Empty;
                this.txtTelefono1.Text = string.Empty;
                this.txtTelefono2.Text = string.Empty;
                this.txtCelular.Text = string.Empty;
                this.txtNotas.Text = string.Empty;
                lblError.Text = "La referencia se ha creado satisfactoriamente";
        }
    }
}