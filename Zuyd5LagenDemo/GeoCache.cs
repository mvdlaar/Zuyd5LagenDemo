//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Zuyd5LagenDemo.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class GeoCache
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GeoCache()
        {
            this.Gebruiker = new HashSet<Gebruiker>();
        }
    
        public int Id { get; set; }
        public string Locatie { get; set; }
        public string Beschrijving { get; set; }
        public string CacheType { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Gebruiker> Gebruiker { get; set; }
    }
}