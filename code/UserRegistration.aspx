<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>User Registration</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Admin/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Admin/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Admin/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Admin/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Admin/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Admin/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Admin/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Admin/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Admin/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Admin/css/util.css">
	<link rel="stylesheet" type="text/css" href="Admin/css/main.css">
<!--===============================================================================================-->

</head>
<body style="background-color: #666666;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" id="form1" runat="server">
					<span class="login100-form-title p-b-43">
						User Registration
                    </span>
					<br />
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label><br />
					<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Enter Valid Email Address" ControlToValidate="emailid" 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
					<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="Password must be at least 4 characters, no more than 8 characters, and must include at least one upper case letter, one lower case letter, and one numeric digit." 
                        ForeColor="Red" 
                        ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$" 
                        ControlToValidate="pass"></asp:RegularExpressionValidator>
					
					
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="userid" id="userid" runat="server" />
						<span class="focus-input100"></span>
						<span class="label-input100">User ID</span>
					</div>
					
					
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="pass" id="pass"  runat="server"/>
						<span class="focus-input100"></span>
						<span class="label-input100">Password</span>
					</div>

                    <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="emailid" id="emailid" runat="server" />
						<span class="focus-input100"></span>
						<span class="label-input100">Email ID</span>
					</div>
					
					

					<div class="container-login100-form-btn">
						<button id="Button1" class="login100-form-btn" runat="server" onserverclick="cmdAction_Click" >
							Register
						</button>
					</div>
					
					

					
				</form>

				<div class="login100-more" style="background-image: url('images/bg2.jpg');">
				</div>
			</div>
		</div>
	</div>
	
	

	
	
<!--===============================================================================================-->
	<script src="Admin/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Admin/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Admin/vendor/bootstrap/js/popper.js"></script>
	<script src="Admin/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Admin/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Admin/vendor/daterangepicker/moment.min.js"></script>
	<script src="Admin/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Admin/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Admin/js/main.js"></script>

</body>
</html>
