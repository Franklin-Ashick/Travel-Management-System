using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;

namespace Travel_With_Us.Admin
{
    public partial class admindash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionStringg = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            SqlConnection connectiong = new SqlConnection(connectionStringg);
            connectiong.Open();

            // Execute a SQL query to retrieve all records from the Billing table
            string queryg = "SELECT * FROM Billing";
            SqlCommand commandg = new SqlCommand(queryg, connectiong);
            SqlDataReader readerg = commandg.ExecuteReader();

            decimal totalAmount = 0; // Initialize the total amount to 0
            decimal tA = 0;
            // Loop through the records and display them in the HTML table
            while (readerg.Read())
            {
                // Retrieve the total amount for the current record and add it to the running total
                decimal recordTotal;
                decimal.TryParse(readerg["Total"].ToString(), out recordTotal);
                totalAmount += recordTotal;

              

                // ... the rest of the loop code to display the table rows ...
            }
           
            decimal tb = totalAmount - 12000 ;
            // Store the total amount in a label
            Label1.Text = totalAmount.ToString();
            Label2.Text = tb.ToString();

            // Close the connection and dispose of the resources
            readerg.Close();
            commandg.Dispose();
            connectiong.Close();
            connectiong.Dispose();



            string billingIDString = Request.QueryString["billingID"];
            if (!string.IsNullOrEmpty(billingIDString))
            {
                int billingID = int.Parse(billingIDString);
                // rest of the code
             

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
            // Retrieve the BillingID value from the query string
           
        }


    }
}