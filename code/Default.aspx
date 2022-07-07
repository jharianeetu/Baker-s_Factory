<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html lang="en">
<head id="Head1" runat="server">
    <title>Bakers Factory - Jhansi</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Glorious Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--// Meta tag Keywords -->
<!-- css files -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /> <!-- Bootstrap-Core-CSS -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="css/font-awesome.css" /> <!-- Font-Awesome-Icons-CSS -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" /> <!-- Flexslider-CSS -->
<link rel="stylesheet" href="css/team.css" type="text/css" media="screen" property="" /> <!-- Team-CSS -->
<link rel="stylesheet" href="css/smoothbox.css" type='text/css' media="all" /> <!-- Smoothbox-CSS -->
<link href="css/wickedpicker.css" rel="stylesheet" type='text/css' media="all" /> <!-- Time-script-CSS -->
<!-- //css files -->
<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet" />
<link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet" />
<link href="//fonts.googleapis.com/css?family=Oleo+Script:400,700&amp;subset=latin-ext" rel="stylesheet" />
<!-- //online-fonts -->
</head>
<body>
    <!-- banner -->
<div data-vide-bg="video/food new">
	<div class="center-container">
		<div class="banner wthree">
			<div class="container">
				<div class="banner_top">
					<div class="col-md-6 col-sm-4 col-xs-4 logo">
						<h1><a href="index.html">Bakers Factory<span>Love at first bite...</span></a></h1>
					</div>
					<div class="col-md-6 col-sm-8 col-xs-8 w3_menu">
                       
						<div class="col-md-6 col-sm-5 col-xs-5 top-nav-text">
							<!--<a class="page-scroll" href="#myModal2" data-toggle="modal" data-hover="LOGIN">LOGIN</a> -->
                            <a href="UserLogin.aspx"  data-hover="LOGIN">LOGIN</a>

						</div>
						<div class="col-md-3 col-sm-4 col-xs-4 top-nav-text">
							<a class="page-scroll" href="#myModal3" data-toggle="modal" data-hover="LOGIN">REGISTER</a>
						</div>
                        
						<div class="mobile-nav-button">
							<div class="mobile-nav-button__line"></div>
							<div class="mobile-nav-button__line"></div>
							<div class="mobile-nav-button__line"></div>
						</div>
						<nav class="mobile-menu">
							<ul>
								<li class="active"><a href="index.html">Home</a></li>
                                <li><a href="products.aspx">Our Products</a></li>
								<li><a href="#services" class="scroll">Services</a></li>
                                <li><a href="Order/order.aspx">Order</a></li>
								<li><a href="#chefs" class="scroll">Our Chefs</a></li>
								<li><a href="#menu" class="scroll">Menu</a></li>
								<li><a href="#gallery" class="scroll">Gallery</a></li>
                                <li><a href="Admin/AdminLogin.aspx">Admin</a></li>
								<li><a href="#contact" class="scroll">Contact Us</a></li>
							</ul>
						</nav>
					</div>
					<div class="clearfix"> </div>
				</div>
				<!--Slider-->	
				<div class="col-md-7 callbacks_container">
					<ul class="rslides" id="slider3">
						<li>
							<div class="slider-info">
								<h3>Fresh Food Place</h3>
								<p>We serves freshfood to our customer because the perimeter of the store is where freshfood is found...</p>
							</div>
						</li>
						<li>
							<div class="slider-info">
								 <h3>Welcome To Cakery</h3>
								 <p>Welcome to the Cakery to enjoye traditional cakes and other baked items...</p>
							</div>
						</li>
						<li>
							<div class="slider-info">
								 <h3>Come Taste The Difference</h3>
								 <p>Trick or Treat!Give me Something good to eat.Give me candy.Give me cake.Give me Something sweet to taste</p>
							</div>
						</li>
					</ul>
				</div>
				<!-- //Slider -->
				<!-- form -->
				<div class="col-md-5 callbacks_container form-w3l-agil3">
					<div class="book-form" >
					<p>Reserve a table.</p>
					   <form id="Form1" action="#" method="post">
							<div class="form-time-w3layouts">
									<label><i class="fa fa-clock-o" aria-hidden="true"></i> Time :</label>
									<input type="text" id="timepicker" name="Time" class="timepicker form-control" value="Hrs:Min" required="">	
							</div>
							<div class="form-date-w3-agileits">
										<label><i class="fa fa-calendar" aria-hidden="true"></i> Date :</label>
											<input  id="datepicker1" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">
										</div>
							<div class="form-left-agileits-w3layouts ">
									<label><i class="fa fa-users" aria-hidden="true"></i> No.of People :</label>
									<select class="form-control">
										<option>1 Person</option>
										<option>2 People</option>
										<option>3 People</option>
										<option>4 People</option>
										<option>5 People</option>
										<option>More</option>
									</select>
							</div>
							<div class="form-left-agileits-submit">
								  <input type="submit" value="Book a table">
							</div>
						</form>
					</div>
				</div>
				<div class="clearfix"> </div>
				<!-- //form -->
			</div>
		</div>
		<!-- modal -->
		<div class="modal about-modal w3-agileits fade" id="myModal2" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
					</div> 
					<div class="modal-body login-page "><!-- login-page -->     
						<div class="login-top sign-top">
							<div class="agileits-login">
							<h5>Login Here</h5>
							<form method="post" runat="server">
								<input type="email" class="email" name="Email" placeholder="Email" required="" id="email"/>
								<input type="password" class="password" name="pass" placeholder="Password" required="" id="pass"/>
								<div class="wthree-text"> 
									<ul> 
										<li>
											<label class="anim">
												<input type="checkbox" class="checkbox">
												<span> Remember me ?</span> 
											</label> 
										</li>
									</ul>
									<div class="clearfix"> </div>
								</div>  
								<div class="w3ls-submit"> 
									<input type="submit" value="LOGIN" runat="server" onserverclick="cmdAction_Click">  	
								</div>	
							</form>

							</div>  
						</div>
					</div>  
				</div> <!-- //login-page -->
			</div>
		</div>
		<!-- //modal --> 
		<!-- modal -->
		<div class="modal about-modal w3-agileits fade" id="myModal3" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
					</div> 
					<div class="modal-body login-page "><!-- login-page -->     
						<div class="login-top sign-top">
							<div class="agileits-login">
							<h5>Register Here</h5>
							<form method="post">
								<input type="text" name="Username" placeholder="Username" required=""/>
								<input type="email"  name="Email" placeholder="Email" required=""/>
								<input type="password" name="Password" placeholder="Password" required=""/>
								<input type="text" name="password" placeholder="Confirm Password" required="">
								<div class="wthree-text"> 
									<ul> 
										<li>
											<label class="anim">
												<input type="checkbox" class="checkbox">
												<span> I accept the terms of use</span> 
											</label> 
										</li>
									</ul>
									<div class="clearfix"> </div>
								</div>  
								<div class="w3ls-submit"> 
									<input type="submit" value="Register" runat="server" onserverclick="cmdRegister_Click">  	
								</div>	
							</form>
							</div>  
						</div>
					</div>  
				</div> <!-- //login-page -->
			</div>
		</div>
		<!-- //modal --> 
        <!-- modal -->
		<div class="modal about-modal w3-agileits fade" id="myModal4" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
					</div> 
					<!-- form -->
				<div class="col-md-5 callbacks_container form-w3l-agil3">
					<div class="book-form" style="visibility:hidden">
					<p>Reserve a table.</p>
					   <form id="Form2" action="#" method="post">
							<div class="form-time-w3layouts">
									<label><i class="fa fa-clock-o" aria-hidden="true"></i> Time :</label>
									<input type="text" id="Text1" name="Time" class="timepicker form-control" value="Hrs:Min" required="">	
							</div>
							<div class="form-date-w3-agileits">
										<label><i class="fa fa-calendar" aria-hidden="true"></i> Date :</label>
											<input  id="Text2" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">
										</div>
							<div class="form-left-agileits-w3layouts ">
									<label><i class="fa fa-users" aria-hidden="true"></i> No.of People :</label>
									<select class="form-control">
										<option>1 Person</option>
										<option>2 People</option>
										<option>3 People</option>
										<option>4 People</option>
										<option>5 People</option>
										<option>More</option>
									</select>
							</div>
							<div class="form-left-agileits-submit">
								  <input type="submit" value="Book a table">
							</div>
						</form>
					</div>
				</div>
				<div class="clearfix"> </div>
				<!-- //form -->
				</div> <!-- //login-page -->
			</div>
		</div>
		<!-- //modal -->
	</div>
