using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;

namespace AlmacenLE
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void buscarDato(String user, String pass)
        {
            using (Datos.AlmacenEntities modelo = new Datos.AlmacenEntities())
            {
                IEnumerable<Usuario> datos = from q in modelo.Usuario
                                             where user == q.correo &&
                                             q.contrasenia == pass
                                             select q;
                List<Usuario> lista = datos.ToList();
                if (lista.Count() > 0)
                {
                    Session["usuario"] = Convert.ToString(lista[0].correo);
                    Session["nombre"] = lista[0].nombre;
                    Response.Redirect("WebHome.aspx");
                }
                else
                {
                    string script = "alert(\"Correo o Contraseña incorrectos!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            buscarDato(this.correo.Value.ToString(), this.password.Value.ToString());
        }
    }
}