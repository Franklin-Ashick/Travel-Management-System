<%@ Page Title="" Language="C#" MasterPageFile="~/Payment/Paymenthome.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Travel_With_Us.Payment.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<!--================ End Header Menu Area =================-->
  
  <!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Login / Register</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Login/Register</li>
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
							<h4>New to our website?</h4>
							<p>There are advances being made in science and technology everyday, and a good example of this is the</p>
							<a class="button button-account" href="Register.aspx">Create an Account</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>Log in to enter</h3>
						 <b><asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label> </b>
						<form class="row login_form" action="#/" id="contactForm" >
							<div class="col-md-12 form-group">
								 <asp:TextBox ID="Username" class="form-control" placeholder="Username" runat="server" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'"></asp:TextBox>
                                          <asp:RequiredFieldValidator runat="server" ControlToValidate="Username" ErrorMessage="Username is required." ForeColor="Red" Display="Dynamic">
                                          </asp:RequiredFieldValidator>

							</div>
							<div class="col-md-12 form-group">
								 <asp:TextBox ID="password" runat="server" class="form-control" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'"></asp:TextBox>

                                          <asp:RequiredFieldValidator runat="server" ControlToValidate="password"   ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic">
                                          </asp:RequiredFieldValidator>
                                    	</div>
							<div class="col-md-12 form-group">
								<div class="creat_account">
									<input type="checkbox" id="f-option2" name="selector">
									<label for="f-option2">Keep me logged in</label>
								</div>
							</div>
							<div class="col-md-12 form-group">
								 <asp:Button ID="login" runat="server" Text="Log In" OnClick="login_Click" class="button button-register w-100" />
								<a href="#">Forgot Password?</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</asp:Content>
