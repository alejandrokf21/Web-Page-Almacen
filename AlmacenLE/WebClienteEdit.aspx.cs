using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;

namespace AlmacenLE
{
    public partial class WebClienteEdit : System.Web.UI.Page
    {
        private static int idCliente;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                llenarDato(Request.Params["nit"]);
                
            }
        }

        private void llenarDato(string Init)
        {
            using (AlmacenEntities modelo = new AlmacenEntities())
            {
                IEnumerable<Cliente> datos = from q in modelo.Cliente
                                             where q.nit == Init
                                             select q;
                List<Cliente> lista = datos.ToList();
                nit.Value = lista[0].nit.ToString();
                name.Value = lista[0].nombre.ToString();
                address.Value = lista[0].direccion.ToString();
                phone.Value = lista[0].telefono.ToString();
               
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
                

            using (AlmacenEntities modelo = new AlmacenEntities())
            {
                string nt = nit.Value;
                string nam = name.Value;
                string add = address.Value;
                string ph = phone.Value;
                modelo.PR_ClienteUpdate_Web(nt, nam, add,ph);
            }
            Response.Redirect("WebCliente.aspx");

        }
    }
}