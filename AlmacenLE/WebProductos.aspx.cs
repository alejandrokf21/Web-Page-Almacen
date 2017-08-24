using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;


namespace AlmacenLE
{
    
    public partial class WebProductos : System.Web.UI.Page

    {
        public static int cod;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                cargarDatos();
                llenarDropDown();
            }



        }

        private void llenarDropDown()
        {
            


            using (Datos.AlmacenEntities modelo = new Datos.AlmacenEntities())
            {
                if (!this.Page.IsPostBack)
                {
                    var cartegoria = (from c in modelo.Bodega
                                      select new { c.idBodega, c.nombre }).ToList();

                    idBodega.DataValueField = "idBodega";
                    idBodega.DataTextField = "nombre";
                    idBodega.DataSource = cartegoria;
                    idBodega.DataBind();
                    idBodega.Items.Insert(0, new ListItem("    Seleccione Bodega    ", "0"));
                }

                
               // List<Bodega> lista = modelo.Bodega.ToList();
               // DropDownList1.DataSource = lista;
               // DropDownList1.DataTextField = "nombre" ;
               // //DropDownList1.DataValueField = "idBodega";
               // DropDownList1.DataBind();
               //// DropDownList1.Items.Insert(0, new ListItem("--- Seleccione Bodega ---", "0"));

            }

        }

        private void cargarDatos()
        {
            using (Datos.AlmacenEntities modelo = new Datos.AlmacenEntities())
            {
                List<Producto> lista = modelo.Producto.ToList();
                dgv_datos.DataSource = lista;
                dgv_datos.DataBind();
            }
        }

        protected void dgv_datos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string idProducto = dgv_datos.DataKeys[e.RowIndex].Value.ToString();

            eliminar(idProducto);

            cargarDatos();
        }

        private void eliminar(string idProducto)
        {
            using (Datos.AlmacenEntities modelo = new Datos.AlmacenEntities())
            {
                Producto cat = (from q in modelo.Producto
                               where q.sku == idProducto
                               select q).First();
                modelo.Producto.Remove(cat);
                modelo.SaveChanges();
            }

        }

        protected void dgv_datos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            string idcliente = dgv_datos.DataKeys[e.NewEditIndex].Value.ToString();
            Response.Redirect(string.Format("WebProdEdit.aspx?sku={0}", idcliente));
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            if (this.IsPostBack)
            {
                using(AlmacenEntities modelo = new AlmacenEntities())
                {
                    string sku = txtsku.Value;
                    string nombre = txtname.Value;
                    int cantidad = Convert.ToInt16(txtcantidad.Value);
                    decimal precioVenta = Convert.ToDecimal(txtprecio.Value);
                    decimal precioCosto = Convert.ToDecimal(txtcosto.Value);
                    int bodega = Convert.ToInt16(idBodega.Value.ToString());
                    modelo.prApp_Producto_Insert(sku, nombre, cantidad, precioCosto, precioVenta, bodega, 1);

                    IEnumerable<Producto> cat = from q in modelo.Producto
                                    where q.sku == sku
                                    select q;
                    List<Producto> lista = cat.ToList();
                    if (lista.Count() >0)
                    {
                        cod = lista[0].codProducto;
                    }
                    

                    DateTime fec = DateTime.Parse(txtdate.Value);

                    DetalleRegistro det = new DetalleRegistro()
                    {
                        fecha = fec,
                        codProducto =cod,
                        tipo = 1,
                        cantidad = Convert.ToInt16(txtcantidad.Value),
                        idBodega= Convert.ToInt16(idBodega.Value.ToString())
                };
                    modelo.DetalleRegistro.Add(det);
                    modelo.SaveChanges();
                }
                
                Response.Redirect("WebProductos.aspx");

            }
            

        }

        protected void dgv_datos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }

}