using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_With_Us.Countries.France
{
    public partial class FranceHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void par_Click(object sender, EventArgs e)
        {
            Session["city"] = "Paris";
            Session["cityprice"] = "5500";
            Response.Redirect("../../Packages/HotelReservation.aspx");
        }

        protected void lyon_Click(object sender, EventArgs e)
        {
            Session["city"] = "Lyon";
            Session["cityprice"] = "5200";
            Response.Redirect("../../Packages/HotelReservation.aspx");
        }

        protected void borf_Click(object sender, EventArgs e)
        {
            Session["city"] = "Bordeaux";
            Session["cityprice"] = "4400";
            Response.Redirect("../../Packages/HotelReservation.aspx");
        }

        protected void mars_Click(object sender, EventArgs e)
        {
            Session["city"] = "Marseille";
            Session["cityprice"] = "600";
            Response.Redirect("../../Packages/HotelReservation.aspx");
        }

        protected void nice_Click(object sender, EventArgs e)
        {
            Session["city"] = "Nice";
            Session["cityprice"] = "6500";
            Response.Redirect("../../Packages/HotelReservation.aspx");
        }

        protected void rouen_Click(object sender, EventArgs e)
        {
            Session["city"] = "Rouen";
            Session["cityprice"] = "5000";
            Response.Redirect("../../Packages/HotelReservation.aspx");
        }
    }
}