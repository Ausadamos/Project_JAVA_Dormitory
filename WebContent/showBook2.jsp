<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ page import="Bean.roomBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="Bean.customerBean"%>
<%@ page import="Bean.roombook"%>
<%@ page import="DAO.RoomDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$('#button').click(function(){
			var num = 0;
			$('input[id^="chk[]"]').each(function(index){
				if($(this).attr('checked') == true){
					num = num + 1;
				}
			});
			
			if(num == 0){
				alert('ยังไม่เลือกเลย');
				return false;
			}
		});
		
	});
</script>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">


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
	













<link href="https://fonts.googleapis.com/css?family=Athiti" rel="stylesheet">



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
    width: 100%;
    background-color: #b3ffb3;
    color: black;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}input[type=date] {
    width: 30%;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}  body {
  font-family: 'Athiti', sans-serif;
        font-size: 18px;
   color: black;

   
     }


</style>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
<title>Insert title here</title>
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
	



	<% 
customerBean cus = null;

		
		
		try {
			cus = (customerBean)session.getAttribute("customerBean");
		} catch (Exception e) {
			cus = null;
		}
		%>

	
			




	<div class="container">
			<div class="row">


			
		<% 
  	 RoomDAO SH = new RoomDAO();
  	

ArrayList<roombook> RB = new ArrayList<roombook>();
RB=SH.getroomBook(cus.getCustomerID()) ;
  	%>
  	
<%if(RB.size() > 0){ %>
	<form action="DeleteBookMember" method="POST" id="form1" name="form1">
		<center>
			<table cellspacing="0" class="table table-hover" width="100%">
			
				<tr>
					<th scope="row">เลือกรายการ</th>
				<th>ลำดับ</th>
<th>เลขห้อง</th>




<th>วันที่เข้า</th>
<th>วันที่ออก</th>
<th>ประเภทการจอง</th>

<th>สถานะการจอง</th>
<th>สถานะการชำระเงิน</th>


<th>จำนวน</th>



				</tr>
	

				<%
                    
                    for(int i=0;i<RB.size();i++){ %>



				
				
                          

			<tbody>		
				<tr>
<%if (!("Pending_Booked".equals(RB.get(i).getStutus_book()))){ %>
					
					<td>
						
						
						
						<label class="custom-control custom-checkbox">
  <input type="checkbox" class="custom-control-input" name="id_del"
						value="<%=RB.get(i).getBookID()%>" id="chk[]">
  <span class="custom-control-indicator"></span>
  <span class="custom-control-description">.</span>
</label>



		</td>				
						
						
<td> <%=i+1%></td>

<%}else{ %>

<td></td>
<td> <%=i+1%></td>
<%} %>
					<td> <%=RB.get(i).getNumberRoom()%></td>
					
					


                   
					<td><%=RB.get(i).getDateCheckIn()%></td>
					
					
					<%if((RB.get(i).getDateCheckOut()) == null){ %>
						<td><%="ไม่มีข้อมูล"%></td>
                      <%}else{ %>
                      <td><%=RB.get(i).getDateCheckOut()%></td>
                      
                      <%} %>
                      <%if ("daily".equals(RB.get(i).getBookType())) { %>
					<td><%="รายวัน"%></td>
					<%}else{ %>
					<td><%="รายเดือน"%></td>
					
					<%} %>
					
					
					
					<%if ("Pending_Book".equals(RB.get(i).getStutus_book())) { %>
                   <td>รออนุมัติ</td>
                   
                   <%}else if("Pending_Booked".equals(RB.get(i).getStutus_book())){%>
                     <td>อนุมัติ</td>
                   <%}else{%>
                    <td>ไม่อนุมัติ</td>
                   
                   <%} %>
                   
                   <%if("Pending_paybook".equals(RB.get(i).getStutus_payBook())){ %>
					
                   <td>ไม่ได้ชำระเงิน</td>
                   
                   <%}else{%>
                     <td>ชำระเงินแล้ว</td>
                   <%} %>
                   
                   
					<td><%=RB.get(i).getPeople()%>คน</td>




					



					
				
<%if ("Pending_Book".equals(RB.get(i).getStutus_book())){ %>
<td><a
href="EditBookMember.jsp?number_room=<%=RB.get(i).getRoomID()%>&&date_out=<%=RB.get(i).getDateCheckOut()%>&&date_in=<%=RB.get(i).getDateCheckIn()%>&&BookType=<%=RB.get(i).getBookType()%>&&book_ID=<%=RB.get(i).getBookID()%>
&&People=<%=RB.get(i).getPeople()%>">แก้ไข

					</a></td>
					
<%}else{ %>
		<td> </td>
<%} }%>

				</tr>

</tbody>	
	

				<tr>
					<td>
						<p>
							<input type="SUBMIT" value="ลบข้อมูล" id="button">
						</p>
					</td>
				</tr>

			</table>
		</center>
	</form>

<%}else{ %>

 <br> <br>

<div class="alert alert-success " role="alert" style="width: 30%">

  <h4 class="alert-heading">ไม่มีข้อมูล</h4>
  <p></p>
  <p class="mb-0"></p>
</div>

<%} %>
</div>
</div>



<footer id="footer" class="fh5co-bg-color">	
	</footer>
	
	
	
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