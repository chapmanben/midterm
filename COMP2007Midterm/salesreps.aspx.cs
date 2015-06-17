using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//referencing EF Models
using COMP2007Midterm.Models;
using System.Web.ModelBinding;

namespace COMP2007Midterm
{
    public partial class salesreps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getSalesReps();
            }
        }

        protected void getSalesReps()
        {
            using (DefaultConnection db = new DefaultConnection())
            {
                var SalesReps = from s in db.SalesReps
                                select s;

                grdSalesReps.DataSource = SalesReps.ToList();
                grdSalesReps.DataBind();
            }
        }
    }
}