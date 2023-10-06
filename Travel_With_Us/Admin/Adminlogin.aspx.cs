using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_With_Us.Admin
{
    public partial class Adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string username = email.Text;
                string password = passwordd.Text;

                // validate user input
                if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
                {
                    string script = "alert('Please fill in all fields.');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                    return;
                }







                if (username == "Admin" && password == "111")
                {
                    // username and password are correct, set session variable and redirect to home page

                    Response.Redirect("admindash.aspx");
                }
                else
                {
                    // username or password is incorrect, show error message
                    string script = "alert('Invalid username or password.');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }


            }
        }
    }
}