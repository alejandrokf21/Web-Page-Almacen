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
    
    public partial class Usuario
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Usuario()
        {
            this.Factura = new HashSet<Factura>();
            this.Usuario11 = new HashSet<Usuario>();
        }
    
        public int idUsuario { get; set; }
        public int idRol { get; set; }
        public string nombre { get; set; }
        public string usuario1 { get; set; }
        public string contrasenia { get; set; }
        public string correo { get; set; }
        public Nullable<int> idSuperior { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Factura> Factura { get; set; }
        public virtual RolUsuario RolUsuario { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Usuario> Usuario11 { get; set; }
        public virtual Usuario Usuario2 { get; set; }
    }
}
