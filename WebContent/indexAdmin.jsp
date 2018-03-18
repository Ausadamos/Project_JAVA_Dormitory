<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Bean.adminBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Bean.roombook"%>
<%@page import="Bean.roomBean"%>
<%@page import="Bean.roomTypeBean"%>
<%@page import="Bean.adminBean"%>
<%@page import="DAO.RoomDAO"%>


<%@page import="Bean.customerBean"%>

<%@page import="DAO.CustomersDAO"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$('#button').click(function() {
			var num = 0;
			$('input[id^="chk[]"]').each(function(index) {
				if ($(this).attr('checked') == true) {
					num = num + 1;
				}
			});

			if (num == 0) {
				alert('ยังไม่เลือกเลย');
				return false;
			}
		});

	});
</script>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Luxe &mdash; 100% Free Fully Responsive HTML5 Template by
	FREEHTML5.co</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />


<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>

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

<link href="https://fonts.googleapis.com/css?family=Prompt" rel="stylesheet">
<style>
  body {
font-family: 'Prompt', sans-serif;
        font-size: 19px;
   color: black;
background-color:#f5f5ef;
   
</style>
</head>

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
						
							<li><a class="active" href="indexAdmin.jsp">Search Book</a></li>
							
							<li><a href="BookAdmin.jsp" class="fh5co-sub-ddown">Booking</a></li>
							
							<li><a href="ShowBillAdmin.jsp">Bill</a></li>
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

		

		

					<form  action="roomServlet" method="post">

						<%
							RoomDAO CD = new RoomDAO();

							ArrayList<roomBean> PB = new ArrayList<roomBean>();
						%>

					
						<br> ค้นหาจากเลขห้อง<select name="numroom" class="custom-select">

							<option value="">ไม่เลือกรายการ</option>
							<%
								PB = CD.UpdateBook();
								for (int i = 0; i < PB.size(); i++) {
							%>


							<option value="<%=(i + 1001)%>"><%=PB.get(i).getNumberRoom()%></option>

							<%
								}
							%>
						</select>
					
				<div class="form-group has-success">
  <label class="form-control-label" for="inputSuccess1">ค้นหาจากชื่อผู้เช่า</label>  <div class="col-xs-4">
		
		
		<input type="text" name="ContactName" class="form-control form-control-success" id="ContactName"  maxlength="15">
 
</div>

					</div>
					
				<br>ค้นหาจากประเภทการจอง 
				<div class="custom-controls-stacked">
  <label class="custom-control custom-radio">
    <input id="radioStacked1" name="roomType" value="" checked="checked" type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">ไม่มีการเลือก</span>
  </label>
  <label class="custom-control custom-radio">
    <input id="radioStacked2" name="roomType" value="Super Deluxe" type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">SuperDeluxe</span>
  </label>

		<label class="custom-control custom-radio">
    <input id="radioStacked3" name="roomType" value="Deluxe" type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">Deluxe</span>
  </label>
	
			<label class="custom-control custom-radio">
    <input id="radioStacked4" name="roomType" value="Sweet Room" type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">Sweet Room</span>
  </label>
</div>			
				
				
				
				<br><br><br><br><br>
				
				
				ค้นหาจากวันที่เข้าอยู่ <input type="date"
					name="date1" id="date1"><br> ถึงวันที่ออก <input
					type="date" name="date2" id="date2"> <br> 
					
					
					
					
					ประเภทการจอง<br>

				
			
				<div class="custom-controls-stacked">
  <label class="custom-control custom-radio">
    <input id="radioStacked1" name="book2" value="" checked="checked" type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">ไม่มีการเลือก</span>
  </label>
  <label class="custom-control custom-radio">
    <input id="radioStacked2" name="book2" value="monthly" type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">รายเดือน</span>
  </label>

		<label class="custom-control custom-radio">
    <input id="radioStacked3" name="book2" value="daily"type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">รายวัน</span>
  </label>
	
</div>			
				
			
			
			
			
			
			
			
			
			
			
			การอุนมัติการจอง <br> 
					
					<div class="custom-controls-stacked">
  <label class="custom-control custom-radio">
    <input id="radioStacked1" name="book" value="" checked="checked"  type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">ไม่มีการเลือก</span>
  </label>
  <label class="custom-control custom-radio">
    <input id="radioStacked2" name="book" value="Pending_Book" type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">รออนุมัติ</span>
  </label>

		<label class="custom-control custom-radio">
    <input id="radioStacked3" name="book" value="Pending_Booked" type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">อนุมัติ </span>
  </label>
  <label class="custom-control custom-radio">
    <input id="radioStacked4" name="book" value="No_Pending_Book" type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">ไม่อนุมัติ </span>
  </label>
	
</div>			
					
					
					
					
					
					
				 การชำระเงิน<br> 
			
					<div class="custom-controls-stacked">
  <label class="custom-control custom-radio">
    <input id="radioStacked1" name="pay" value="" checked="checked"  type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">ไม่มีการเลือก</span>
  </label>
  <label class="custom-control custom-radio">
    <input id="radioStacked2" name="pay" value="Pending_paybook" type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">รอชำระ</span>
  </label>

		<label class="custom-control custom-radio">
    <input id="radioStacked3" name="pay" value="Pending_paybooked" type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">ชำระแล้ว</span>
  </label>
 
	
</div>			
		
		
		
		
		
		
		
		
		
				<button type="submit" class="btn btn-info">ดูข้อมูล</button>
				&nbsp; &nbsp;
				<button type="reset" class="btn btn-warning">ล้าง</button>

			



			</form>
	
</div>


<footer id="footer" class="fh5co-bg-color">
<div class="container">
	<div class="row">
		<div class="col-md-3">
			<div class="copyright">
				<p>
					<small>&copy; 2016 Free HTML5 Template. <br> All
						Rights Reserved. <br> Designed by <a
						href="http://freehtml5.co" target="_blank">FreeHTML5.co</a> <br>
						Demo Images: <a href="http://unsplash.com/" target="_blank">Unsplash</a></small>
				</p>
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
					<p>Sed cursus ut nibh in semper. Mauris varius et magna in
						fermentum.</p>
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
				<li><a href="#"><i class="icon-twitter-with-circle"></i></a> <a
					href="#"><i class="icon-facebook-with-circle"></i></a> <a href="#"><i
						class="icon-instagram-with-circle"></i></a> <a href="#"><i
						class="icon-linkedin-with-circle"></i></a></li>
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