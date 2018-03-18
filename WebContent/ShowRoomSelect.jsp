<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<%@page import="Bean.roomBean"%>
<%@page import="Bean.customerBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Room2</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />
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
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="css/superfish.css">
	<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
	<!-- CS Select -->
	<link rel="stylesheet" href="css/cs-select.css">
	<link rel="stylesheet" href="css/cs-skin-border.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Flat Icon -->
	<link rel="stylesheet" href="css/flaticon.css">
	<!-- Icomoon -->
	<link rel="stylesheet" href="css/icomoon.css">
	<link rel="stylesheet" href="css/flexslider.css">
	<link rel="stylesheet" href="css/style.css">
	 <link href="https://fonts.googleapis.com/css?family=Itim" rel="stylesheet">
	 
	<script src="js/modernizr-2.6.2.min.js"></script>
	
	
	
<style type="text/css">
div.div1{
	border-radius: 5px;
    background-color: #A2B5CD;
    padding: 10px;
	margin-left:10;
	width: 50%;
}div.div2{
	border-radius: 5px;
    background-color:#ffddcc;
    padding: 10px;
	margin-left:10;
	width: 80%;
	
}input[type=submit] {
    width: 20%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
   
 
}
  body {
    font-family: 'Itim', cursive;
    font-size: 22px;
    color: black;
    background-color: #e0e0eb;
     
     
    
}

    </style>
    
    </header>
<body bgcolor="#ccccb3">
	
	
		
		

<% customerBean cus = null;

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




 <div class="col-md-12">
<div class="div2"><font size="4" color="black"><center>หมายเลขห้องที่คุณเลือกคือ
	<%=room.getNumberRoom()%><br> ชั้น<%=room.getFloor()%>

	ราคาต่อเดือน<%=room.getMouthCost()%><br> 
	ราคาต่อวัน<%=room.getDayCost()%><br> ค่ามัดจำ(รายเดือน)<%=room.getInsureCost()%><br>
	<form action="ShowRoomSelectNew.jsp">
	
	
	
		<div class="custom-controls-stacked">
  <label class="custom-control custom-radio">
    <input id="radioStacked1" value="daily" name="typeroom"  type="radio" class="custom-control-input" checked="checked">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">รายวัน</span>
  </label>
  <label class="custom-control custom-radio">
    <input id="radioStacked2" value="monthly" name="typeroom" type="radio" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">รายเดือน</span>
  </label>
</div>

		<input type="submit" value="ยืนยัน"></center>



	</form>
<div align="center">
					<img alt=" " src="RoomMapPicture?id=<%=room.getNumberRoom()%>" onerror="this.src='img/default.png';" class="posting-logo-img" style="width: 550px; height: 450px;">
					</div>
	
</div>
					
	
	

	
	
	
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