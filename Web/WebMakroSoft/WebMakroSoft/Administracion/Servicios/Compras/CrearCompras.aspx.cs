using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
namespace WebMakroSoft.Administracion.Servicios.Compras
{
    public partial class CrearCompras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnCrearCompra_Click(object sender, EventArgs e)
        {
            //if (BD.ValidarInformacion("SPConsultaEstado_Valida", "@Estado", this.txtEstado.Text.ToString()) == false)
            //{
            BD.CrearCompras(
                int.Parse(DDProveedor.SelectedValue.ToString())
                , DDDepartamento.SelectedValue.ToString()
                , DDMunicipio.SelectedValue.ToString()
                , ObtenerDetalleVenta_Remision()
                , ObtenerTransaccion()
                , txtNombreCompra.Text
                , txtFechaCompra.Text.ToString()
                , txtObservaciones.Text
                , txtGarantia.Text
                , txtGarantiaExt.Text
                , txtFacturaCompra.Text
                , ""
                , int.Parse(this.txtCantidad.Text)
                , float.Parse(txtValorUnidad.Text)
                , float.Parse(txtSubTotal.Text)
                , float.Parse(txtIVA.Text)
                , float.Parse(txtTotal.Text)
                , int.Parse(txtCantidadRecibida.Text)
                , float.Parse(txtSaldo.Text)
                , float.Parse(txtDescuento.Text)
                , rbActivo.Checked
                , txtNotas.Text);

            this.txtNombreCompra.Text = string.Empty;
            this.txtFechaCompra.Text = string.Empty;
            this.txtObservaciones.Text = string.Empty;
            this.txtGarantia.Text = string.Empty;
            this.txtGarantiaExt.Text = string.Empty;
            this.txtFacturaCompra.Text = string.Empty;
            this.txtCantidad.Text = string.Empty;
            this.txtValorUnidad.Text = string.Empty;
            this.txtSubTotal.Text = string.Empty;
            this.txtIVA.Text = string.Empty;
            this.txtTotal.Text = string.Empty;
            this.txtCantidadRecibida.Text = string.Empty;
            this.txtSaldo.Text = string.Empty;
            this.txtDescuento.Text = string.Empty;
            this.rbActivo.Checked = false;
            this.txtNotas.Text = string.Empty;

            this.lblErrorCompra.Text = "La referencia se ha creado satisfactoriamente";
        }

        private int ObtenerTransaccion()
        {
            return BD.ObtenerTransaccion() + 1;
        }

        private int ObtenerDetalleVenta_Remision()
        {
            return BD.ObtenerDetalleVenta_Remision() + 1;
        }
    }
}