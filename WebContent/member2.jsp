
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.RoomDAO"%>
<%@page import="Bean.roomBean"%>
<%@page import="Bean.roomTypeBean"%>
<%@page import="Bean.customerBean"%>
<%@ page import="DAO.CustomersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Meghna | Responsive Multipurpose Parallax HTML5 Template</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Luxe &mdash; 100% Free Fully Responsive HTML5 Template by FREEHTML5.co</title>
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
	<link rel="stylesheet" href="css/styleform.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	
	 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/style.css">
     <link href="https://fonts.googleapis.com/css?family=Itim" rel="stylesheet">
 <style>
      body {
    font-family: 'Itim', cursive;
        font-size: 25px;
   color: black;
background-color:#e0ebeb;
   
     
    
}

    </style>
</head>

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
							<li><a class="active" href="ShowLog.jsp">Home</a></li>
								<li><a href="showBook2.jsp">Date Book</a></li>
							<li><a href="services.html">Services</a></li>
							<li><a href="blog.html">Blog</a></li>
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
		   						<p><span>Bora Hotel</span></p>
		   						<h2>Reserve Room for Family Vacation</h2>
			   					<p>
			   						
			   					</p>
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
		   						<p><span>Deluxe Hotel</span></p>
		   						<h2>Make Your Vacation Comfortable</h2>
			   					<p>
			   						
			   					</p>
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
		   						<p><span>Luxe Hotel</span></p>
		   						<h2>A Best Place To Enjoy Your Life</h2>
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
	

	 <br>  <br>  <br>  
 

		<center><table   width="50%" bordercolor="#49d049">

<tr class="bg-success">
			ข้อมูลของท่าน
	


			
			
		<td><center>IDลูกค้า : <%=cus.getCustomerID()%><br>
		
			ชื่อ : <%=cus.getFirstname()%><br>
		

			นามสกุล: <%=cus.getLastname()%><br>
		

	
				รหัสประจำตัวประชาชน :<%=cus.getCitizen_id()%><br>
		
		
			ที่อยู่ :<%=cus.getAddress()%><br>
		
	
				เบอร์ติดต่อ : <%=cus.getTel()%></center></td>
				

</tr>
		<tr class="bg-success"><td><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">แก้ไขข้อมูส่วนตัว</button>
 <a href="index.jsp" <button class="btn btn-danger" >logout</button>></a>
 </td></tr>	
				</table>		
		</center>



<br><br>
		
<div class="bd-example" >
  
  
 

<center><form action="BillCustomerServlet" method="post" class="col-xs-2 col-form-label">

					<input type="hidden" name="CustomerID"
						value="<%=cus.getCustomerID()%>"> 
						
						
						<input type="submit" class="btn btn-danger"
						value="ใบเสร็จการจองรายวัน">



				</form>

<form action="BillCustomerServlet2" method="post" class="col-xs-2 col-form-label">

					<input type="hidden" name="CustomerID"
						value="<%=cus.getCustomerID()%>"> <input type="submit" class="btn btn-danger"
						value="ใบเสร็จการจองรายเดือน">



				</form>
				
	
	
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
        
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          
          <h4 class="modal-title" id="exampleModalLabel">แก้ไขข้อมูลส่วนตัว</h4>
        </div>
        <div class="modal-body">
         
         
         <table id="myTable" class="table" 
			>
         
         <%
											  
CustomersDAO CD = new CustomersDAO();
  	


ArrayList<customerBean> PB = new ArrayList<customerBean>();
%>

			<form action="UpdateProfileMember" method="post" >
			
				<input type="hidden" name="CustomerID" value="<%=cus.getCustomerID()%>">
                <input type="hidden" name="Password" value="<%=cus.getPassword()%>">
				<tr>
					<th align="left">รหัสประชาชน:</th>
					<th align="left">

<input type="number" name="Citizen_id"  "
						value="<%=cus.getCitizen_id()%>" maxlength="6"></th>
				</tr>
				
				


				<tr>
					<th align="left">emil:</th>
					<th align="left"><input type="text" name="Email"
						value="<%=cus.getEmail()%>" maxlength="6"></th>
				</tr>

				<tr>
					<th align="left">Firstname:</th>
					<th align="left"><input type="text" name="Firstname"
						value="<%=cus.getFirstname()%>" maxlength="6"></th>
				</tr>

				<tr>
					<th align="left">Lastname:</th>
					<th align="left"><input type="text" name="Lastname"
						value="<%=cus.getLastname()%>" maxlength="6"></th>
				</tr>
				<tr>
					<th align="left">Tel:</th>
					<th align="left"><input type="text" name="Tel"
						value="<%=cus.getTel()%>" maxlength="6"></th>
				</tr>
				<tr>
					<th align="left">Username:</th>
					<th align="left"><input type="text" name="Username"
						value="<%=cus.getUsername()%>" maxlength="6"></th>
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


				
				
		</table>

         
         
         
         
         
         
         
         
         
         
         
         
          
          
        </div>
        
       
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">ยกเลิก</button>
          <button type="submit" class="btn btn-primary">ตกลง</button>
        </div>
        </form>
      </div>
    </div>
  </div>
</div>
			
	<script type="text/javascript">
	
	$('#exampleModal').on('show.bs.modal', function (event) {
		  var button = $(event.relatedTarget) // Button that triggered the modal
		  var recipient = button.data('whatever') // Extract info from data-* attributes
		  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
		  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
		  var modal = $(this)
		  modal.find('.modal-title').text('New message to ' + recipient)
		  modal.find('.modal-body input').val(recipient)
		})
	
	</script>

	
 <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>
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
	
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

      <script src="js/index.js"></script>
	
	
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
