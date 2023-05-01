<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="Travel_With_Us.Admin.Adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>CelestialUI Admin</title>
    <!-- base:css -->
    <link rel="stylesheet" href="vendors/typicons.font/font/typicons.css" />
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css" />
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="css/vertical-layout-light/style.css" />
    <!-- endinject -->
    <link rel="shortcut icon" href="images/favicon.png" />
</head>

<body>
    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="content-wrapper d-flex align-items-center auth px-0">
                <div class="row w-100 mx-0">
                    <div class="col-lg-4 mx-auto">
                        <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                            <div class="brand-logo">
                                <h2>Admin</h2>
                            </div>
                            <h4>Hello! let's get started</h4>
                            <h6 class="font-weight-light">Sign in to continue.</h6>
                            <form class="pt-3" runat="server">
                                <div class="form-group">
                                    <asp:TextBox ID="email" runat="server" class="form-control form-control-lg" placeholder="Username"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="passwordd" runat="server" class="form-control form-control-lg" TextMode="Password" placeholder="Password"></asp:TextBox>

                                </div>
                                <div class="mt-3">
                                    <button type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" onclick="login()">Login</button>
                                    <script>
                                        function login() {
                                            var username = document.getElementById("email").value;
                                            var password = document.getElementById("password").value;

                                            // Validate user input
                                            if (username == "" || password == "") {
                                                alert("Please fill in all fields.");
                                                return;
                                            }

                                            // Make an AJAX request to the server to login the user
                                            var xhr = new XMLHttpRequest();
                                            xhr.onreadystatechange = function () {
                                                if (this.readyState == 4 && this.status == 200) {
                                                    if (this.responseText == "success") {
                                                        // Redirect to the home page if login is successful
                                                        window.location.href = "admindash.aspx";
                                                    } else {
                                                        // Display an error message if login fails
                                                        alert("Invalid username or password.");
                                                    }
                                                }
                                            };
                                            xhr.open("POST", "Adminlogin.aspx", true);
                                            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                                            xhr.send("username=" + username + "&password=" + password);
                                        }
                                    </script>
                                </div>
                                <div class="my-2 d-flex justify-content-between align-items-center">
                                    <div class="form-check">
                                        <label class="form-check-label text-muted">
                                            <input type="checkbox" class="form-check-input" />
                                            Keep me signed in
                   
                                        </label>
                                    </div>

                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- base:js -->
    <script src="vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- inject:js -->
    <script src="js/off-canvas.js"></script>
    <script src="js/hoverable-collapse.js"></script>
    <script src="js/template.js"></script>
    <script src="js/settings.js"></script>
    <script src="js/todolist.js"></script>
    <!-- endinject -->
</body>

</html>

