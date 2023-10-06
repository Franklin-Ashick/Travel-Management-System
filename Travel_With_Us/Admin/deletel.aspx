<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/addmin.Master" AutoEventWireup="true" CodeBehind="deletel.aspx.cs" Inherits="Travel_With_Us.Admin.deletel" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%
    // Get the loginID parameter from the query string
    int loginID = Convert.ToInt32(Request.QueryString["loginID"]);
    
    // Connect to the database
    string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
    SqlConnection connection = new SqlConnection(connectionString);
    connection.Open();
    
    // Execute a SQL query to delete the corresponding record from the Login table
    string query = "DELETE FROM Login WHERE LoginID=@loginID";
    SqlCommand command = new SqlCommand(query, connection);
    command.Parameters.AddWithValue("@loginID", loginID);
    command.ExecuteNonQuery();
     Response.Redirect("admindash.aspx");
    // Close the connection and dispose of the resources
    command.Dispose();
    connection.Close();
    connection.Dispose();
    %>
</asp:Content>
