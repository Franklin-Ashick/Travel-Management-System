using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.PeerToPeer;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Travel_With_Us.Room;
using Twilio.TwiML.Voice;

namespace Travel_With_Us.Payment
{
    public partial class Recipt : System.Web.UI.Page
    {
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        string str = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        string str1 = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            // ClientScript.RegisterStartupScript(this.GetType(), "PrintOperation", "javascript:printContent();", true);

            date.Text= DateTime.Now.ToString("MMMM dd, yyyy");
            //totall.Text = Session["total"].ToString();
            paym.Text = Session["paymethod"].ToString();
            cityname.Text = Session["city"].ToString();
            country.Text = Session["country"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

            str = "select * from UserProfile WHERE Username='" + Session["Username"] + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                if (dr.Read())
                {
                    namee.Text = dr["Name"].ToString();
                   
                    email.Text = dr["Email"].ToString();
                    countryy.Text = dr["Countries"].ToString();
                    phnumber.Text = dr["PhNumber"].ToString();
                    address.Text = dr["Address"].ToString();
                    cityy.Text = dr["City"].ToString();
                 
                    zipcode.Text = dr["ZipCode"].ToString();

                }
            }
            str1 = "select * from Billing WHERE Username='" + Session["Username"] + "'";
            SqlCommand cmd1 = new SqlCommand(str1, con);
         
            using (SqlDataReader dr = cmd1.ExecuteReader())
            {
                if (dr.Read())
                {
                 
                    cityprice.Text = dr["Cityprice"].ToString();
                    roomprice.Text = dr["Rprice"].ToString();
                    num2.Text = dr["NRoom"].ToString();
              
                    num3.Text = dr["NPeople"].ToString();
                    peopleprice.Text = dr["Pprice"].ToString();
                    subtotal.Text = dr["STotal"].ToString();
                    totall.Text = dr["Total"].ToString();
                    total.Text = dr["Total"].ToString();
                }
            }
            con.Close();










        }
    }
}