</div>
<!-- //banner -->
<!-- grids -->
<div class="about-agile">
	<div class="col-md-6 about-grids-w3l">
		<div class="about-first-w3">
			<div class="col-md-4 col-sm-4 col-xs-4 welcome-img">
				<img src="images/1.jpg" class="img-responsive zoom-img" alt=""/>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-4 welcome-img">
				<img src="images/2.jpg" class="img-responsive zoom-img" alt=""/>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-4 welcome-img">
				<img src="images/3.jpg" class="img-responsive zoom-img" alt=""/>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="about-first-w3">
			<div class="col-md-4 col-sm-4 col-xs-4 welcome-img">
				<img src="images/4.jpg" class="img-responsive zoom-img" alt=""/>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-4 welcome-img">
				<img src="images/5.jpg" class="img-responsive zoom-img" alt=""/>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-4 welcome-img">
				<img src="images/6.jpg" class="img-responsive zoom-img" alt=""/>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="col-md-6 w3layouts_event_right">
		<h3>made with fresh  Ingredients</h3>
		<div class="slider">
			<div class="flexslider">
				<ul class="slides">
					<li>
						<div class="w3_event_right_grid">
							<div class="w3layouts_event_right_para">
								<p>We believe...in making effective products from fresh*,organic* fruits and vegetables ,
                                   the finest essential oils and safe synthentics.</p>
							</div>
						</div>
					</li>
					<li>
						<div class="w3_event_right_grid">
							<div class="w3layouts_event_right_para">
								<p>Fruits and vegetables provide us with essential vitamins and other valuable nutrients. Accordingly, they are an important part of our food items.</p>
							</div>
						</div>
					</li>
					<li>
						<div class="w3_event_right_grid">
							<div class="w3layouts_event_right_para">
								<p>We are commited to keeping our food items healthy, familiar and easy to prepare.</p>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="clearfix"> </div>
