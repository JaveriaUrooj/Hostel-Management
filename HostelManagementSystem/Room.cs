//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HostelManagementSystem
{
    using System;
    using System.Collections.Generic;
    
    public partial class Room
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Room()
        {
            this.Alotments = new HashSet<Alotment>();
            this.Alotments1 = new HashSet<Alotment>();
            this.Alotments2 = new HashSet<Alotment>();
        }
    
        public int RoomID { get; set; }
        public Nullable<int> RoomTypeid { get; set; }
        public Nullable<int> Hostelid { get; set; }
        public int TotalRooms { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Alotment> Alotments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Alotment> Alotments1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Alotment> Alotments2 { get; set; }
        public virtual Hostel Hostel { get; set; }
        public virtual Hostel Hostel1 { get; set; }
        public virtual Hostel Hostel2 { get; set; }
        public virtual RoomType RoomType { get; set; }
        public virtual RoomType RoomType1 { get; set; }
        public virtual RoomType RoomType2 { get; set; }
    }
}
