//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PMS.Base
{
    using System;
    using System.Collections.Generic;
    
    public partial class Users
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Users()
        {
            this.timeOff = new HashSet<timeOff>();
        }
    
        public int id { get; set; }
        public string login { get; set; }
        public string password { get; set; }
        public string FIO { get; set; }
        public Nullable<System.DateTime> dateOfBirth { get; set; }
        public Nullable<System.DateTime> dateComing { get; set; }
        public Nullable<int> id_rank { get; set; }
        public Nullable<int> id_access { get; set; }
        public byte[] image { get; set; }
        public Nullable<int> id_department { get; set; }
    
        public virtual employeeAccess employeeAccess { get; set; }
        public virtual employeeDepartment employeeDepartment { get; set; }
        public virtual employeeRank employeeRank { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<timeOff> timeOff { get; set; }
    }
}