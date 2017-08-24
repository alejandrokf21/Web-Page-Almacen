using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;


namespace AlmacenLE
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_save_Click(object sender, EventArgs e)
        {
            string pass = txtpassword.Value.ToString();
            string conf = txtconfirm.Value.ToString();
            if (pass == conf)
            {
                using (AlmacenEntities modelo = new AlmacenEntities())
                {

                    Usuario detail = new Usuario()
                    {
                        contrasenia = txtpassword.Value,
                        correo = txtemail.Value,
                        idRol = 2,
                        usuario1 = txtuser.Value,
                        nombre = txtname.Value

                    };
                    modelo.Usuario.Add(detail);
                    modelo.SaveChanges();
                    string script = "alert(\"Usuario creado exitosamente.\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }
                Response.Redirect("Login.aspx");
            }
            else
            {
                string script = "alert(\"Contraseñas no coinciden.\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            
        }
    }
}