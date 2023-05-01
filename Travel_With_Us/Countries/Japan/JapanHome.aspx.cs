using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_With_Us.Countries.Japan
{
    public partial class JapanHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Tokyo_Click(object sender, EventArgs e)
        {
            Session["city"] = "Tokyo";
            Session["cityprice"] = "3200";
            Response.Redirect("../../Packages/HotelReservation.aspx");
        }

        protected void Kyoto_Click(object sender, EventArgs e)
        {
            Session["city"] = "Kyoto";
            Session["cityprice"] = "2000";
            Response.Redirect("../../Packages/HotelReservation.aspx");
        }

        protected void Hiroshima_Click(object sender, EventArgs e)
        {
            Session["city"] = "Hiroshima";
            Session["cityprice"] = "2500";
            Response.Redirect("../../Packages/HotelReservation.aspx");
        }

        protected void Nagoya_Click(object sender, EventArgs e)
        {
            Session["city"] = "Nagoya";
            Session["cityprice"] = "3000";
            Response.Redirect("../../Packages/HotelReservation.aspx");
        }

        protected void Osaka_Click(object sender, EventArgs e)
        {
            Session["city"] = "Osaka";
            Session["cityprice"] = "3500";
            Response.Redirect("../../Packages/HotelReservation.aspx");

        }
    }
}