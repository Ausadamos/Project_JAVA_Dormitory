<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="Bean.roomBean"%>
<%@page import="Bean.customerBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Room3</title>
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
	 <link href="https://fonts.googleapis.com/css?family=Itim" rel="stylesheet">
 
	 
	<style type="text/css">
	 body {
    font-family: 'Itim', cursive;
        font-size: 25px;
   color: black;
background-color:#e0ebeb;
   
   }
div.div1{
	border-radius: 5px;
    background-color: #A2B5CD;
    padding: 10px;
	margin-left:10;
	width: 50%;
}div.div2{
	border-radius: 5px;
    background-color: #D8BFD8;
    padding: 10px;
	margin-left:10;
	width: 60%;
}input[type=submit] {
    width: 20%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}input[type=date] {
    width: 40%;
   
  
    border: red;
    border-radius: 6px;
    cursor: pointer;
}
  body{
    font-family: 'Itim', cursive;
        font-size: 25px;
   color: black;
background-color:#e0ebeb;
   
     
    
}

</style>



<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" integrity="sha384-3ceskX3iaEnIogmQchP8opvBy3Mi7Ce34nWjpBIwVTHfGYWQS9jwHDVRnpKKHJg7" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
<body >
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
		</header>
		

	
	
	<% 
						request.setCharacterEncoding("utf-8");
						response.setCharacterEncoding("utf-8");
											
					
											
						String typeroom = request.getParameter("typeroom");
						
						%>

	<% 
customerBean cus = null;

		
		
		try {
			cus = (customerBean)session.getAttribute("customerBean");
		} catch (Exception e) {
			cus = null;
		}
		%>



	






	<%

roomBean room= new roomBean();
room = (roomBean) session.getAttribute("room");


%>
<br><br>


<center><div class="card card-success" style="width: 50% " >
  <img class="card-img-top" src="logo-meghna.png" width="50%">
  <div class="card-block">
    <h4 class="card-title">หมายเลขห้อง<%=room.getNumberRoom()%></h4>
   
  </div>
 
  <% if(typeroom.equals("daily")){%>
  <form method="post" action="bookToDAOServlet_D">
  <ul class="list-group list-group-flush " >
    <li class="list-group-item">ประเภทการจองรายวัน <%=room.getDayCost()%> บาท/คืน</li>
    
  
    <li class="list-group-item"><div class="form-group row">
  <label for="example-date-input" class="col-xs-3 col-form-label">วันที่เข้าพัก</label>
  <div class="col-xs-9">
    <input class="form-control" type="date" name="datein" id="example-date-input">
  </div>
</div></li>
      <li class="list-group-item"><div class="form-group row">
  <label for="example-date-input" class="col-xs-3 col-form-label">วันที่ออก </label>
  <div class="col-xs-9">
    <input class="form-control" type="date" name="dateout" id="example-date-input">
  </div>
</div></li>
        <li class="list-group-item">

จำนวนผู้เข้าพักอาศัย <label class="custom-control custom-radio">
  <input id="radio1" value="1" name="people" type="radio" class="custom-control-input">
  <span class="custom-control-indicator"></span>
  <span class="custom-control-description">1ท่าน</span>
</label>
<label class="custom-control custom-radio">
  <input id="radio2" value="2" name="people"  type="radio" class="custom-control-input">
  <span class="custom-control-indicator"></span>
  <span class="custom-control-description">2ท่าน</span>
</label>

      </li>
  </ul>
  <div class="card-block" >
    <input type="hidden"
			value="<%=room.getRoomID()%>" name="roomID"><br> <input
			type="hidden" value="<%=cus.getCustomerID()%>" name="CustomerID"><br>
		<input type="hidden" value="<%=typeroom%>" name="typeroom"> </font>
		<input type="submit" name="submit" value="ยืนยัน"><br>

  </div>
</div></center>
  </form>
  
  <%} %>
  
  <% if(typeroom.equals("monthly")){ %>
  	<form method="post" action="bookToDAOServlet_M">
  <ul class="list-group list-group-flush">
    <li class="list-group-item">ประเภทการจองรายเดือน <%=room.getDayCost()%></li>
    
  
    <li class="list-group-item">
  วันที่เข้าอยู่<input class="form-control" type="date" name="datein" id="example-date-input">

</li>
      
      
      
        <li class="list-group-item">

จำนวนผู้เข้าพักอาศัย <label class="custom-control custom-radio">
  <input id="radio1" value="1" name="people" type="radio" class="custom-control-input">
  <span class="custom-control-indicator"></span>
  <span class="custom-control-description">1ท่าน</span>
</label>
<label class="custom-control custom-radio">
  <input id="radio2" value="2" name="people"  type="radio" class="custom-control-input">
  <span class="custom-control-indicator"></span>
  <span class="custom-control-description">2ท่าน</span>
</label>

      </li>
  </ul>
  <div class="card-block" >
    <input type="hidden"
			value="<%=room.getRoomID()%>" name="roomID"><br> <input
			type="hidden" value="<%=cus.getCustomerID()%>" name="CustomerID"><br>
		<input type="hidden" value="<%=typeroom%>" name="typeroom"> </font>
		<input type="submit" name="submit" value="ยืนยัน"><br>

  </div>
</div></center>

  </form>
  <%} %>
  
   </blockquote>
  </div>
</div>
  
  


	

	<footer id="footer" class="fh5co-bg-color">
		
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