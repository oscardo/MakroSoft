using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMakroSoft.Codigo;
namespace WebMakroSoft.Administracion.Estado.Estado
{
    public partial class EliminarEstado : System.Web.UI.Page
    {
        private int ValorEliminar = 0;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            ValorEliminar = int.Parse(this.lbl.Text.ToString());
            if (ValorEliminar != 0 && Eliminar.Estado(ValorEliminar))
            {
                Panel1.Visible = false;
                Response.Redirect("EliminarEstado.aspx");
            }
            else
            {
                this.lblError.Text = "Se ha presentado un error al eliminar!";
            }
        }

      
        protected void gvEstado_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvEstado_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow row = gvEstado.Rows[e.NewSelectedIndex];
            this.lbl.Text = row.Cells[1].Text.ToString();
            Panel1.Visible = true;
            lblInfo.Text = "Desea Eliminar esta selección: " + row.Cells[1].Text.ToString();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            lblInfo.Text = string.Empty;
            lblError.Text = string.Empty;
        }



















        //    <%--        <asp:Panel ID = "Panel1" runat="server" Visible="false">
        //    <asp:Label ID = "lblInfo" runat="server"></asp:Label>
        //    <br />
        //    <asp:Button ID = "BtnEliminar" runat="server" OnClick="BtnEliminar_Click" Text="Eliminar" />
        //    <asp:Button ID = "btnCancelar" runat="server" OnClick="btnCancelar_Click" Text="Cancelar" />
        //        <br />
        //        <asp:Label ID = "lblEliminarError" runat="server" Font-Bold="True" Font-Names="Century" Text="Label"></asp:Label>
        //</asp:Panel>
        //<ajaxToolkit:PopupControlExtender ID = "Panel1_PopupControlExtender" runat="server" BehaviorID="Panel1_PopupControlExtender" DynamicServicePath="" ExtenderControlID="" TargetControlID="Panel1" PopupControlID="gvEstado_SelectedIndexChanging" Position="Top">
        //</ajaxToolkit:PopupControlExtender>--%>
        //protected void BtnEliminar_Click(object sender, EventArgs e)
        //{
        //    if (ValorEliminar != "" && Eliminar.Estado(int.Parse(ValorEliminar.ToString())))
        //    {
        //        Panel1.Visible = false;
        //    }
        //    else
        //    {
        //        this.lblEliminarError.Text = "Error al eliminar el tipo de estado Nro: " + ValorEliminar.ToString();
        //    }
        //}

        //protected void btnCancelar_Click(object sender, EventArgs e)
        //{
        //    Panel1.Visible = false;
        //}
    }
}