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
    
    public partial class HostelFeature
    {
        public int HFID { get; set; }
        public Nullable<int> Hid { get; set; }
        public Nullable<int> Fid { get; set; }
    
        public virtual Feature Feature { get; set; }
        public virtual Feature Feature1 { get; set; }
        public virtual Feature Feature2 { get; set; }
        public virtual Hostel Hostel { get; set; }
        public virtual Hostel Hostel1 { get; set; }
        public virtual Hostel Hostel2 { get; set; }
    }
}
