using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.PeerToPeer;
using System.Reflection.Emit;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;

namespace Travel_With_Us.Payment
{
    public partial class Billing : System.Web.UI.Page
    {
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        string str = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            username.Text = Session["Username"].ToString();
            string Username = Session["Username"].ToString();
            cityname.Text = Session["city"].ToString();
            country.Text = Session["country"].ToString();
            cityprice.Text = Session["cityprice"].ToString();
            room.Text = Session["hotelname"].ToString();

            norooms.Text = Session["norooms"].ToString();
            nopeople.Text = Session["nopeople"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

            str = "select * from UserProfile WHERE Username='" + Session["Username"] + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                if (dr.Read())
                {
                    Fullname.Text = dr["Name"].ToString();
                    Lastname.Text = dr["Lastname"].ToString();
                    email.Text = dr["Email"].ToString();
                    countries.SelectedValue = dr["Countries"].ToString();
                    phnumber.Text = dr["PhNumber"].ToString();
                    Address.Text = dr["Address"].ToString();
                    City.Text = dr["City"].ToString();
                    State.Text = dr["State"].ToString();
                    ZipCode.Text = dr["ZipCode"].ToString();
                   
                }
            }
            con.Close();
            int cp, rp, np, nrp, npr;
            int.TryParse(Session["cityprice"].ToString(), out cp);
            int.TryParse(Session["hotelprice"].ToString(), out rp);
            int.TryParse(Session["nopeople"].ToString(), out np);
            int.TryParse(Session["norooms"].ToString(), out nrp);
            //int.TryParse(Session["perperson"].ToString(), out npr);
            npr = 150;
            // Add the integer values together
            int troom = rp * nrp ;
            int tpeople = np * npr;
            int subt = cp +tpeople+ troom;
            int Total = subt + 50;
            // Store the sum in a new session variable
            Session["total"] = Total;
            subtotal.Text= subt.ToString();
            roomprice.Text = troom.ToString();
            tpprice.Text = tpeople.ToString();
            total.Text= Total.ToString();

        }

        protected void pay_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Billing(Username,Phnumber,City,Country,Cityprice,Hotelname,Hprice,NRoom,Rprice,NPeople,Pprice,STotal,Total) values('" + Session["Username"] +
                    "','" + phnumber.Text + "','" + Session["city"] + "','" + Session["country"] + "','" + Session["cityprice"] + "','" + Session["hotelname"] + "','" + Session["hotelprice"] +
                    "','" + Session["norooms"] + "','" + roomprice.Text + "','" + Session["nopeople"] + "','" + tpprice.Text + "','" + subtotal.Text + "','" + total.Text + "')", con);
                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                {
                   
                    con.Close();
                   
                    HtmlMeta meta = new HtmlMeta();
                    meta.HttpEquiv = "Refresh";
                    meta.Content = "2;url=Payment.aspx";
                    this.Page.Controls.Add(meta);

                }
                else
                {
                    con.Close();
                   
                }
            }

          
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}