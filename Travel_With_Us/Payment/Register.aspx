<%@ Page Title="" Language="C#" MasterPageFile="~/Payment/Paymenthome.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Travel_With_Us.Payment.Register" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ================ start banner area ================= -->
    <section class="blog-banner-area" id="category">
        <div class="container h-100">
            <div class="blog-banner">
                <div class="text-center">
                    <h1>Register</h1>
                    <nav aria-label="breadcrumb" class="banner-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Register</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- ================ end banner area ================= -->

    <!--================Login Box Area =================-->
    <section class="login_box_area section-margin">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login_box_img">
                        <div class="hover">
                            <h4>Already have an account?</h4>
                            <p>There are advances being made in science and technology everyday, and a good example of this is the</p>
                            <a class="button button-account" href="Login.aspx">Login Now</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login_form_inner register_form_inner">
                        <h3>Create an account </h3>
                        <b>
                            <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                        </b>
                        <form class="row login_form" id="register_form">
                            <div class="col-md-12 form-group">
                                <asp:TextBox ID="Username" class="form-control" placeholder="Username" runat="server" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Username" ErrorMessage="Username is required." ValidationGroup="vgRegister" ForeColor="Red" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-12 form-group">
                                <asp:TextBox ID="Fullname" class="form-control" placeholder="Full Name" runat="server" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Full Name'"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Fullname" ErrorMessage="Full Name is required." ValidationGroup="vgRegister" ForeColor="Red" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <asp:TextBox ID="Lastname" class="form-control" placeholder="Last Name" runat="server" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Last Name'"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Lastname" ErrorMessage="Last Name is required." ValidationGroup="vgRegister" ForeColor="Red" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-12 form-group">
                                <asp:TextBox ID="phnumber" class="form-control" runat="server" placeholder="Phone Number" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone Number'"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="phnumberValidator" runat="server" ControlToValidate="phnumber" ValidationGroup="vgRegister" ErrorMessage="Phone Number must be 10 digits." ValidationExpression="^\d{10}$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                            <div class="col-md-12 form-group">
                                <asp:TextBox ID="email" class="form-control" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="email" ErrorMessage="Email is required." ValidationGroup="vgRegister" ForeColor="Red" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" ControlToValidate="email" ForeColor="Red" ValidationGroup="vgRegister" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                    Display="Dynamic" ErrorMessage="Invalid email address" />
                            </div>

                            <div class="col-md-12 form-group">
                                <asp:TextBox ID="password" runat="server" class="form-control" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'"></asp:TextBox>

                                <asp:RequiredFieldValidator runat="server" ControlToValidate="password" ErrorMessage="Password is required." ValidationGroup="vgRegister" ForeColor="Red" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-12 form-group">
                                <asp:TextBox ID="confpassword" runat="server" class="form-control" placeholder="Confirm Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Confirm Password'"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="confpassword" ErrorMessage="Confirmation Password is required." ValidationGroup="vgRegister" ForeColor="Red" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                                <asp:CompareValidator runat="server" ControlToCompare="password" ControlToValidate="confpassword" ValidationGroup="vgRegister" ErrorMessage="Passwords do not match." ForeColor="Red" Display="Dynamic">
                                </asp:CompareValidator>
                            </div>

                            <div class="col-md-6 form-group ">
                                <asp:DropDownList ID="countries" class="country_select" runat="server">
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


                            </div>



                            <div class="col-md-12 form-group p_star">
                                <asp:TextBox ID="Address" class="form-control" placeholder="Address" runat="server" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Address'"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Address" ErrorMessage="Address is required." ValidationGroup="vgRegister" ForeColor="Red" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>



                            <div class="col-md-12 form-group p_star">
                                <asp:TextBox ID="City" class="form-control" placeholder="City" runat="server" onfocus="this.placeholder = ''" onblur="this.placeholder = 'City'"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="City" ErrorMessage="City is required." ValidationGroup="vgRegister" ForeColor="Red" Display="Dynamic">
                                </asp:RequiredFieldValidator>


                            </div>


                            <div class="col-md-12 form-group p_star">
                                <asp:TextBox ID="State" class="form-control" placeholder="State" runat="server" onfocus="this.placeholder = ''" onblur="this.placeholder = 'State'"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="State" ErrorMessage="State is required." ValidationGroup="vgRegister" ForeColor="Red" Display="Dynamic">
                                </asp:RequiredFieldValidator>

                            </div>
                            <div class="col-md-12 form-group p_star">
                                <asp:TextBox ID="ZipCode" class="form-control" placeholder="ZIP Code" runat="server" onfocus="this.placeholder = ''" onblur="this.placeholder = 'ZIP Code'"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ZipCode" ErrorMessage="ZipCode is required." ValidationGroup="vgRegister" ForeColor="Red" Display="Dynamic">
                                </asp:RequiredFieldValidator>

                            </div>
                            

                           <div class="col-md-12 form-group">
                                <asp:Button ID="verify" runat="server" Text="Verify" OnClick="verify_Click" class="button button-register w-100"  ValidationGroup="vgRegister" />
                          
               <%--OnClientClick="showPopup(); return false;"--%>      
                               <asp:Button ID="register" runat="server" Text="Register" OnClick="register_Click" class="button button-register w-100" Visible="false" ValidationGroup="vgRegister" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script type="text/javascript">
        function showPopup() {
            var w = 400;
            var h = 300;
            var left = (screen.width / 2) - (w / 2);
            var top = (screen.height / 2) - (h / 2);
            var popup = window.open('OTP.aspx', 'Popup', 'width=' + w + ',height=' + h + ',left=' + left + ',top=' + top);
        }
    </script>
    <!--================End Login Box Area =================-->
</asp:Content>
