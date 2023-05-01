<%@ Page Title="" Language="C#" MasterPageFile="~/Payment/Paymenthome.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" EnableEventValidation="false" Inherits="Travel_With_Us.Payment.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    \
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
    <section class="login_box_area section-margin">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login_box_img">
                        <div class="hover">
                            <h4>Choose the Payment method</h4>
                            <p>----------------------------------------------------------------------------------------------</p>
                            <asp:RadioButton ID="netbanking" runat="server" class="form-control" Text="NET Banking 1" GroupName="Group1" OnCheckedChanged="netbanking_CheckedChanged" />
                            <asp:RadioButton ID="Card" runat="server" class="form-control" Text="Card/Debit" GroupName="Group1" OnCheckedChanged="Card_CheckedChanged" />
                            <asp:RadioButton ID="UPI" runat="server" class="form-control" Text="UPI" GroupName="Group1" OnCheckedChanged="UPI_CheckedChanged" />
                            <p>----------------------------------------------------------------------------------------------</p>
                            <div class="col-md-12 form-group">
                                <asp:Button ID="Button1" runat="server" Text="Select" class="button button-register w-100" OnClick="Button1_Click" />

                            </div>

                        </div>

                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login_form_inner">
                        <h3>Please Continue With the Payment</h3>
                        <form class="row login_form" action="#/" id="contactForm">

                            <asp:Panel ID="netbank" runat="server" Visible="False">
                                <div class="col-md-12 form-group">
                                    <asp:TextBox ID="Username" class="form-control" placeholder="Username" runat="server" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Username" ErrorMessage="Username is required." ForeColor="Red" Display="Dynamic">
                                    </asp:RequiredFieldValidator>

                                </div>
                                <div class="col-md-12 form-group">
                                    <asp:TextBox ID="password" runat="server" class="form-control" placeholder="netttPassword" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'"></asp:TextBox>

                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="password" ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-12 form-group">
                                    <asp:Button ID="neettba" runat="server" Text="Pay" class="button button-register w-100" OnClick="neettba_Click" />

                                </div>
                            </asp:Panel>
                            <asp:Panel ID="ccard" runat="server" Visible="False">
                                <div class="col-md-12 form-group">
                                    <asp:TextBox ID="TextBox1" class="form-control" placeholder="Username" runat="server" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Username" ErrorMessage="Username is required." ForeColor="Red" Display="Dynamic">
                                    </asp:RequiredFieldValidator>

                                </div>
                                <div class="col-md-12 form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="carrrPassword" onfocus="this.placeholder = ''" onblur="this.placeholder = 'carrPassword'"></asp:TextBox>

                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="password" ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-12 form-group">
                                    <asp:Button ID="ccarrd" runat="server" Text="Pay" class="button button-register w-100" OnClick="ccarrd_Click" />

                                </div>
                </asp:Panel>
							 
                <asp:Panel ID="uupi" runat="server" Visible="False">
                    
                        <img src="img/upi-qr-code.png" />
                    
                    <div class="col-md-12 form-group">
                        <asp:Button ID="upppi" runat="server" Text="Pay" class="button button-register w-100" OnClick="upppi_Click" />

                    </div>
                </asp:Panel>
                
						</form>
				
            </div>
        </div>
        </div>
		</div>

    </section>
</asp:Content>
