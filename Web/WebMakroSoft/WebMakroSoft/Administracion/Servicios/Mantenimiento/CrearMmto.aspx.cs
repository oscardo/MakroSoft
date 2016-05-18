using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
namespace WebMakroSoft.Administracion.Servicios.Mantenimiento
{
    public partial class CrearMmto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearMmto_Click(object sender, EventArgs e)
        {
            if (BD.ValidarInformacion("SPConsultaMantenimiento_valida", "@Planilla_Mmto", this.txtPlanillaMtto.Text.ToString()) == false)
            {
                BD.CrearMantenimiento(int.Parse(DDEquipo.SelectedValue.ToString()), int.Parse(DDTecnico.SelectedValue.ToString()), int.Parse(DDEstado.SelectedValue.ToString()),this.txtPlanillaMtto.Text.ToString(), this.txtFecha_Inicio.Text, this.txtFechaFinal.Text.ToString(), this.txtNotas.Text);
                this.txtPlanillaMtto.Text = string.Empty;
                this.txtFecha_Inicio.Text = string.Empty;
                this.txtFechaFinal.Text = string.Empty;
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