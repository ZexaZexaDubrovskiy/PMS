﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PMS.Base
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class PMSEntities : DbContext
    {
        public PMSEntities()
            : base("name=PMSEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<employeeAccess> employeeAccess { get; set; }
        public virtual DbSet<employeeDepartment> employeeDepartment { get; set; }
        public virtual DbSet<employeeRank> employeeRank { get; set; }
        public virtual DbSet<timeOff> timeOff { get; set; }
        public virtual DbSet<timeType> timeType { get; set; }
        public virtual DbSet<Users> Users { get; set; }
    }
}
