<%@ Page Title="" Language="C#" MasterPageFile="~/Payment/Paymenthome.Master" AutoEventWireup="true" CodeBehind="Recipt.aspx.cs" Inherits="Travel_With_Us.Payment.Recipt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Order Confirmation</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Shop Category</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->
  
  <!--================Order Details Area =================-->
  <section class="order_details section-margin--small">
    <div class="container">
      <p class="text-center billing-alert">Thank you. Your order has been received.</p>
        <div id="printContent">
      <div class="row mb-5">
        <div class="col-md-6 col-xl-4 mb-4 mb-xl-0">
          <div class="confirmation-card">
            <h3 class="billing-title">Order Info</h3>
            <table class="order-rable">
              <tr>
                <td>Order number</td>
                <td>: 60235</td>
              </tr>
              <tr>
                <td>Date</td>
                <td>: <asp:Label ID="date" runat="server" Text="Label"></asp:Label></td>
              </tr>
              <tr>
                <td>Total</td>
                <td>:₹ <asp:Label ID="totall" runat="server" Text="Label"></asp:Label></td>
              </tr>
              <tr>
                <td>Payment method</td>
                <td>: <asp:Label ID="paym" runat="server" Text="Label"></asp:Label> </td>
              </tr>
            </table>
          </div>
        </div>
        <div class="col-md-6 col-xl-4 mb-4 mb-xl-0">
          <div class="confirmation-card">
            <h3 class="billing-title">Billing Address</h3>
            <table class="order-rable">
              <tr>
                <td>Street</td>
                <td>: <asp:Label ID="address" runat="server" Text="Label"></asp:Label></td>
              </tr>
              <tr>
                <td>City</td>
                <td>: <asp:Label ID="cityy" runat="server" Text="Label"></asp:Label></td>
              </tr>
              <tr>
                <td>Country</td>
                <td>: <asp:Label ID="countryy" runat="server" Text="Label"></asp:Label></td>
              </tr>
              <tr>
                <td>Postcode</td>
                <td>: <asp:Label ID="zipcode" runat="server" Text="Label"></asp:Label></td>
              </tr>
            </table>
          </div>
        </div>
        <div class="col-md-6 col-xl-4 mb-4 mb-xl-0">
          <div class="confirmation-card">
            <h3 class="billing-title">Customer Details</h3>
            <table class="order-rable">
             
              <tr>
                <td>Name</td>
                <td>: <asp:Label ID="namee" runat="server" Text="Label"></asp:Label></td>
              </tr>
              <tr>
                <td>Email</td>
                <td>: <asp:Label ID="email" runat="server" Text="Label"></asp:Label></td>
              </tr>
              <tr>
                <td>Ph Number</td>
                <td>: <asp:Label ID="phnumber" runat="server" Text="Label"></asp:Label></td>
              </tr>
            </table>
          </div>
        </div>
      </div>
      <div class="order_details_table">
        <h2>Order Details</h2>
        <div class="table-responsive">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">Location</th>
                <th scope="col">Quantity</th>
                <th scope="col">Total</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>
                  <p><asp:Label ID="cityname" runat="server" Text="City"></asp:Label>,<asp:Label ID="country" runat="server" Text="Country"></asp:Label></p>
                </td>
                <td>
                  <h5>x <asp:Label ID="num1"   runat="server" Text="1"></asp:Label></h5>
                </td>
                <td>
                  <p>₹<asp:Label ID="cityprice" runat="server" Text="10000"></asp:Label>.00</p>
                </td>
              </tr>
              <tr>
                <td>
                  <p><asp:Label ID="room" runat="server"   Text="Room"></asp:Label></p>
                </td>
                <td>
                  <h5>x <asp:Label ID="num2" runat="server" Text="N"></asp:Label></h5>
                </td>
                <td>
                  <p>₹<asp:Label ID="roomprice" runat="server" Text="10000"></asp:Label>.00</p>
                </td>
              </tr>
              <tr>
                <td>
                  <p><asp:Label ID="people" runat="server"   Text="People"></asp:Label></p>
                </td>
                <td>
                  <h5>x <asp:Label ID="num3" runat="server" Text="N"></asp:Label></h5>
                </td>
                <td>
                  <p>₹<asp:Label ID="peopleprice" runat="server" Text="10000"></asp:Label>.00</p>
                </td>
              </tr>
              <tr>
                <td>
                  <h4>Subtotal</h4>
                </td>
                <td>
                  <h5></h5>
                </td>
                <td>
                  <p>₹<asp:Label ID="subtotal" runat="server" Text="Label"></asp:Label>.00</p>
                </td>
              </tr>
              <tr>
                <td>
                  <h4>Shipping</h4>
                </td>
                <td>
                  <h5></h5>
                </td>
                <td>
                  <p>Flat rate: ₹50.00</p>
                </td>
              </tr>
              <tr>
                <td>
                  <h4>Total</h4>
                </td>
                <td>
                  <h5></h5>
                </td>
                <td>
                  <h4>₹<asp:Label ID="total" runat="server" Text="Label"></asp:Label>.00</h4>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
        </div>

        <div class="text-center">
                           <asp:Button ID="pay" runat="server" class="button button-paypal"  Text="Print Recipt" OnClientClick="printContent()" />
                         
                        </div>
  </section>
  <!--================End Order Details Area =================-->
    <script>
        function printContent() {
            var printDiv = document.getElementById("printContent");
            var printContents = printDiv.innerHTML;
            var originalContents = document.body.innerHTML;
            document.body.innerHTML = printContents;
            window.print();
            document.body.innerHTML = originalContents;
        }
    </script>
</asp:Content>
