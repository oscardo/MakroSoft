//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebMakroSoft
{
    using System;
    using System.Collections.Generic;
    
    public partial class Usuario
    {
        public int PKUsuario { get; set; }
        public string FKDepartamento { get; set; }
        public string FKMunicipio { get; set; }
        public Nullable<int> FKRol { get; set; }
        public string NombreUsuario { get; set; }
        public string Password { get; set; }
        public string Telefono1 { get; set; }
        public string Celular { get; set; }
        public string Ubicacion { get; set; }
        public Nullable<bool> Activo { get; set; }
        public string CorreoElectronico { get; set; }
        public string Notas { get; set; }
    
        public virtual Departamento Departamento { get; set; }
        public virtual Municipio Municipio { get; set; }
        public virtual Roles Roles { get; set; }
    }
}
