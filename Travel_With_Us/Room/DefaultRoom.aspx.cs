using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Travel_With_Us.Room
{
    public partial class DefaultRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void DeluxeRoom_Click(object sender, EventArgs e)
        {

          
            
            Session["roomtype"] = "Deluxe Room";
            Session["perperson"] = "150";
          
        }
        protected void DoubleSuite_Click(object sender, EventArgs e)
        {
            Session["roomtype"] = "Double Room";
            Session["perperson"] = "180";
        }

        protected void SingleRoom_Click(object sender, EventArgs e)
        {
            Session["roomtype"] = "Single Room";
            Session["perperson"] = "100";

        }

 
    }
}