using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenLE
{
    public partial class Prueba : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (Datos.AlmacenEntities modelo = new Datos.AlmacenEntities())
            {

                var cartegoria = (from c in modelo.Bodega
                                  select new { c.idBodega, c.nombre }).ToList();

                DropDownList1.DataValueField = "idBodega";
                DropDownList1.DataTextField = "nombre";
                DropDownList1.DataSource = cartegoria;
                DropDownList1.DataBind();
                // List<Bodega> lista = modelo.Bodega.ToList();
                // DropDownList1.DataSource = lista;
                // DropDownList1.DataTextField = "nombre" ;
                // //DropDownList1.DataValueField = "idBodega";
                // DropDownList1.DataBind();
                //// DropDownList1.Items.Insert(0, new ListItem("--- Seleccione Bodega ---", "0"));

            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string valor = DropDownList1.SelectedIndex.ToString();
            string otro = DropDownList1.SelectedItem.Value;

        }
    }
}