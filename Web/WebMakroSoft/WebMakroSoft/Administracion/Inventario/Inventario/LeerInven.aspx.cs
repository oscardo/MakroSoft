using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMakroSoft.Administracion.Inventario.Inventario
{
    public partial class LeerInven : System.Web.UI.Page
    {
        HttpCookie myCookie = new HttpCookie("CKDetalle_Venta");
        DateTime now = DateTime.Now;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            myCookie.Value = e.ToString();
            myCookie.Expires = now.AddMinutes(10);
            Response.Cookies.Add(myCookie);
        }

        protected void gvDetalle_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if (myCookie != null)
            //    Response.Write("<p>" + myCookie.Name + "<p>" + myCookie.Value);
            //else
            //    Response.Write("not found");
        }

    }
}