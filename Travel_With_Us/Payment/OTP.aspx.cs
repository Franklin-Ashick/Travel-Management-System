using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Twilio;
using Twilio.Rest.Api.V2010.Account;


namespace Travel_With_Us.Payment
{
    public partial class OTP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            phone.Text = Session["phnumber"].ToString();
            if (IsPostBack)
            {
                // Twilio Account SID and Auth Token
                const string accountSid = "Account ID";
                const string authToken = "Token Number";

                // Phone number to send OTP from (must be a Twilio verified phone number)
                const string fromPhone = "+Phone Number";

                // Generate a random 6-digit OTP
                var rand = new Random();
                var otp = rand.Next(100000, 999999);

                // Phone number to send OTP to (extracted from form submission)
                var toPhone = "+91" + Request.Form["phone"];

                // Create a Twilio SMS message
                TwilioClient.Init(accountSid, authToken);
                var message = MessageResource.Create(
                    body: "Your OTP is: " + otp,
                    from: new Twilio.Types.PhoneNumber(fromPhone),
                    to: new Twilio.Types.PhoneNumber(toPhone)
                );

                // Store the OTP in the user's session
                Session["otp"] = otp;
                Session["phone"] = toPhone;

                // Redirect to OTP verification page
                Response.Redirect("otpverify.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}
