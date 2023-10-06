<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/addmin.Master" AutoEventWireup="true" CodeBehind="admindash.aspx.cs" Inherits="Travel_With_Us.Admin.admindash" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-lg-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">User Details</h4>

                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Action</th>
                                            <th>Login ID</th>

                                            <th>Username</th>
                                            <th>Password</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% 
                                            // Connect to the database
                                            string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
                                            SqlConnection connection = new SqlConnection(connectionString);
                                            connection.Open();

                                            // Execute a SQL query to retrieve all records from the Billing table
                                            string query = "SELECT * FROM Login";
                                            SqlCommand command = new SqlCommand(query, connection);
                                            SqlDataReader reader = command.ExecuteReader();

                                            // Loop through the records and display them in the HTML table
                                            while (reader.Read())
                                            {
                                                int LoginID = (int)reader["LoginID"];
                                                string username = (string)reader["Username"];
                                                string password = (string)reader["Password"];


                                        %>
                                        <tr>
                                            <td><a href="deletel.aspx?loginID=<%= LoginID %>">Delete</a></td>
                                            <!-- New column -->
                                            <td><%= LoginID %></td>
                                            <td><%= username %></td>
                                            <td><%= password %></td>

                                        </tr>
                                        <%
                                            }

                                            // Close the connection and dispose of the resources
                                            reader.Close();
                                            connection.Close();
                                            reader.Dispose();
                                            command.Dispose();
                                            connection.Dispose();
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-xl-3 d-flex grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex flex-wrap justify-content-between">
                                <h4 class="card-title mb-3">Funds</h4>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="mb-5">
                                        <div class="mr-1">
                                            <div class="text-info mb-1">
                                                Total Earning
                           
                                            </div>
                                            <h2 class="mb-2 mt-2 font-weight-bold">₹<asp:Label ID="Label1" runat="server" Text="total"></asp:Label></h2>
                                            <div class="font-weight-bold">
                                                1.4%  Since Last Month
                           
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="mr-1">
                                            <div class="text-info mb-1">
                                                Total Profits
                           
                                            </div>
                                            <h2 class="mb-2 mt-2  font-weight-bold">₹<asp:Label ID="Label2" runat="server" Text="Profits"></asp:Label></h2>
                                            <div class="font-weight-bold">
                                                5.43%  Since Last Month
                           
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Booking Details</h4>
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Action</th>
                                            <th>Billing ID</th>
                                            <th>Username</th>
                                            <th>Phone Number</th>
                                            <th>City</th>
                                            <th>Country</th>

                                            <th>Hotel Name</th>
                                            <th>Hotel Price</th>
                                            <th>Number of Rooms</th>
                                            <th>Room Price</th>
                                            <th>Number of People</th>
                                            <th>Person Price</th>

                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% 
                                            // Connect to the database
                                            string connectionStringg = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
                                            SqlConnection connectiong = new SqlConnection(connectionStringg);
                                            connectiong.Open();

                                            // Execute a SQL query to retrieve all records from the Billing table
                                            string queryg = "SELECT * FROM Billing";
                                            SqlCommand commandg = new SqlCommand(queryg, connectiong);
                                            SqlDataReader readerg = commandg.ExecuteReader();

                                            // Loop through the records and display them in the HTML table
                                            while (readerg.Read())
                                            {
                                                int billingID = (int)readerg["BillingID"];
                                                string username = (string)readerg["Username"];
                                                string phnumber = (string)readerg["Phnumber"];
                                                string city = (string)readerg["City"];
                                                string country = (string)readerg["Country"];
                                                string hotelname = (string)readerg["Hotelname"];
                                                string hprice = (string)readerg["Hprice"];
                                                string nroom = (string)readerg["NRoom"];
                                                string rprice = (string)readerg["Rprice"];
                                                string npeople = (string)readerg["NPeople"];
                                                string pprice = (string)readerg["Pprice"];

                                                string total = (string)readerg["Total"];

                                        %>
                                        <tr>
                                            <td><a href="delete.aspx?billingID=<%= billingID %>">Delete</a></td>
                                            <!-- New column -->
                                            <td><%= billingID %></td>
                                            <td><%= username %></td>
                                            <td><%= phnumber %></td>
                                            <td><%= city %></td>
                                            <td><%= country %></td>
                                            <td><%= hotelname %></td>
                                            <td><%= hprice %></td>
                                            <td><%= nroom %></td>
                                            <td><%= rprice %></td>
                                            <td><%= npeople %></td>
                                            <td><%= pprice %></td>
                                            <td><%= total %></td>
                                        </tr>
                                        <%
                                            }

                                            // Close the connection and dispose of the resources
                                            readerg.Close();
                                            connectiong.Close();
                                            readerg.Dispose();
                                            commandg.Dispose();
                                            connectiong.Dispose();
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
               <div class="col-lg-12 stretch-card">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Hotel Details</h4>
            <p class="card-description">Edit option Available</p>
            <div class="table-responsive pt-3">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Action</th>
                            <th>HId</th>
                            <th>Hotel Name</th>
                            <th>Hotel Price</th>
                              <th>City</th>
                            <th>Country</th>
                            <th>Hotel Code</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                            // Connect to the database
                            string connectionStringgg = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
                            SqlConnection connectiongg = new SqlConnection(connectionStringgg);
                            connectiongg.Open();

                            // Execute a SQL query to retrieve all records from the Billing table
                            string querygg = "SELECT * FROM Hotel";
                            SqlCommand commandgg = new SqlCommand(querygg, connectiongg);
                            SqlDataReader readergg = commandgg.ExecuteReader();

                            // Loop through the records and display them in the HTML table
                            while (readergg.Read())
                            {
                                int billingID = (int)readergg["H_Id"];
                                string username = (string)readergg["H_name"];
                                string phnumber = (string)readergg["H_price"];
                                string city = (string)readergg["H_city"];
                                string country = (string)readergg["H_country"];
                                string hotelname = (string)readergg["H_num"];
                            %>
                            <tr>
                                <td><a href="edit.aspx?billingID=<%= billingID %>">Edit</a></td>
                                <td><%= billingID %></td>
                                <td><%= username %></td>
                                <td><%= phnumber %></td>
                                <td><%= city %></td>
                                <td><%= country %></td>
                                <td><%= hotelname %></td>
                            </tr>
                            <% 
                                }
                                // Close the connection and dispose of the resources
                                readergg.Close();
                                connectiong.Close();
                                readerg.Dispose();
                                commandg.Dispose();
                                connectiong.Dispose();
                            %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
            </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->

        <!-- partial -->
    </div>

</asp:Content>
