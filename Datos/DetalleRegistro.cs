//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Datos
{
    using System;
    using System.Collections.Generic;
    
    public partial class DetalleRegistro
    {
        public int idDetalleReg { get; set; }
        public Nullable<int> idBodega { get; set; }
        public Nullable<System.DateTime> fecha { get; set; }
        public Nullable<int> tipo { get; set; }
        public Nullable<int> codProducto { get; set; }
        public Nullable<int> cantidad { get; set; }
    
        public virtual Bodega Bodega { get; set; }
        public virtual InOut InOut { get; set; }
    }
}
