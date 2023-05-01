using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_With_Us.Payment
{
    public partial class otpverify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["otp"] == null || Session["phone"] == null)
            {
                // redirect to send_otp page if otp and phone number are not stored in session
                Response.Redirect("OTP.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Session["otp"] == null || Session["phone"] == null)
            {
                // Redirect to send_otp page if OTP and phone number are not stored in session
                string script = "window.opener.location.href = 'Register.aspx'; window.close();";
                ScriptManager.RegisterStartupScript(this, GetType(), "Close", script, true);
            }
            else
            {
                // Get the stored OTP and phone number from the session
                var storedOtp = (int)Session["otp"];
                var phone = (string)Session["phone"];

                // Get the OTP entered by the user
                var enteredOtp = int.Parse(Request.Form["room"]);

                if (enteredOtp == storedOtp)
                {
                    // OTP is valid, redirect to success page
                    // Close popup form and return to main page
                    string script = "window.opener.location.href = 'Register.aspx'; window.close();";
                    ScriptManager.RegisterStartupScript(this, GetType(), "Close", script, true);
                }
                else
                {
                    // OTP is invalid, show error message
                    Label1.Text = "Invalid OTP. Please try again.";
                }
            }
        }
    }
}