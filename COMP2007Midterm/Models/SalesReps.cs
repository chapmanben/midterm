//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace COMP2007Midterm.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class SalesReps
    {
        public int SalesRepID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Province { get; set; }
        public decimal Revenue { get; set; }
        public decimal Expenses { get; set; }
        public decimal NetIncome { get; set; }
        public bool Manager { get; set; }
        public System.DateTime HireDate { get; set; }
    }
}
