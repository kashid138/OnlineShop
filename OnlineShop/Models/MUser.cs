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

    public partial class MUser
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MUser()
        {
            this.Mclients = new HashSet<Mclient>();
            this.TCarts = new HashSet<TCart>();
            this.TOrders = new HashSet<TOrder>();
        }
        [DisplayName("User")]
        public int MU_id { get; set; }
        [Required]
        [DisplayName("Name")]
        public string UserName { get; set; }
        [Required]
        [DataType(DataType.EmailAddress)]
        [DisplayName("Email")]
        public string UserEmail { get; set; }
        [Required]
        [DisplayName("Password")]
        public string UserPwd { get; set; }
        public int MUT_id { get; set; }
        [DisplayName("Join Date")]
        public string JoinDate { get; set; }
        [DisplayName("Active")]
        public bool Status { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Mclient> Mclients { get; set; }
        public virtual MUserType MUserType { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TCart> TCarts { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TOrder> TOrders { get; set; }
    }
}
