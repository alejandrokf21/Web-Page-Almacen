using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;

namespace AlmacenLE
{
    public partial class WebProdEdit : System.Web.UI.Page
    {
        private static int idProducto,bod;
        private static decimal Costo;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                llenarDato(Request.Params["sku"]);

            }
        }

        private void llenarDato(string Init)
        {
            using (AlmacenEntities modelo = new AlmacenEntities())
            {
                IEnumerable<Producto> datos = from q in modelo.Producto
                                             where q.sku == Init
                                             select q;
                List<Producto> lista = datos.ToList();
                txtsku.Value = lista[0].sku.ToString();
                txtname.Value = lista[0].nombre.ToString();
                txtcantidad.Value = lista[0].cantidad.ToString();
                txtprecio.Value = lista[0].precioVenta.ToString();
                idProducto = lista[0].codProducto;
                Costo= (decimal)lista[0].precioCosto;
                bod = (int)lista[0].idBodega;
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {


            using (AlmacenEntities modelo = new AlmacenEntities())
            {
                string nt = txtsku.Value;
                string nam = txtname.Value;
                int add = Convert.ToInt16(txtcantidad.Value);
                decimal ph = Convert.ToDecimal(txtprecio.Value);
                modelo.prApp_Producto_Update(idProducto, nt, nam, add, Costo, ph, bod, 1);
            }
            Response.Redirect("WebProductos.aspx");

        }
    }
}