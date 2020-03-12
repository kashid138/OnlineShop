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

    public partial class MProduct
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MProduct()
        {
            this.MSupplierProductMaps = new HashSet<MSupplierProductMap>();
            this.TCarts = new HashSet<TCart>();
            this.TOrders = new HashSet<TOrder>();
        }
        [DisplayName("Product")]
        public int MP_id { get; set; }
        [Required]
        [DisplayName("Product Type")]
        public int MPT_id { get; set; }
        [Required]
        [DisplayName("Brand")]
        public int MBt_id { get; set; }
        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Product")]
        public string ProductName { get; set; }
        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Description")]
        public string ProductDescription { get; set; }
        [Required]
        [DisplayName("Qty")]
        public decimal ProductQty { get; set; }
        [Required]
        [DisplayName("Minimum Qty")]
        public decimal MinProductQty { get; set; }
        [Required]
        [DisplayName("Price")]
        public decimal ProductPrice { get; set; }
        [Required]
        [DisplayName("Image")]
        public string ProductImageDecs { get; set; }
        [Required]
        [DisplayName("Active")]
        public bool Status { get; set; }
    
        public virtual MBrand MBrand { get; set; }
        public virtual MProductType MProductType { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MSupplierProductMap> MSupplierProductMaps { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TCart> TCarts { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TOrder> TOrders { get; set; }
    }
}
