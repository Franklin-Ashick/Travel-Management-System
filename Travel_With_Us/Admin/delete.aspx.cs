using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_With_Us.Admin
{
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string billingIDString = Request.QueryString["billingID"];

            if (!string.IsNullOrEmpty(billingIDString))
            {
                int billingID = int.Parse(billingIDString);

                // Connect to the database and execute a SQL command to delete the record with the specified BillingID value
                string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                string query = "DELETE FROM Billing WHERE BillingID = @BillingID";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@BillingID", billingID);
                command.ExecuteNonQuery();

                // Close the connection and redirect back to the admin dashboard page
                connection.Close();
                Response.Redirect("admindash.aspx");
            }
            else
            {
                // handle the error or redirect to another page
            }
        }
    }
}