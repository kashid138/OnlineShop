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
    using System.ComponentModel.DataAnnotations;

    public partial class Mclient
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Mclient()
        {
            this.TOrderAllocations = new HashSet<TOrderAllocation>();
        }
    
        public int MC_id { get; set; }
        public int MU_id { get; set; }
        [Required]
        [DataType(DataType.Text)]
        [DisplayName("First Name")]
        public string CustomerFname { get; set; }
        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Last-Name")]
        public string CustoemrLname { get; set; }
        [Required]
        [DataType(DataType.PhoneNumber)]
        [DisplayName("Phone No")]
        public string ContactNumber { get; set; }
        [Required]
        [DataType(DataType.PhoneNumber)]
        [DisplayName("Alternates No")]
        public string AlternateNumber { get; set; }
        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Address 1")]
        public string PermanentAddress1 { get; set; }
        [Required]
        [DisplayName("Address 2")]
        public string PerrmanentAddress2 { get; set; }
        [Required]
        [DisplayName("Address 3")]
        public string PermanentAddress3 { get; set; }
        [Required]
        [DisplayName("Active")]
        public bool Staus { get; set; }
    
        public virtual MUser MUser { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TOrderAllocation> TOrderAllocations { get; set; }
    }
}
