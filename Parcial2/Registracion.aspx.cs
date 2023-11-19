using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial2
{
    public partial class Registracion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["Username"] != null)
            {
                Label1.Text = "Session creada";

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // creacion de cookie para contrasena
            HttpCookie cookie = new HttpCookie("Contraseña", TextBox4.Text);
            cookie.Expires = DateTime.Now.AddSeconds(5);
            Response.Cookies.Add(cookie);

            // creacion de session con username
            this.Session["Username"] = TextBox2.Text;

            Response.Redirect(Request.RawUrl);
        }
    }
}