</div>
<!-- //grids -->
<!-- services -->
<div class="services" id="services">
	<div class="container">
		<div class="agile-heading">
			<h3 class="w3l-title">Our Services</h3>
		</div>
		<div class="wthree-services-grids">
			<div class="col-sm-3 wthree-services">
				<div class="wthree-services-grid">
					<div class="wthree-services-info">
						<i class="fa fa-cutlery" aria-hidden="true"></i>
						<h4>BEST COOKS</h4>
						<div class="w3ls-border"> </div>
					</div>
					<div class="wthree-services-captn">
						<h4>Baker's</h4>
						<p>We use best cooks which makes our food deliecious and better.</p>
					</div>
				</div>
			</div>
			<div class="col-sm-3 wthree-services">
				<div class="wthree-services-grid">
					<div class="wthree-services-info">
						<i class="fa fa-heart" aria-hidden="true"></i>
						<h4>FESTIVAL SPECIAL DISHES</h4>
						<div class="w3ls-border"> </div>
					</div>
					<div class="wthree-services-captn">
						<h4>Baker's</h4>
						<p>Like festival every dishes also have story to tell</p>
					</div>
				</div>
			</div>
			<div class="col-sm-3 wthree-services">
				<div class="wthree-services-grid">
					<div class="wthree-services-info">
						<i class="fa fa-spoon" aria-hidden="true"></i>
						<h4>FRESH FOOD</h4>
						<div class="w3ls-border"> </div>
					</div>
					<div class="wthree-services-captn">
						<h4>Baker's</h4>
						<p>We believe in making effective products from fresh ingredients.</p>
					</div>
				</div>
			</div>
			<div class="col-sm-3 wthree-services">
				<div class="wthree-services-grid">
					<div class="wthree-services-info">
						<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
						<h4>Excellent</h4>
						<div class="w3ls-border"> </div>
					</div>
					<div class="wthree-services-captn">
						<h4>Baker's</h4>
						<p>Excellent place for celebrations,parties Etc.</p>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="wthree-services-grids services-grids1">
			<div class="col-sm-3 wthree-services">
				<div class="wthree-services-grid">
					<div class="wthree-services-info">
						<i class="fa fa-money" aria-hidden="true"></i>
						<h4>Best Price</h4>
						<div class="w3ls-border"> </div>
					</div>
					<div class="wthree-services-captn">
						<h4>Baker's</h4>
						<p>We provide quality of food at best price.</p>
					</div>
				</div>
			</div>
			<div class="col-sm-3 wthree-services">
				<div class="wthree-services-grid">
					<div class="wthree-services-info">
						<i class="fa fa-birthday-cake" aria-hidden="true"></i>
						<h4>BIRTHDAY PARTY</h4>
						<div class="w3ls-border"> </div>
					</div>
					<div class="wthree-services-captn">
						<h4>Baker's</h4>
						<p>We organize birthday parties for the customers who want to celebrate here at special offers.</p>
					</div>
				</div>
			</div>
			<div class="col-sm-3 wthree-services">
				<div class="wthree-services-grid">
					<div class="wthree-services-info">
						<i class="fa fa-credit-card" aria-hidden="true"></i>
						<h4>Easy Payment</h4>
						<div class="w3ls-border"> </div>
					</div>
					<div class="wthree-services-captn">
						<h4>Baker's</h4>
						<p>Cash on Delivery,Online Payment </p>
					</div>
				</div>
			</div>
			<div class="col-sm-3 wthree-services">
				<div class="wthree-services-grid">
					<div class="wthree-services-info">
						<i class="fa fa-bullhorn" aria-hidden="true"></i>
						<h4>Bakery Craze</h4>
						<div class="w3ls-border"> </div>
					</div>
					<div class="wthree-services-captn">
						<h4>Baker's</h4>
						<p>Whatever the heart desires</p>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- //services -->
