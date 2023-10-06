using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Twilio.Http;

namespace Travel_With_Us.Countries.Malaysia
{
    public partial class MHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Penang_Click(object sender, EventArgs e)
        {
            Session["city"] = "Penang";
            Session["cityprice"] = "5500";
            Response.Redirect("../../Packages/HotelReservation.aspx");
        }

        protected void Kuching_Click(object sender, EventArgs e)
        {
            Session["city"] = "Kuching";
            Session["cityprice"] = "5200";
            Response.Redirect("../../Packages/HotelReservation.aspx");
        }

        protected void JohorBahru_Click(object sender, EventArgs e)
        {
            Session["city"] = "Johor Bahru";
            Session["cityprice"] = "4400";
            Response.Redirect("../../Packages/HotelReservation.aspx");
        }



        protected void KotaKinabalu_Click(object sender, EventArgs e)
        {

            Session["city"] = "Kota Kinabalu";
            Session["cityprice"] = "600";
            Response.Redirect("../../Packages/HotelReservation.aspx");
        }

        protected void KualaLumpur_Click(object sender, EventArgs e)
        {

            Session["city"] = "Kuala Lumpur";
            Session["cityprice"] = "6500";
            Response.Redirect("../../Packages/HotelReservation.aspx");
        }
    }
}