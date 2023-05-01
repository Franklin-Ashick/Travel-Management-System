<%@ Page Title="" Language="C#" MasterPageFile="~/Payment/Paymenthome.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Billing.aspx.cs" Inherits="Travel_With_Us.Payment.Billing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .trip-details {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .trip-detail-item {
            display: flex;
            align-items: center;
        }

            .trip-detail-item:first-child {
                flex-grow: 1;
            }

        .num1 {
            margin: 0 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ================ start banner area ================= -->
    <section class="blog-banner-area" id="category">
        <div class="container h-100">
            <div class="blog-banner">
                <div class="text-center">
                    <h1>Trip Checkout</h1>
                    <nav aria-label="breadcrumb" class="banner-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Checkout</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- ================ end banner area ================= -->


    <!--================Checkout Area =================-->
    <section class="checkout_area section-margin--small">
        <div class="container">
            <div class="returning_customer">
                <div class="check_title">
                    <h3>Welcome  <a href="#">
                        <asp:Label ID="username" runat="server" Text="User Name"></asp:Label></a> !!</h3>
                </div>
                <p>Please Check Your details and the Proceed with the Payment</p>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                    <div class="col-md-6 form-group p_star">
                        <!-- <span class="placeholder" data-placeholder="Username or Email"></span> -->
                    </div>

                </form>
            </div>

            <div class="billing_details">
                <div class="row">
                    <div class="col-lg-8">
                        <h3>Billing Details</h3>
                        <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                            <div class="col-md-6 form-group p_star">
                                <asp:TextBox ID="Fullname" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>

                            </div>
                            <div class="col-md-6 form-group p_star">
                                <asp:TextBox ID="Lastname" class="form-control" placeholder="Last Name" runat="server" onfocus="this.placeholder = ''" ReadOnly="True" onblur="this.placeholder = 'Last Name'"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Lastname" ErrorMessage="Last Name is required." ForeColor="Red" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <asp:TextBox ID="phnumber" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>

                            </div>
                            <div class="col-md-6 form-group p_star">
                                <asp:TextBox ID="email" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>

                            </div>
                            <div class="col-md-12 form-group p_star">
                                <asp:DropDownList ID="countries" class="country_select" runat="server" ReadOnly="True">
                                    <asp:ListItem>Countries</asp:ListItem>
                                    <asp:ListItem>India</asp:ListItem>
                                    <asp:ListItem>Germany</asp:ListItem>
                                    <asp:ListItem>United Kingdom</asp:ListItem>
                                    <asp:ListItem>France</asp:ListItem>
                                    <asp:ListItem>Maldives</asp:ListItem>
                                    <asp:ListItem>Japan</asp:ListItem>
                                    <asp:ListItem>Thailand</asp:ListItem>
                                    <asp:ListItem>Malaysia</asp:ListItem>
                                    <asp:ListItem>United States</asp:ListItem>
                                    <asp:ListItem>United Arab Emirates</asp:ListItem>
                                    <asp:ListItem>Vietnam</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="countries" ErrorMessage="Countries is required." ForeColor="Red" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <asp:TextBox ID="Address" class="form-control" placeholder="Address" runat="server" ReadOnly="True" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Address'"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Address" ErrorMessage="Address is required." ForeColor="Red" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>

                            <div class="col-md-12 form-group p_star">
                                <asp:TextBox ID="City" class="form-control" placeholder="City" runat="server" ReadOnly="True" onfocus="this.placeholder = ''" onblur="this.placeholder = 'City'"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="City" ErrorMessage="City is required." ForeColor="Red" Display="Dynamic">
                                </asp:RequiredFieldValidator>

                            </div>
                            <div class="col-md-6 form-group p_star">
                                <asp:TextBox ID="State" class="form-control" placeholder="State" runat="server" ReadOnly="True" onfocus="this.placeholder = ''" onblur="this.placeholder = 'State'"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="State" ErrorMessage="State is required." ForeColor="Red" Display="Dynamic">
                                </asp:RequiredFieldValidator>

                            </div>
                            <div class="col-md-6 form-group p_star">
                                <asp:TextBox ID="ZipCode" class="form-control" placeholder="ZIP Code" runat="server" ReadOnly="True" onfocus="this.placeholder = ''" onblur="this.placeholder = 'ZIP Code'"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ZipCode" ErrorMessage="ZipCode is required." ForeColor="Red" Display="Dynamic">
                                </asp:RequiredFieldValidator>

                            </div>



                        </form>
                    </div>
                    <div class="col-lg-4">
                        <div class="order_box">
            
                            <h2>Your Trip Details</h2>
                            <ul class="list">
                                <li>
                                    <a href="#">
                                        <h4>Location <span>Total</span></h4>
                                    </a>
                                </li>
                                <li>
                                    <div class="trip-details">
                                        <div class="trip-detail-item">
                                            <asp:Label ID="cityname" runat="server" Text="City"></asp:Label>,
                                            <asp:Label ID="country" runat="server" Text="Country"></asp:Label>
                                        </div>
                                        <div class="trip-detail-item">
                                            <span class="num1">x
                                                <asp:Label ID="num1" runat="server" Text="1"></asp:Label>
                                            </span>
                                        </div>
                                        <div class="trip-detail-item">
                                            <span class="last">$<asp:Label ID="cityprice" runat="server" Text="10000"></asp:Label>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="trip-details">
                                        <div class="trip-detail-item">
                                            <asp:Label ID="room" runat="server" Text="Room"></asp:Label>
                                        </div>
                                        <div class="trip-detail-item">
                                            <span class="num1">x
                <asp:Label ID="norooms" runat="server" Text="N"></asp:Label>
                                            </span>
                                        </div>
                                        <div class="trip-detail-item">
                                            <span class="last">$<asp:Label ID="roomprice" runat="server" CssClass="last" Text="1000"></asp:Label>

                                            </span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="trip-details">
                                        <div class="trip-detail-item">
                                            <asp:Label ID="people" runat="server" Text="Num-People"></asp:Label>
                                        </div>
                                        <div class="trip-detail-item">
                                            <span class="num1">x&nbsp;
                                              <asp:Label ID="nopeople" runat="server" Text="N" Style="text-align: center"></asp:Label>
                                            </span>
                                        </div>
                                        <div class="trip-detail-item">
                                            <span class="last">$<asp:Label ID="tpprice" runat="server" Text="1000"></asp:Label>

                                            </span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <ul class="list list_2">
                                <li>
                                    <a href="#">Subtotal <span>$<asp:Label ID="subtotal" runat="server" Text="Label"></asp:Label></span></a>
                                </li>
                                <li>
                                    <a href="#">Online Charges <span>Flat rate: $50.00</span></a>
                                </li>
                                <li>
                                    <a href="#">Total <span>$<asp:Label ID="total" runat="server" Text="Label"></asp:Label></span></a>
                                </li>
                            </ul>
                            <div class="payment_item active">
                                <div class="radion_btn">
                                    <input type="radio" id="f-option6" name="selector">
                                    <label for="f-option6">Checked </label>
                                    <img src="img/product/card.jpg" alt="">
                                    <div class="check"></div>
                                </div>
                                <p>Please Check Your details and items before proceding to payment</p>
                            </div>
                            <div class="creat_account">
                                <input type="checkbox" id="f-option4" name="selector">
                                <label for="f-option4">I’ve read and accept the </label>
                                <a href="#">terms & conditions*</a>
                            </div>
                            <div class="text-center">
                                <asp:Button ID="pay" runat="server" class="button " OnClick="pay_Click" Text="Proceed to Payment" />

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Checkout Area =================-->

    <!--================End Checkout Area =================-->

</asp:Content>
