<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="Bean.roomBean"%>
<%@page import="Bean.customerBean"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>ROOM</title>
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
	<style type="text/css">
 body {
    font-family: 'Itim', cursive;
    font-size: 22px;
    color: black;
    background-color: #e6e6ff;
     
     
    
}
</style>
</head>
<body>
	<div id="fh5co-wrapper">
	<div id="fh5co-page">
	<div id="fh5co-header">
		<header id="fh5co-header-section">
			<div class="container">
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
					<h1 id="fh5co-logo"><a href="index.html">Luxe</a></h1>
					<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
								<li><a class="active" href="showLog.jsp">Home</a></li>
							
							<li><a href="showBook2.jsp">Date Book</a></li>
								<li><a href="member2.jsp">Member</a></li>
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


	<div id="fh5co-hotel-section" >
		<div class="container">
			<div class="row">
			
			
	<%
					ArrayList roomList = (ArrayList) request.getAttribute("roomlist");

					roomBean room = null;

					for (int i = 0; i < roomList.size(); i++) {
						room = (roomBean) roomList.get(i);
				%>
			
			
			
				<div class="col-md-4">
					<div class="hotel-content" style="background-color: #b3b3ff">
						<div class="hotel-grid" style="background-image: url(RoomPictureServlet?id=<%=room.getRoomID()%>);">
							
							
							
							
							
							
			
						
						
						
						
					<div class="bd-example">
<br>
  <a class="book-now text-center" href="ServletBook?id=<%=room.getRoomID()%>" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><i class="ti-calendar"></i>จองเลย</a>
						
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-dialog modal-lg" >
    <div class="modal-content">
    
    </div>
  </div>
    </div>
  </div>
</div>	
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						</div>
						<div class="desc" >
							<h3><a href="#">ห้อง <%=room.getNumberRoom()%></a></h3>
							<p>ชั้น<%=room.getFloor()%></p>
							<%=room.getDayCost()%> /วัน </span><span><%=room.getInsureCost()%> /เดือน 
						</div>
					</div>
				</div>
				
			<%} %>
				

			</div>
		</div>
	</div>
	

	<footer id="footer" class="fh5co-bg-color">
		<div class="container">
			
		</div>
	</footer>


	
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