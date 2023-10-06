using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_With_Us.Payment
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void netbanking_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void Card_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void UPI_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (netbanking.Checked)
            {
                netbank.Visible = true;
                ccard.Visible = false;
                uupi.Visible = false;
                
            }
            else
            {
                netbank.Visible = false;
            }

            if (Card.Checked)
            {
                ccard.Visible = true;
                uupi.Visible = false;
                netbank.Visible = false;
               
            }
            else
            {
                ccard.Visible = false;
            }

            if (UPI.Checked)
            {
                uupi.Visible = true;
                ccard.Visible = false;
                netbank.Visible = false;
               
            }
            else
            {
                uupi.Visible = false;
            }
        }

        protected void neettba_Click(object sender, EventArgs e)
        {
            Session["paymethod"] = "Net Banking";
            Response.Redirect("Recipt.aspx");
        }

        protected void ccarrd_Click(object sender, EventArgs e)
        {
            Session["paymethod"] = "Card";
            Response.Redirect("Recipt.aspx");
        }

        protected void upppi_Click(object sender, EventArgs e)
        {
            Session["paymethod"] = "UPI";
            Response.Redirect("Recipt.aspx");
        }
    }
}