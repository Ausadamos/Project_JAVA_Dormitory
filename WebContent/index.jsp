
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.RoomDAO"%>
<%@page import="Bean.roomBean"%>
<%@page import="Bean.roomTypeBean"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<title>NakkronMeajo</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>NakkronMeajo</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />
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
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.2.3/css/bulma.css" />

	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.2.3/css/bulma.min.css" />
</head>
<body>
<div id="fh5co-wrapper" >
	<div id="fh5co-page">
	<div id="fh5co-header">
		<header id="fh5co-header-section">
			<div class="container">
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
					<h1 id="fh5co-logo"><a href="index.html">Luxe</a></h1>
					<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li><a class="active" href="index.jsp">Home</a></li>
							
							</li>
							<li><a href="services.html">Services</a></li>
							
							<li><a href="contact.html">Contact</a></li>
								<li><a href="member.jsp">Member</a></li>
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
		   						<p><span>So happy for yous</span></p>
		   						<h2>NAKRONMJU</h2>
			   					<p>
			   						
			   					</p>
		   					</div>
		   				</div>
		   			</div>
		   		</div>
		   	</li>
		   	<li style="background-image: url(images/slider1.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="col-md-12 col-md-offset-0 text-center slider-text">
		   				<div class="slider-text-inner js-fullheight">
		   					<div class="desc">
		   						<p><span>so happy for you</span></p>
		   						<h2>NakronMeajo</h2>
			   					<p>
			   						
			   					</p>
		   					</div>
		   				</div>
		   			</div>
		   		</div>
		   	</li>
		   	<li style="background-image: url(images/slider1.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="col-md-12 col-md-offset-0 text-center slider-text">
		   				<div class="slider-text-inner js-fullheight">
		   					<div class="desc">
		   						<p><span>so happy for you</span></p>
		   						<h2>NakronMeajo</h2>
			   					<p>
			   					
			   					</p>
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
	
	
	<div id="featured-hotel" class="fh5co-bg-color"  >
		<div class="container">
			
			<div class="row">
				<div class="col-md-12">
					<div class="section-title text-center">
						<h2>Rooms Type</h2>
					</div>
				</div>
			</div>


	<% 
  	 RoomDAO SH = new RoomDAO();
  	

