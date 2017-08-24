using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;

namespace AlmacenLE
{
    public partial class WebFacturaNueva : System.Web.UI.Page        
    {
        public static List<DetalleFactura> detalle;
        private static string idSku;
        private static decimal tot;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (detalle == null)
                {
                    detalle = new List<DetalleFactura>();
                }
            }
            
                    
            

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
           
                idSku = txtsku.Value;
                agregarlista(idSku);
                limpiardetalle();
            
        }
        private void agregarlista( string idSku)
        {
            try
            {
                
                if (Page.IsPostBack)
                {
                    using (AlmacenEntities modelo = new AlmacenEntities())
                    {
                        IEnumerable<Producto> datos = from q in modelo.Producto
                                                      where idSku == q.sku
                                                      select q;
                        List<Producto> lista = datos.ToList();
                        if (lista.Count() > 0)
                        {
                            int idCodProd = lista[0].codProducto;
                            decimal prec = (decimal)lista[0].precioVenta;
                            string name = lista[0].nombre;

                            detalle.Add(new DetalleFactura()
                            {
                                numSerie = txtserie.Value.ToString(),
                                numFactura = Convert.ToInt16(txtnumfactura.Value),
                                codProducto = idCodProd,
                                cantidad = Convert.ToInt16(txtcantidad.Value),
                                precio = prec,
                                subtotal = Convert.ToInt16(txtcantidad.Value) * prec,
                                nombre = name,
                                
                            });
                            tot = 0;
                            foreach (DetalleFactura item in detalle)
                            {
                                tot = (decimal)(tot) + (decimal)(item.subtotal);
                            }
                            txttotal.Value = Convert.ToString(tot);
                                
                            cargarDatos();
                        }
                        else
                        {
                            string script = "alert(\"Upss! Producto no existe.\");";
                            ScriptManager.RegisterStartupScript(this, GetType(),
                                                  "ServerControlScript", script, true);
                        }
                    }

                }
            }
            catch (Exception)
            {
                string script = "alert(\"Upss! Algo ha salido mal.\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
           
           
        }
        private void limpiardetalle()
        {
            txtcantidad.Value = "";
           
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            //try
            //{
                using (Datos.AlmacenEntities modelo = new Datos.AlmacenEntities())
                {
                DateTime fe = DateTime.Parse(txtfecha.Value.ToString());
                    Factura fac = new Factura()
                    {
                        numSerie = txtserie.Value,
                        numFactura = Convert.ToInt32(txtnumfactura.Value),
                        nit = txtnit.Value,
                        fecha = fe,
                        total = Convert.ToDecimal(txttotal.Value)

                    };
                    modelo.Factura.Add(fac);
                    modelo.SaveChanges();

                    foreach (DetalleFactura item in detalle)
                    {
                        DetalleFactura detail = new DetalleFactura()
                        {
                            numSerie = item.numSerie,
                            numFactura = item.numFactura,
                            codProducto = item.codProducto,
                            cantidad= item.cantidad,
                            precio = item.precio,
                            subtotal = Convert.ToDecimal(txttotal.Value),
                            nombre = item.nombre
                        };
                        modelo.DetalleFactura.Add(detail);
                        modelo.SaveChanges();

                        DetalleRegistro deta = new DetalleRegistro()
                        {
                            fecha = fe,
                            codProducto = item.codProducto,
                            tipo = 2,
                            cantidad = item.cantidad,
                            idBodega = 1
                        };

                }
                modelo.FN_MostraFactura(Convert.ToInt32(txtnumfactura.Value));

                
            }
                detalle = new List<DetalleFactura>();
            //Response.Redirect("WebFacturaNueva.aspx");
            }
            //catch (Exception)
            //{

            //    string script = "alert(\"Upss! Algo ha salido mal a la hora de Guardar la factura.\");";
            //    ScriptManager.RegisterStartupScript(this, GetType(),
            //                          "ServerControlScript", script, true);
            //}
            
        //}

    

        protected void btn_print_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebReportPP.aspx");
        }
        protected void dgv_datos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int idProducto = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value);

            detalle.RemoveAt(idProducto-1);          

            cargarDatos();
        }

        private void cargarDatos()
        {
            GridView1.DataSource = detalle;
            GridView1.DataBind();
        }
    }
}