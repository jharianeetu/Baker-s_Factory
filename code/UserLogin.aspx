<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>User Login</title>
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
						User Login to continue
					<br />
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
					</span>
					
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" id="email" />
						<span class="focus-input100"></span>
						<span class="label-input100">User ID</span>
					</div>
					
					
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="pass" id="pass" />
						<span class="focus-input100"></span>
						<span class="label-input100">Password</span>
					</div>

					<div class="flex-sb-m w-full p-t-3 p-b-32">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

						<div>
                            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Forgot Password?</asp:LinkButton>
							
						</div>
					</div>
			

					<div class="container-login100-form-btn">
						<button id="Button1" class="login100-form-btn" runat="server" onserverclick="cmdAction_Click" >
							Login
						</button>
					</div>
					
					<div class="text-center p-t-46 p-b-20">
						<span class="txt2">
							or New User <a href="UserRegistration.aspx">Sign Up Here </a> 
						</span>
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