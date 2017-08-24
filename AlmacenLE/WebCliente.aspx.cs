using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;

namespace AlmacenLE
{
    public partial class WebCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                cargarDatos();
            }

        }

        private void cargarDatos()
        {
            using (Datos.AlmacenEntities modelo = new Datos.AlmacenEntities())
            {
                List<Cliente> lista = modelo.Cliente.ToList();
                dgv_datos.DataSource = lista;
                dgv_datos.DataBind();
            }
        }

        protected void dgv_datos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string idcliente = dgv_datos.DataKeys[e.RowIndex].Value.ToString();

            eliminar(idcliente);

            cargarDatos();
        }

        private void eliminar(string idcliente)
        {
            using (Datos.AlmacenEntities modelo = new Datos.AlmacenEntities())
            {
                Cliente cat = (from q in modelo.Cliente
                               where q.nit == idcliente
                               select q).First();
                modelo.Cliente.Remove(cat);
                modelo.SaveChanges();
            }

        }

        protected void dgv_datos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            string idcliente = dgv_datos.DataKeys[e.NewEditIndex].Value.ToString();
            Response.Redirect(string.Format("WebClienteEdit.aspx?nit={0}", idcliente));
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {

            using (AlmacenEntities modelo = new AlmacenEntities())
            {
                string cod = nit.Value;
                string nam = name.Value;
                string add = address.Value;
                string ph = phone.Value;
                modelo.PR_ClienteInsert_Web(cod,nam,add,ph);
            }
            Response.Redirect("WebCliente.aspx");

        }


    }

}