<!-- team -->
<div class="team" id="chefs">
	<div class="container">
		<div class="agile-heading team-heading">
			<h3 class="w3l-title">Meet Our Chefs</h3>
		</div>
		<div class="agile-team-grids">
			<div class="col-sm-3 team-grid">
				<div class="flip-container">
					<div class="flipper">
						<div class="front">
							<img src="images/t1.jpg" alt="" />
						</div>
						<div class="back">
							<h4>Manjeet Thakur</h4>
							<p> </p>
							<div class="w3l-social">
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-3 team-grid">
				<div class="flip-container">
					<div class="flipper">
						<div class="front">
							<img src="images/t2.jpg" alt="" />
						</div>
						<div class="back">
							<h4>Supriya Pathak</h4>
							<p></p>
							<div class="w3l-social">
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-3 team-grid">
				<div class="flip-container">
					<div class="flipper">
						<div class="front">
							<img src="images/t3.jpg" alt="" />
						</div>
						<div class="back">
							<h4>Amrita Gupta</h4>
							<p></p>
							<div class="w3l-social">
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-3 team-grid">
				<div class="flip-container">
					<div class="flipper">
						<div class="front">
							<img src="images/t4.jpg" alt="" />
						</div>
						<div class="back">
							<h4>Vinay Kumar</h4>
							<p></p>
							<div class="w3l-social">
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //team -->
<!-- menu-section -->
<div class="menu-w3l" id="menu">
	<h3 class="w3l-title">Menu</h3>
	<ul id="flexiselDemo1">	
		<li>
			<div class="w3layouts_banner_bottom_left">
				<img src="images/s1.jpg" alt=" " class="img-responsive" />
				<h4>Creamy Pasteries--- <span>Rs 70</span></h4>
				<p>Bake with heart Made with Care.</p>
			</div>
		</li>
		<li>
			<div class="w3layouts_banner_bottom_left">
				<img src="images/s2.jpg" alt=" " class="img-responsive" />
				<h4>Marble Cake --- <span>Rs 80</span></h4>
				<p>Bake with heart Made with Care.</p>
			</div>
		</li>
		<li>
			<div class="w3layouts_banner_bottom_left">
				<img src="images/s5.jpg" alt=" " class="img-responsive" />
				<h4>Choclaty Donuts --- <span>Rs 300</span></h4>
				<p>Bake with heart Made with Care.</p>
			</div>
		</li>
		<li>
			<div class="w3layouts_banner_bottom_left">
				<img src="images/s4.jpg" alt=" " class="img-responsive" />
				<h4>Cukay's Cupcake--- <span>Rs 100</span></h4>
				<p>Bake with heart Made with Care.</p>
			</div>
		</li>
		<li>
			<div class="w3layouts_banner_bottom_left">
				<img src="images/s3.jpg" alt=" " class="img-responsive" />
				<h4>Choclaty Creamy Cake--- <span>Rs 120</span></h4>
				<p>Bake with heart Made with Care.</p>
			</div>
		</li>
	</ul>
