<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@page import="Bean.adminBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Bean.roombook"%>
<%@page import="Bean.roomBean"%>
<%@page import="Bean.roomTypeBean"%>
<%@page import="Bean.adminBean"%>
<%@page import="Bean.customerBean"%>

<%@page import="DAO.RoomDAO"%>
<%@page import="DAO.CustomersDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
</head>
<body>



<body style="background-image: url(images/dok.jpg); width: 100%; height: 100%" >

	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<div id="fh5co-header">
				<header id="fh5co-header-section">
				<div class="container">
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<h1 id="fh5co-logo">
							<a href="index.html">Luxe</a>
						</h1>
						<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li><a  href="indexAdmin.jsp">Search Book</a></li>
							
							<li><a  href="BookAdmin.jsp" class="fh5co-sub-ddown">Booking</a></li>
							
							<li><a class="active" href="ShowBillAdmin.jsp">Bill</a></li>
							<li><a href="RoomAdmin.jsp">Rooms</a></li>
							<li><a href="ProflieAdmin.jsp">Profile</a></li>
						</ul>
						</nav>
					</div>
				</div>
				</header>

			</div>
			<!-- end:fh5co-header -->
			<aside id="fh5co-hero" class="js-fullheight">
			<div class="flexslider js-fullheight">
				<ul class="slides">
					<li style="background-image: url(images/slider1.jpg);">
						<div class="overlay-gradient"></div>
						<div class="container">
							<div class="col-md-12 col-md-offset-0 text-center slider-text">
								<div class="slider-text-inner js-fullheight">
									<div class="desc">
										<p>
											<span>Bora Hotel</span>
										</p>
										<h2>Reserve Room for Family Vacation</h2>
										<p></p>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li style="background-image: url(images/slider2.jpg);">
						<div class="overlay-gradient"></div>
						<div class="container">
							<div class="col-md-12 col-md-offset-0 text-center slider-text">
								<div class="slider-text-inner js-fullheight">
									<div class="desc">
										<p>
											<span>Deluxe Hotel</span>
										</p>
										<h2>Make Your Vacation Comfortable</h2>
										<p></p>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li style="background-image: url(images/slider3.jpg);">
						<div class="overlay-gradient"></div>
						<div class="container">
							<div class="col-md-12 col-md-offset-0 text-center slider-text">
								<div class="slider-text-inner js-fullheight">
									<div class="desc">
										<p>
											<span>Luxe Hotel</span>
										</p>
										<h2>A Best Place To Enjoy Your Life</h2>
										<p></p>
									</div>
								</div>
							</div>
						</div>
					</li>

				</ul>
			</div>
			</aside>

		</div>
	</div>


	
	
	
	
	
	<div class="container">
	
	
	
	<form action="PictureServlet" method="get">
	<%
  
		  
CustomersDAO CD2 = new CustomersDAO ();
  	


ArrayList<customerBean> PB2 = new ArrayList<customerBean>();
%>

<br><br>
<div class="alert alert-success" role="alert">
  <h5 class="alert-heading">ค้นหาชื่อ-นามสกุลสมาชิกที่ต้องการ</h5>
  <p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>
  <p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
</div>
  <div class="col-xs-2">
				<select class="custom-select form-control  "  name="customerID">
				
			<%  PB2=CD2.customerShow();
                    for(int i=0;i<PB2.size();i++){ %>



	
	
		
		
	
 <option value="<%=(i+5491)%>"> <%=PB2.get(i).getFirstname()%> <%=PB2.get(i).getLastname()%></option>

		
		
		
				<%}%>
		</select>
		</div>
		<input type="submit" value="ยืนยัน" class="btn btn-primary"> 
</form>

	

</div>










	

		
	

	<footer id="footer" class="fh5co-bg-color">
		

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