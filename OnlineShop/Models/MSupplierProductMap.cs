//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OnlineShop.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;

    public partial class MSupplierProductMap
    {
        [DisplayName("Map")]
        public int nmap_id { get; set; }
        [DisplayName("Supplier")]
        public int MS_id { get; set; }
        [DisplayName("Product")]
        public int MP_id { get; set; }

        public virtual MProduct MProduct { get; set; }
        public virtual MSupplier MSupplier { get; set; }
    }
}