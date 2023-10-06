using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;
using System.Web.UI.HtmlControls;
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using System.Net.PeerToPeer;
using Twilio.TwiML.Voice;
using System.Reflection.Emit;


namespace Travel_With_Us.Payment
{
    public partial class Register : System.Web.UI.Page
    {
       
        string str = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Visible = false;
            if (Session["otp"] != null || Session["phone"] != null)
            {
                // Redirect to send_otp page if OTP and phone number are not stored in session
                register.Visible = true;
                 verify.Visible = false;  

                foreach (TextBox textBox in Controls.OfType<TextBox>())
                {
                    textBox.ReadOnly = true;
                }
                Fullname.Text = Session["Ffullname"].ToString(); 
                Username.Text = Session["Uusername"].ToString();
                password.Text = Session["password"].ToString(); 
                phnumber.Text = Session["phnumber"].ToString(); 
                confpassword.Text = Session["confpassword"].ToString();
                email.Text = Session["email"].ToString(); 
                countries.SelectedValue = Session["countries"].ToString(); 
                Address.Text = Session["Address"].ToString(); 
                City.Text = Session["City"].ToString(); 
                State.Text = Session["State"].ToString();
                ZipCode.Text = Session["ZipCode"].ToString(); 
                Lastname.Text = Session["Lastname"].ToString(); 

            }

        }

        protected void register_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into UserProfile(Name,Username,Password,PhNumber,Email,Countries,Address,City,State,ZipCode,Lastname) values('" + Fullname.Text + 
                    "','" + Username.Text + "','" + password.Text + "','" + phnumber.Text + "','" + email.Text + "','" + countries.SelectedValue + "','" + Address.Text + 
                    "','" + City.Text + "','" + State.Text + "','" + ZipCode.Text + "','" + Lastname.Text + "')", con);
                int r = cmd.ExecuteNonQuery();
                 if (r > 0)
                {
                    SqlCommand cmd2 = new SqlCommand("insert into Login (Username,Password) values('" + Username.Text + "','" + password.Text + "')", con);
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    lblMsg.Visible = true;
                    lblMsg.Text = " Registered Successfull !  Go To login";
                    lblMsg.CssClass = "alert alert-success";
                    HtmlMeta meta = new HtmlMeta();
                    meta.HttpEquiv = "Refresh";
                    meta.Content = "3;url=Login.aspx";
                    this.Page.Controls.Add(meta);
                
                                    }
                else
                {
                    con.Close();
                    lblMsg.Visible = true;
                    lblMsg.Text = " Cannot save record right now , plz try after sometime .. ! ";
                    lblMsg.CssClass = "alert alert-danger";
                }
            }

            catch (SqlException ex)
            {
                if (ex.Message.Contains("Violation of UNIQUE KEY constraint"))
                {

                    lblMsg.Visible = true;
                    lblMsg.Text = "<bv>" + Username.Text.Trim() + "</b> Username already exist, try new one ";
                    lblMsg.CssClass = "alert alert-danger";
                }
                else
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void verify_Click(object sender, EventArgs e)
        {
            Session["Ffullname"] = Fullname.Text;
            Session["Uusername"] = Username.Text;
            Session["password"] = password.Text;
            Session["phnumber"] = phnumber.Text;
            Session["confpassword"] = confpassword.Text;
            Session["email"] = email.Text;
            Session["countries"] = countries.SelectedValue;
            Session["Address"] = Address.Text;
            Session["City"] = City.Text;
            Session["State"] = State.Text;
            Session["ZipCode"] = ZipCode.Text;
            Session["Lastname"] = Lastname.Text;


            // Register a script block to call the showPopup() function
            string script = "<script type=\"text/javascript\">showPopup();</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "ShowPopupScript", script);

        }
    }
}