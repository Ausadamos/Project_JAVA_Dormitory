<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@ page import="DAO.RoomDAO"%>
<%@ page import="Bean.roomBean"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.js"></script>


<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>confrem</title>
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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" integrity="sha384-3ceskX3iaEnIogmQchP8opvBy3Mi7Ce34nWjpBIwVTHfGYWQS9jwHDVRnpKKHJg7" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Athiti" rel="stylesheet">

  <link href="https://fonts.googleapis.com/css?family=Itim" rel="stylesheet">
 



<title>Insert title here</title>
</head>
<style type="text/css">
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
    width: 50%;
    background-color: #D8BFD8;
    color: black;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}input[type=hidden] {
    width: 0%;
   
   
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;hidden
}  body {
    font-family: 'Itim', cursive;
        font-size: 22px;
   color: black;
background-color:#f2f2f2;
   
     


</style>
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
							<li><a class="active" href="index.jsp">Home</a></li>
							
							</li>
							<li><a href="services.html">Services</a></li>
				<li><a href="showBook.jsp">Date Book</a></li>				
							<li><a href="contact.html">Contact</a></li>
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
	<!-- end:fh5co-header -->
	<br>
	<br>
	<br>

<center>

<div class="container" style="width: 50% ; "  >
		<table id="myTable" class="table table-hover" width="50%">

			<%
						request.setCharacterEncoding("utf-8");
						response.setCharacterEncoding("utf-8");
											
						//รับค่าแก้ไข
											
						String number_room = request.getParameter("number_room");
						String date_in = request.getParameter("date_in");
						String date_out = request.getParameter("date_out");
						
						String book_ID = request.getParameter("book_ID");					
						String BookType	= request.getParameter("BookType");	
						String People	= request.getParameter("People");	
					
						int num = Integer.parseInt(number_room);
						%>

			<%
  
RoomDAO CD = new RoomDAO();
  	


ArrayList<roomBean> PB = new ArrayList<roomBean>();
%>





			<form action="UpdateBook" method="post">
				<input type="hidden" name="book_ID" value="<%=book_ID%>">

				<tr>
					<th align="left">number_room:</th>
					<td align="left"><select name="numroom" class="custom-select">


							<%  PB=CD.UpdateBook();
                    for(int i=0;i<PB.size();i++){ %>


							<%if((i+1001) == num){ %>
							<option value="<%=(i+1001)%>" selected="selected">(<%=PB.get(i).getNumberRoom()%>)<%=PB.get(i).getNameType()%></option>
							<%} else { %>
							<option value="<%=(i+1001)%>">(<%=PB.get(i).getNumberRoom()%>)<%=PB.get(i).getNameType()%></option>
							<%} %>


							<%}%>
					</select></td>
				</tr>




				<tr>
					<th align="left">date_in:</th>
					<td align="left"><input type="date" name="date_in"
						maxlength="20" value="<%=date_in%>" required></td>
				</tr>
				<tr>
					<%if(BookType.equals("daily")) {%>
					<th align="left">date_out:</th>
					<td align="left"><input type="date" name="date_out"
						value="<%=date_out%>" maxlength="6"></td>
					<%}else{ %>
					<input type="hidden" name="date_out" value="<%=date_out%>"
						maxlength="6">

					<%} %>
				</tr>

				<tr>
					<th align="left">book_type:</th>
					<td align="left">
						<% if(BookType.equals("daily")){	%> 
						
						
						
			<div class="custom-controls-stacked">
  <label class="custom-control custom-radio">
    <input id="radioStacked1" value="daily" name="typeroom" checked="checked" type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">รายวัน</span>
  </label>
  <label class="custom-control custom-radio">
    <input id="radioStacked2" value="monthly" name="typeroom" type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">รายเดือน</span>
  </label>
</div>			
	<%}else{ %>					
						
								
			<div class="custom-controls-stacked">
  <label class="custom-control custom-radio">
    <input id="radioStacked1" value="daily" name="typeroom"  type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">รายวัน</span>
  </label>
  <label class="custom-control custom-radio">
    <input id="radioStacked2" value="monthly" name="typeroom" type="radio" checked="checked" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">รายเดือน</span>
  </label>
</div>					
						
						
			<%} %>			
						
						
						
						
						
						
						
					</td>
				</tr>

<tr>
					<th align="left">จำนวนผู้พักอาศัย</th>
					<td align="left">
					
		<% if(People.equals("1")){	%> 
		<label class="custom-control custom-radio">
  <input id="radio1"  type="radio" value="1" name="People" checked="checked" class="custom-control-input">
  <span class="custom-control-indicator"></span>
  <span class="custom-control-description">1</span>
</label>
<label class="custom-control custom-radio">
  <input id="radio2" value="2" name="People"  type="radio" class="custom-control-input" >
  <span class="custom-control-indicator"></span>
  <span class="custom-control-description">2</span>
</label>
			<%}else{ %>
		<label class="custom-control custom-radio">
  <input id="radio1"  type="radio" value="1" name="People"  class="custom-control-input">
  <span class="custom-control-indicator"></span>
  <span class="custom-control-description">1</span>
</label>
<label class="custom-control custom-radio">
  <input id="radio2" value="2" name="People"  type="radio" checked="checked" class="custom-control-input" >
  <span class="custom-control-indicator"></span>
  <span class="custom-control-description">2</span>
</label>
		
		
		
			<%} %>
		
					</td>
				</tr>



				
					<center><tr>
							<th><input type="submit" name="ยืนยัน"></th>
						
					</tr></center>
			
		</table>
		
	</center>



</div>
	</div>
<br>
	<br>
	<br>
		
	

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





