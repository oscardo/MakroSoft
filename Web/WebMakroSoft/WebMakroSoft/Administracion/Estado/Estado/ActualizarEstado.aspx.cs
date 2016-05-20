using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
namespace WebMakroSoft.Administracion.Estado.Estado
{
    public partial class ActualizarEstado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvEstado_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow row = gvEstado.Rows[e.NewSelectedIndex];
            Wizard1.ActiveStepIndex = 2;
            lblEstado.Text = row.Cells[1].Text.ToString();
            txtEstado.Text = row.Cells[2].Text.ToString();
            txtNotas.Text = row.Cells[3].Text.ToString();
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            Actualizar.ActualizaEstado(lblEstado.Text, txtEstado.Text, txtNotas.Text);
            Response.Redirect("ActualizarEstado.aspx");
        }
    }
}