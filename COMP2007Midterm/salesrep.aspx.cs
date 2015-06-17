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
    public partial class salesrep : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack){
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (DefaultConnection db = new DefaultConnection())
            {
                decimal netIncome = Convert.ToDecimal(txtRevenue.Text) - Convert.ToDecimal(txtExpenses.Text);
                bool manager = false;

                if (cbxManager.Checked)
                {
                    manager = true;
                }

                SalesReps s = new SalesReps();

                s.FirstName = txtFirstName.Text;
                s.LastName = txtLastName.Text;
                s.Province = ddlProvince.SelectedValue;
                s.Revenue = Convert.ToDecimal(txtRevenue.Text);
                s.Expenses = Convert.ToDecimal(txtExpenses.Text);
                s.NetIncome = netIncome;
                s.Manager = manager;
                s.HireDate = Convert.ToDateTime(txtEnrollmentDate.Text);

                db.SalesReps.Add(s);
            }
        }

    }
}