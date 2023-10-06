using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_With_Us.Room
{
    public partial class popup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Store form data in session variables
                Session["norooms"] = room.Text;
                Session["nopeople"] = people.Text;

                // Close popup form and return to main page
                string script = "window.opener.location.href = '../Payment/Login.aspx'; window.close();";
                ScriptManager.RegisterStartupScript(this, GetType(), "Close", script, true);
            }
        }
    }
}