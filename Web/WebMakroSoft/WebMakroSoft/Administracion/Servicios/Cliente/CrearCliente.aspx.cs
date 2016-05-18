using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
namespace WebMakroSoft.Administracion.Servicios.Cliente
{
    public partial class CrearCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCrearCliente_Click(object sender, EventArgs e)
        {
            if (BD.ValidarInformacion("SPConsultaCliente_Valida", "@NombreCliente", this.txtCliente.Text.ToString()) == false)
            {
                BD.CrearCliente(DDDepartamento.SelectedValue.ToString(), DDMunicipio.SelectedValue.ToString(), txtCliente.Text, txtDocumento.Text, txtTelefono1.Text, txtTelefono2.Text, txtCelular.Text, txtDireccion.Text, txtRepLegal.Text, txtFecha.Text, txtCorreo.Text, txtPaginaweb.Text, rbActivo.Checked, txtNotas.Text);
                txtCliente.Text = string.Empty;
                txtDocumento.Text = string.Empty;
                txtTelefono1.Text = string.Empty;
                txtTelefono2.Text = string.Empty;
                txtCelular.Text = string.Empty;
                txtDireccion.Text = string.Empty;
                txtRepLegal.Text = string.Empty;
                txtFecha.Text = string.Empty;
                txtCorreo.Text = string.Empty;
                txtPaginaweb.Text = string.Empty;
                rbActivo.Checked = false;
                txtNotas.Text = string.Empty;
                lblError.Text = "La referencia se ha creado satisfactoriamente";
            }
            else
            {
                lblError.Text = "La Referencia ya existe";
            }
        }
    }
}