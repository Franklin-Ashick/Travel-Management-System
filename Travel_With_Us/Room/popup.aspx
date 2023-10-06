<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="popup.aspx.cs" Inherits="Travel_With_Us.Room.popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Details</title>
	<style>
		body {
			background-image: url('img/bg-img/bg-4.jpg');
			background-size: cover;
		}
        .center {
			margin: auto;
			width: 50%;
			padding: 10px;
			text-align: center;
		}
	</style>
	<%--	<script>
            function submitForm() {
                // Get form data
                var room = document.getElementById('room').value;
                var people = document.getElementById('people').value;

                // Store form data in session
                <% Session["norooms"] = null; Session["nopeople"] = null; %>
                <% Session["norooms"] = room; %>
                <% Session["nopeople"] = people; %>

                // Close popup form and return to main page
                window.opener.location.href = '../Payment/Login.aspx';
                window.close();
            }
        </script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div class="center">
            <asp:Label ID="lblName" runat="server" Text="Enter the Number of Rooms:"></asp:Label>
            <asp:TextBox ID="room" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNumber" runat="server" ControlToValidate="room"
    ErrorMessage="Please enter a number." Display="Dynamic"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                ErrorMessage="Please enter an integer." ControlToValidate="room"
                ValidationExpression="^\d+$" Display="Dynamic"   />
        </div>
        <div class="center">
            <asp:Label ID="lblEmail" runat="server" Text="Enter the Number of Peoples:"></asp:Label>
            <asp:TextBox ID="people" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="people"
    ErrorMessage="Please enter a number." Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="integerValidator" runat="server"
                ErrorMessage="Please enter an integer." ControlToValidate="people"
                ValidationExpression="^\d+$" Display="Dynamic"   />
        </div>
        <div class="center">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"  /><%--OnClientClick="submitForm()"--%>
        </div>

    </form>
</body>
</html>
