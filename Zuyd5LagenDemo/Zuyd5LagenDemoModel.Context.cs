﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Zuyd5LagenDemoModelContainer : DbContext
    {
        public Zuyd5LagenDemoModelContainer()
            : base("name=Zuyd5LagenDemoModelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Gebruiker> Gebruikers { get; set; }
        public virtual DbSet<GeoCache> GeoCaches { get; set; }
    }
}
