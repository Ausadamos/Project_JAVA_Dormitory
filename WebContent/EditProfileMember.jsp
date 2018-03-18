<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList"%>
<%@ page import="DAO.CustomersDAO"%>
<%@ page import="Bean.customerBean"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.js"></script>


<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Luxe &mdash; 100% Free Fully Responsive HTML5 Template by FREEHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
	<!-- <link href='https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700italic,900,700,900italic' rel='stylesheet' type='text/css'> -->

	<!-- Stylesheets -->
	<!-- Dropdown Menu -->
	<link rel="stylesheet" href="css/superfish.css">
	<!-- Owl Slider -->
	<!-- <link rel="stylesheet" href="css/owl.carousel.css"> -->
	<!-- <link rel="stylesheet" href="css/owl.theme.default.min.css"> -->
	<!-- Date Picker -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
	<!-- CS Select -->
	<link rel="stylesheet" href="css/cs-select.css">
	<link rel="stylesheet" href="css/cs-skin-border.css">

	<!-- Themify Icons -->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Flat Icon -->
	<link rel="stylesheet" href="css/flaticon.css">
	<!-- Icomoon -->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">
	
	<!-- Style -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->


<title>Insert title here</title>
</head>
<body>





<body >
	<div id="fh5co-wrapper">
	<div id="fh5co-page">
	<div id="fh5co-header">
		<header id="fh5co-header-section">
			<div class="container">
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
					<h1 id="fh5co-logo"><a href="index.html"><font color="#F1C40F">Luxe</font></a></h1>
					<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu" >
							<li><a href="index.html"><font color="#F1C40F">Home</font></a></li>
							<li>
					
								<a href="hotel.html" class="fh5co-sub-ddown"><font color="#F1C40F">Hotel</font></a>
							
							</li>
							<li><a href="services.html"><font color="#F1C40F">Services</font></a></li>
							<li><a class="active" href="blog.html"><font color="#F1C40F">Blog</font></a></li>
							<li><a href="contact.html"><font color="#F1C40F">Contact</font></a></li>
						</ul>
					</nav>
				</div>
			</div>
		</header>
		
	</div>
	<!-- end:fh5co-header -->
	
	<div class="row">

<center>
		<table id="myTable" class="display" cellspacing="0" table border="0"
			style="background-color: #95FFC4" width="30%">

			<%
						request.setCharacterEncoding("utf-8");
						response.setCharacterEncoding("utf-8");
											
						
						
				        String Address	 = request.getParameter("Address");
						String Citizen_id = request.getParameter("Citizen_id");
						
						String CustomerID = request.getParameter("CustomerID");
						
						String Email = request.getParameter("Email");
						
						String Firstname = request.getParameter("Firstname");	
						
						String Lastname = request.getParameter("Lastname");	
						String Password = request.getParameter("Password");	
						
						String Tel = request.getParameter("Tel");	
						String Username = request.getParameter("Username");	
						
						
											 %>
											 
											 <%=Password %>
			
			<%
											  
CustomersDAO CD = new CustomersDAO();
  	


ArrayList<customerBean> PB = new ArrayList<customerBean>();
%>

			<form action="UpdateProfileMember" method="post">
			
				<input type="hidden" name="CustomerID" value="<%=CustomerID%>">
                <input type="hidden" name="Password" value="<%=Password%>">
				<tr>
					<th align="left">รหัส ปชช:</th>
					<th align="left">

<input type="number" name="Citizen_id"
						value="<%=Citizen_id%>" maxlength="6"></th>
				</tr>
				
				


				<tr>
					<th align="left">emil:</th>
					<th align="left"><input type="text" name="Email"
						value="<%=Email%>" maxlength="6"></th>
				</tr>

				<tr>
					<th align="left">Firstname:</th>
					<th align="left"><input type="text" name="Firstname"
						value="<%=Firstname%>" maxlength="6"></th>
				</tr>

				<tr>
					<th align="left">Lastname:</th>
					<th align="left"><input type="text" name="Lastname"
						value="<%=Lastname%>" maxlength="10"></th>
				</tr>
				<tr>
					<th align="left">Tel:</th>
					<th align="left"><input type="text" name="Tel"
						value="<%=Tel%>" maxlength="10"></th>
				</tr>
				<tr>
					<th align="left">Username:</th>
					<th align="left"><input type="text" name="Username"
						value="<%=Username%>" maxlength="10"></th>
				</tr>
				
				<tr>
					<th align="left">กรอกรหัสเดิมPassword:</th>
					<th align="left"><input type="text" name="pass2"
						 maxlength="6"></th>
				</tr>
				
				<tr>
					<th align="left">กรอกรหัสใหม่หรือรหัสผ่านเดิม</th>
					<th align="left"><input type="text" name="pass3"
						 maxlength="6"></th>
				</tr>


				<tr>
					<th><center>
							<input type="submit" name="ยืนยัน">
						</center></th>
				</tr>
		</table>
	</center>


	</div>

		
	

	<footer id="footer" class="fh5co-bg-color">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="copyright">
						<p><small>&copy; 2016 Free HTML5 Template. <br> All Rights Reserved. <br>
						Designed by <a href="http://freehtml5.co" target="_blank">FreeHTML5.co</a> <br> Demo Images: <a href="http://unsplash.com/" target="_blank">Unsplash</a></small></p>
					</div>
				</div>
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-3">
							<h3>Company</h3>
							<ul class="link">
								<li><a href="#">About Us</a></li>
								<li><a href="#">Hotels</a></li>
								<li><a href="#">Customer Care</a></li>
								<li><a href="#">Contact Us</a></li>
							</ul>
						</div>
						<div class="col-md-3">
							<h3>Our Facilities</h3>
							<ul class="link">
								<li><a href="#">Resturant</a></li>
								<li><a href="#">Bars</a></li>
								<li><a href="#">Pick-up</a></li>
								<li><a href="#">Swimming Pool</a></li>
								<li><a href="#">Spa</a></li>
								<li><a href="#">Gym</a></li>
							</ul>
						</div>
						<div class="col-md-6">
							<h3>Subscribe</h3>
							<p>Sed cursus ut nibh in semper. Mauris varius et magna in fermentum. </p>
							<form action="#" id="form-subscribe">
								<div class="form-field">
									<input type="email" placeholder="Email Address" id="email">
									<input type="submit" id="submit" value="Send">
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<ul class="social-icons">
						<li>
							<a href="#"><i class="icon-twitter-with-circle"></i></a>
							<a href="#"><i class="icon-facebook-with-circle"></i></a>
							<a href="#"><i class="icon-instagram-with-circle"></i></a>
							<a href="#"><i class="icon-linkedin-with-circle"></i></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->
	
	<!-- Javascripts -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<!-- Dropdown Menu -->
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Owl Slider -->
	<!-- // <script src="js/owl.carousel.min.js"></script> -->
	<!-- Date Picker -->
	<script src="js/bootstrap-datepicker.min.js"></script>
	<!-- CS Select -->
	<script src="js/classie.js"></script>
	<script src="js/selectFx.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>

	<script src="js/custom.js"></script>

	



</body>
</html>







