using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Web.UI.HtmlControls;

namespace Travel_With_Us.Payment
{
    public partial class Login : System.Web.UI.Page
    {
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        string str = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Visible = false;
        }

        protected void login_Click(object sender, EventArgs e)
        {
            bool Flag = false;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from Login";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string UUsername = dr[1].ToString();
                string Password = dr[2].ToString();
                if (Username.Text == UUsername && password.Text == Password)
                {
                   
                    Flag = true;

                }
            }
            dr.Close();

            if (Flag == true)
            {
                    lblMsg.Visible = true;
                    Session["Username"] = Username.Text;
                    lblMsg.ForeColor = System.Drawing.Color.Green;
                    Response.Redirect("Billing.aspx");
         
            }
            else if (Flag == false)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "&emsp; Wrong Password. Try Again";
                lblMsg.ForeColor = System.Drawing.Color.Red;

            }



            con.Close();

        }
    }
}