</div>
<!-- //menu-section -->
<!-- cuisine-names -->
<div class="cuisine-names">
	<div class="w3_cuisine_names_left w3l_cuisine_names_left">
		<h3>Choclaty Creamy Cake ----- <span>120Rs-</span></h3>
		<h3>Marble Cake ----- <span>80Rs-</span></h3>
		<h3>Choclaty Donuts ----- <span>300Rs-</span></h3>
		<h3>Creamy Pastries ----- <span>70Rs-</span></h3>
		<h3>Choco Chip Cookies ----- <span>175Rs-</span></h3>
	</div>
	<div class="w3ls_cuisine_names_left">
		<img src="images/pri.jpg" alt=" " class="img-responsive" />
	</div>
	<div class="w3_cuisine_names_left">
		<h3>Cup Cakes ----- <span>95Rs-</span></h3>
		<h3>Fruit Cookies ----- <span>125Rs-</span></h3>
		<h3>Bread Cake ----- <span>150Rs-</span></h3>
		<h3>Blue Berry Cake ----- <span>300Rs-</span></h3>
		<h3>Donuts ----- <span>250Rs-</span></h3>
	</div>
	<div class="clearfix"> </div>
</div>
<!-- //cuisine-names -->
<!-- testimonials -->
<div class="testimonials">
	<div class="container">
		<h3 class="w3l-title">Testimonials</h3>
		<div class="w3_testimonials_grids">
			<div class="col-md-4 col-sm-4 item w3_agileits_testimonials_grid">
				<img src="images/f1.jpg" alt=" " class="img-responsive w3-main-img" />
				<img class="posi-w3l img-responsive" src="images/test1.jpg" alt=" " />
				<div class="text-w3l">
					<h4>Rosy Alen</h4>
					<p>They serve awesome cakes, pastries, and biscuits.. Snacks are also very good and fresh.</p>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 item w3_agileits_testimonials_grid">
				<img src="images/f2.jpg" alt=" " class="img-responsive w3-main-img" />
				<img class="posi-w3l img-responsive" src="images/test2.jpg" alt=" " />
				<div class="text-w3l">
					<h4>Thomas Li</h4>
					<p>Fresh donuts and friendly staff Price is great and taste is awesome.</p>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 item w3_agileits_testimonials_grid">
				<img src="images/f3.jpg" alt=" " class="img-responsive w3-main-img" />
				<img class="posi-w3l img-responsive" src="images/test3.jpg" alt=" " />
				<div class="text-w3l">
					<h4>Chrst pher</h4>
					<p>Great place to grab some tasty cookies. The cookies aren't too small nor enormous.</p>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- //testimonials -->