ArrayList<roomTypeBean> RB = new ArrayList<roomTypeBean>();

  	%>


				<%
                     RB=SH.RoomType();
                    for(int i=0;i<RB.size();i++){ %>





			<div class="row">
			<% if(i==0){ %>
				<div class="feature-full-1col">
					<div class="image" style="background-image: url(RoomTypePictureServlet?id=<%=RB.get(i).getTypeRoomID()%>);">
						<div class="descrip text-center">
							<p><small>For as low as</small><span>$100/night</span></p>
						</div>
					</div>
					<div class="desc">
					
					
						<h3><%= RB.get(i).getNameType() %></h3>
						<p><%= RB.get(i).getDescription() %> </p>
						<p><a href="showRoomServletCustomer?idtyperoom=<%=RB.get(i).getTypeRoomID()%>" class="btn btn-primary btn-luxe-primary">Book Now <i class="ti-angle-right"></i></a></p>
					</div>
				</div>
<%} %>
<% if(i==1){ %>
				<div class="feature-full-1col">
					<div class="image" style="background-image: url(RoomTypePictureServlet?id=<%=RB.get(i).getTypeRoomID()%>);">
						<div class="descrip text-center">
							<p><small>For as low as</small><span>$100/night</span></p>
						</div>
					</div>
					<div class="desc">
					
					
						<h3><%= RB.get(i).getNameType() %></h3>
						<p><%= RB.get(i).getDescription() %> </p>
						<p><a href="showRoomServletCustomer?idtyperoom=<%=RB.get(i).getTypeRoomID()%>" class="btn btn-primary btn-luxe-primary">Book Now <i class="ti-angle-right"></i></a></p>
					</div>
				</div>
<%} %>
				<% if(i==2){ %>
				<div class="feature-full-1col">
					<div class="image" style="background-image: url(RoomTypePictureServlet?id=<%=RB.get(i).getTypeRoomID()%>);">
						<div class="descrip text-center">
							<p><small>For as low as</small><span>$100/night</span></p>
						</div>
					</div>
					<div class="desc">
					
					
						<h3><%= RB.get(i).getNameType() %></h3>
						<p><%= RB.get(i).getDescription() %> </p>
						<p><a href="showRoomServletCustomer?idtyperoom=<%=RB.get(i).getTypeRoomID()%>" class="btn btn-primary btn-luxe-primary">Book Now <i class="ti-angle-right"></i></a></p>
					</div>
				</div>
<%} %>
	<%} %>
			
				
			</div>

		</div>
			
	</div>

	
	<div id="hotel-facilities">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-title text-center">
						<h2>Hotel Facilities</h2>
					</div>
				</div>
			</div>

			<div id="tabs">
				<nav class="tabs-nav">
					<a href="#" class="active" data-tab="tab1">
						<i class="flaticon-restaurant icon"></i>
						<span>Restaurant</span>
					</a>
					<a href="#" data-tab="tab2">
						<i class="flaticon-cup icon"></i>
						<span>Bar</span>
					</a>
					<a href="#" data-tab="tab3">
					
						<i class="flaticon-car icon"></i>
						<span>Pick-up</span>
					</a>
					<a href="#" data-tab="tab4">
						
						<i class="flaticon-swimming icon"></i>
						<span>Swimming Pool</span>
					</a>
					<a href="#" data-tab="tab5">
						
						<i class="flaticon-massage icon"></i>
						<span>Spa</span>
					</a>
					<a href="#" data-tab="tab6">
						
						<i class="flaticon-bicycle icon"></i>
						<span>Gym</span>
					</a>
				</nav>
				
					
					
					
					
				</div>
			</div>
		</div>


	<div id="testimonial">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-title text-center">
						<font size="16" color="white" face="AC Espressa">เราพร้อมมอบความสุขให้คุณ</font>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="testimony">
						<blockquote>
							&ldquo;หอพักนครแม่โจ้มีบริการ สระว่ายน้ำให้กับลูกค้าที่เป็นสมาชิกกับหอพักของเรา ท่านสามารถใช้บริการสระว่ายน้ำฟรีได้เลย&ldquo;
						</blockquote>
						<p class="author"><cite>สระว่ายน้ำ</cite></p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="testimony">
						<blockquote>
							&ldquo;เพียงแค่ท่านยกกระเป๋ามาเป็นครอบครัวเดียวกับเราท่านก็สามารถใช้บริการฟิตเน็ตฟรีไม่จำกัดการใช้บริการได้เลย&ldquo;
						</blockquote>
						<p class="author"><cite>ฟิตเน็ต</cite></p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="testimony">
						<blockquote>
							&ldquo;หอพักของเรามีระบบรักษาความปลอดภัยที่ทันสมัย พร้อมมอบความสบายใจให้กับลูกค้าทุกท่าน&rdquo;
						</blockquote>
						<p class="author"><cite>ระบบรักษาความปลอดภัย</cite></p>
					</div>
				</div>
			</div>
		</div>
	</div>


	
					
	<footer id="footer" class="fh5co-bg-color">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="copyright">
						<font size="5" face="AC Espressa">อบอุ่นเหมือนบ้าน
							บริการดังมิตรทุกชีวิตปลอดภัย</font>
					</div>
				</div>
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-3">
							<h3>ติดต่อ</h3>
							<ul class="link">
								<li>โทร : 0898764321</a></li>
								<li>Email: nakronMU@hotmail.com</a></li>
								
							</ul>
						</div>
						
						<div class="col-md-6">
							<h3>เวลาทำการ</h3>
							<p>จ-ศ : 8-16.00น </p>
							<p>ส-อ : 11-16.00น </p>
							
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
