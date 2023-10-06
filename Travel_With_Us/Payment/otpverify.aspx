<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="otpverify.aspx.cs" Inherits="Travel_With_Us.Payment.otpverify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   	<title>OTP Verification</title>
	<style>
		body {
			background-image: url('img/bgg.jpg');
			background-size: cover;
		}
        .center {
			margin: auto;
			width: 50%;
			padding: 10px;
			text-align: center;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			 <div class="center">
            <asp:Label ID="lblName" runat="server" Text="Enter Your OTP "></asp:Label>
            <asp:TextBox ID="room" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNumber" runat="server" ControlToValidate="room"
    ErrorMessage="Please enter the OTP." Display="Dynamic"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                ErrorMessage="Please enter an integer." ControlToValidate="room"
                ValidationExpression="^\d+$" Display="Dynamic"   />
                                                 <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        </div>
             <div class="center">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"  /><%--OnClientClick="submitForm()"--%>
        </div>
        </div>
    </form>
</body>
</html>