<!-- delicious-food -->
<div class="delicious_food" id="gallery">
	<div class="container">
		<h3 class="w3l-title">Our Delicious Food</h3>
		<div class="agile_delicious_food_grids">
			<div class="agile_delicious_food_grid">
				<a class="sb" href="images/g1.jpg" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate.">
					<div class="view view-sixth">
						<img src="images/g1.jpg" alt=" " class="img-responsive" />
						<div class="mask">
							<h4>Baker's</h4>
							<p>If you can dream it, we can design & bake it.</p>
						</div>
					</div>
				</a>
			</div>
			<div class="agile_delicious_food_grid">
				<a class="sb" href="images/g2.jpg" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate.">
					<div class="view view-sixth">
						<img src="images/g2.jpg" alt=" " class="img-responsive" />
						<div class="mask">
							<h4>Baker's</h4>
							<p>If you can dream it, we can design & bake it.</p>
						</div>
					</div>
				</a>
			</div>
			<div class="agile_delicious_food_grid">
				<a class="sb" href="images/g3.jpg" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate.">
					<div class="view view-sixth">
						<img src="images/g3.jpg" alt=" " class="img-responsive" />
						<div class="mask">
							<h4>Baker's</h4>
							<p>If you can dream it, we can design & bake it.</p>
						</div>
					</div>
				</a>
			</div>
			<div class="agile_delicious_food_grid">
				<a class="sb" href="images/g4.jpg" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate.">
					<div class="view view-sixth">
						<img src="images/g4.jpg" alt=" " class="img-responsive" />
						<div class="mask">
							<h4>Baker's</h4>
							<p>If you can dream it, we can design & bake it.</p>
						</div>
					</div>
				</a>
			</div>
			<div class="agile_delicious_food_grid">
				<a class="sb" href="images/g5.jpg" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate.">
					<div class="view view-sixth">
						<img src="images/g5.jpg" alt=" " class="img-responsive" />
						<div class="mask">
							<h4>Baker's</h4>
							<p>If you can dream it, we can design & bake it..</p>
						</div>
					</div>
				</a>
			</div>
			<div class="agile_delicious_food_grid">
				<a class="sb" href="images/g6.jpg" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate.">
					<div class="view view-sixth">
						<img src="images/g6.jpg" alt=" " class="img-responsive" />
						<div class="mask">
							<h4>Baker's</h4>
							<p>If you can dream it, we can design & bake it.</p>
						</div>
					</div>
				</a>
			</div>
			<div class="agile_delicious_food_grid">
				<a class="sb" href="images/g7.jpg" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate.">
					<div class="view view-sixth">
						<img src="images/g7.jpg" alt=" " class="img-responsive" />
						<div class="mask">
							<h4>Baker's</h4>
							<p>If you can dream it, we can design & bake it.</p>
						</div>
					</div>
				</a>
			</div>
			<div class="agile_delicious_food_grid">
				<a class="sb" href="images/g8.jpg" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate.">
					<div class="view view-sixth">
						<img src="images/g8.jpg" alt=" " class="img-responsive" />
						<div class="mask">
							<h4>Baker's</h4>
							<p>If you can dream it, we can design & bake it.</p>
						</div>
					</div>
				</a>
			</div>
			<div class="agile_delicious_food_grid">
				<a class="sb" href="images/g9.jpg" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate.">
					<div class="view view-sixth">
						<img src="images/g9.jpg" alt=" " class="img-responsive" />
						<div class="mask">
							<h4>Baker's</h4>
							<p>If you can dream it, we can design & bake it.s</p>
						</div>
					</div>
				</a>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- //delicious-food -->
<!-- footer -->
<div class="footer" id="contact">
	<div class="container">
		<div class="agile-footer-grids">
			<div class="col-md-3 col-sm-6 col-xs-6 w3-agile-footer-grid">
				<div class="logo-2">
					<h2><a href="index.html">Bakers<span>Factory...</span></a></h2>
				</div>
				<ul>
					<li>Near Allahabad Bank,Station Road,</li>
					<li>Jankipuram,Civil Lines</li>
					<li>Jhansi</li>
					<li>Email</li>
					<li><a href="mailto:info@example.com">factorybaker@passion.com</a></li>
					<li>Phone Number</li>
					<li>+123 456 7890</li>
                    <li><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3602.8469845742584!2d78.56542381426932!3d25.44337872791395!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3977772ce9be100b%3A0x7fff1752eede977a!2sThe+Bakers+Factory!5e0!3m2!1sen!2sin!4v1506145994445" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></li>
				</ul>				
			</div>
			<div class="col-md-3 col-sm-6 col-xs-6 w3-agile-footer-grid">
				<h3>Opening Days</h3>
				<div class="col-md-5 col-sm-5 col-xs-5 agile-opening">
					<ul>
						<li>Monday </li>
						<li>Tuesday </li>
						<li>Wednesday </li>
						<li>Thursday </li>
						<li>Friday </li>
						<li>Saturday </li>
						<li>Sunday </li>
					</ul>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-6 agile-opening">
					<ul>
						<li>8am-10pm</li>
						<li>9am-10pm</li>
						<li>7am-11pm</li>
						<li>5am-11pm</li>
						<li>6am-12pm</li>
						<li>7am-12pm</li>
						<li>4am-12pm</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-6 w3-agile-footer-grid grid-w3-1">
				<div class="contact-block-left">
					<form action="#" method="post">
						<input type="text" placeholder="Name" name="Name" required="">
						<input type="email" class="email" placeholder="Email" name="Email" required="">             
						<textarea placeholder="Message" name="message" required=""></textarea>
						<input type="submit" value="Send">
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- copyright -->
	<div class="copyright">
		<p>© 2017 Bakers Factory . All Rights Reserved | Design by <a href=""> Neetu & Deeksha</a> </p>
	</div>
	<!-- //copyright -->
