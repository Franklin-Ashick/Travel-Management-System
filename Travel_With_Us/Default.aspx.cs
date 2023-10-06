using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_With_Us
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void france_Click(object sender, EventArgs e)
        {
            Response.Redirect("Countries/France/FranceHome.aspx");
        }

        protected void us_Click(object sender, EventArgs e)
        {

        }

        protected void uae_Click(object sender, EventArgs e)
        {

        }

        protected void malaysia_Click(object sender, EventArgs e)
        {

        }

        protected void maldives_Click(object sender, EventArgs e)
        {

        }

        protected void japan_Click(object sender, EventArgs e)
        {

        }

        protected void search_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "France")
            {
                Response.Redirect("Countries/France/FranceHome.aspx");
            }
            if (DropDownList1.SelectedValue == "Japan")
            {
                Response.Redirect("Countries/Japan/JapanHome.aspx");
            }
            if (DropDownList1.SelectedValue == "Malaysia")
            {
                Response.Redirect("Countries/Malaysia/MHome.aspx");
            }
        }
    }
}