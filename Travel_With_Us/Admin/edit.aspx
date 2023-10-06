<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/addmin.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="Travel_With_Us.Admin.edit" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <% 
        // Get the billingID parameter from the query string
        int billingID = int.Parse(Request.QueryString["billingID"]);

        // Connect to the database
        string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);
        connection.Open();

        // Execute a SQL query to retrieve the record to be edited
        string query = "SELECT * FROM Hotel WHERE H_Id = @H_Id";
        SqlCommand command = new SqlCommand(query, connection);
        command.Parameters.AddWithValue("@H_Id", billingID);
        SqlDataReader reader = command.ExecuteReader();

        // Check if a record was found
        if (reader.Read())
        {
            // Get the values of the fields to be edited
            string hotelName = (string)reader["H_name"];
            string hotelPrice = (string)reader["H_price"];

            // Display a form with the fields to be edited
            %>
            <form method="post">
                <label>Hotel Name:</label>
                <input type="text" name="hotelName" value="<%= hotelName %>" /><br /><br />
                <label>Hotel Price:</label>
                <input type="text" name="hotelPrice" value="<%= hotelPrice %>" /><br /><br />
                <input type="submit" value="Update" />
            </form>
            <%
        }
        else
        {
            // Display an error message if a record was not found
            Response.Write("Record not found.");
        }

        // Close the connection and dispose of the resources
        reader.Close();
        connection.Close();
        reader.Dispose();
        command.Dispose();
        connection.Dispose();
    %>
    <br />
    <a href="admindash.aspx">Back to List</a>
<%
    // Check if the form was submitted
    if (Request.HttpMethod == "POST")
    {
        // Get the values of the fields from the form
        string hotelName = Request.Form["hotelName"];
        string hotelPrice = Request.Form["hotelPrice"];

        // Connect to the database
        SqlConnection connection2 = new SqlConnection(connectionString);
        connection2.Open();

        // Execute a SQL query to update the record
        string query2 = "UPDATE Hotel SET H_name = @H_name, H_price = @H_price WHERE H_Id = @H_Id";
        SqlCommand command2 = new SqlCommand(query2, connection2);
        command2.Parameters.AddWithValue("@H_name", hotelName);
        command2.Parameters.AddWithValue("@H_price", hotelPrice);
        command2.Parameters.AddWithValue("@H_Id", billingID);
        int result = command2.ExecuteNonQuery();

        // Display a message indicating whether the update was successful
        if (result > 0)
        {
            Response.Write("<p>Record updated successfully.</p>");
        }
        else
        {
            Response.Write("<p>Record not updated.</p>");
        }

        // Close the connection and dispose of the resources
        connection2.Close();
        command2.Dispose();
        connection2.Dispose();
    }
%>
</asp:Content>