</div>
<!-- //footer -->

<!-- js-scripts -->		
		
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
	<!-- //js -->
	<!-- responsiveslider -->
	<script src="js/responsiveslides.min.js"></script>
		<script>
		    // You can also use "$(window).load(function() {"
		    $(function () {
		        // Slideshow 4
		        $("#slider3").responsiveSlides({
		            auto: true,
		            pager: true,
		            nav: false,
		            speed: 500,
		            namespace: "callbacks",
		            before: function () {
		                $('.events').append("<li>before event fired.</li>");
		            },
		            after: function () {
		                $('.events').append("<li>after event fired.</li>");
		            }
		        });

		    });
		 </script>
	<!-- //responsiveslider -->
	<!-- menu -->
	<script>
	    $(document).ready(function () {
	        $('.mobile-nav-button').on('click', function () {
	            $(".mobile-nav-button .mobile-nav-button__line:nth-of-type(1)").toggleClass("mobile-nav-button__line--1");
	            $(".mobile-nav-button .mobile-nav-button__line:nth-of-type(2)").toggleClass("mobile-nav-button__line--2");
	            $(".mobile-nav-button .mobile-nav-button__line:nth-of-type(3)").toggleClass("mobile-nav-button__line--3");

	            $('.mobile-menu').toggleClass('mobile-menu--open');
	            return false;
	        });
	    });
	</script>
	<!-- //menu -->
	<!-- flexSlider-for-grids-section -->
		<script defer src="js/jquery.flexslider.js"></script>
		<script type="text/javascript">
		    $(window).load(function () {
		        $('.flexslider').flexslider({
		            animation: "slide",
		            start: function (slider) {
		                $('body').removeClass('loading');
		            }
		        });
		    });
	  </script>
	<!-- //flexSlider-for-grids-section -->
	<!-- flexSlider-for-menu-section -->
	<script type="text/javascript">
	    $(window).load(function () {
	        $("#flexiselDemo1").flexisel({
	            visibleItems: 4,
	            animationSpeed: 1000,
	            autoPlay: true,
	            autoPlaySpeed: 3000,
	            pauseOnHover: true,
	            enableResponsiveBreakpoints: true,
	            responsiveBreakpoints: {
	                portrait: {
	                    changePoint: 480,
	                    visibleItems: 2
	                },
	                landscape: {
	                    changePoint: 640,
	                    visibleItems: 3
	                },
	                tablet: {
	                    changePoint: 768,
	                    visibleItems: 4
	                }
	            }
	        });

	    });
	</script>
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
	<!-- //flexSlider-for-menu-section -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
	    jQuery(document).ready(function ($) {
	        $(".scroll").click(function (event) {
	            event.preventDefault();
	            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
	        });
	    });
	</script>
	<!-- start-smoth-scrolling -->
	<!-- for-bottom-to-top smooth scrolling -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
	        var defaults = {
	        containerID: 'toTop', // fading element id
	        containerHoverID: 'toTopHover', // fading element hover id
	        scrollSpeed: 1200,
	        easingType: 'linear' 
	        };
	        */
	        $().UItoTop({ easingType: 'easeOutQuart' });
	    });
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- //for-bottom-to-top smooth scrolling -->
	<!-- Calendar -->
	<link rel="stylesheet" href="css/jquery-ui.css" />
	<script src="js/jquery-ui.js"></script>
		<script>
		    $(function () {
		        $("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
		    });
		</script>
	<!-- //Calendar -->
	<!-- video-js -->
	<script src="js/jquery.vide.min.js"></script>
	<!-- //video-js -->	
	<!-- smoothbox -->
	<script type="text/javascript" src="js/smoothbox.jquery2.js"></script>
	<!-- //smoothbox -->
	<!-- Time -->
	<script type="text/javascript" src="js/wickedpicker.js"></script>
		<script type="text/javascript">
		    $('.timepicker').wickedpicker({ twentyFour: false });
		</script>
	<!-- //Time -->

<!-- //js-scripts -->
</body>
</html>
