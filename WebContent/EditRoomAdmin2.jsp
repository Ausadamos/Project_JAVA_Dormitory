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

	<%@page import="java.util.ArrayList"%>
<%@ page import="DAO.RoomDAO"%>
<%@ page import="Bean.roomBean"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



<link href="https://fonts.googleapis.com/css?family=Prompt" rel="stylesheet">
<style>
  body {
font-family: 'Prompt', sans-serif;
        font-size: 16px;
   color: black;
background-color:#f5f5ef;
   
</style>

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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.2.3/css/bulma.css" integrity="sha256-JPJOXvCZ7dfewrTiPV+GJzvdwvrVs3f2jTyMOjLq0aQ=" crossorigin="anonymous" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.2.3/css/bulma.min.css" integrity="sha256-F7gqKszCwmz8vhiti+AICU8dLfIEpxzPVihhhGfbbKg=" crossorigin="anonymous" />
</head>
<body>


<section class="hero is-success">
  <div class="hero-body">
    <div class="container">
      <h1 class="title">
        Nakron Maejo
      </h1>
      <h2 class="subtitle">
        นครแม่โจ้
      </h2>
    </div>
  </div>

</section>




  <section class="section">
    <div class="container">
      <div class="heading">
       
       

<div class="tile is-ancestor">
  <div class="tile is-2 is-vertical is-parent">
    <div class="tile is-child box">
      <p class="title is-5">ยินดีต้อนรับ</p>
      
      

<%
			adminBean A = null;

			try {
				A = (adminBean) session.getAttribute("adminBean");
			} catch (Exception e) {
				A = null;
			}
		%>
		
		<h5 class="subtitle is-5">	ID Admin : <%=A.getAdminID()%></h5>
<h5 class="subtitle is-5">	Username: <%=A.getUsername()%></h5>
<a  href="index.jsp" class="button is-danger is-outlined">Logout</a>
   
						
					
    </div>
    <div class="tile is-child box">
    
    

  <ul class="menu-list">
 
    <li>
      <a class="is-active title is-5" href="#">เลือกรายการ</a>
      <ul>
        <li><a href="indexAdmin2.jsp" class="title is-6" >ค้นหาข้อมูลการจอง</a></li>
        <li><a href="BookAdmin2.jsp" class="title is-6" >จองห้องพัก</a></li>
        <li><a href="showRoomAdmin2.jsp" class="title is-6">ห้องพัก</a></li>
             <li><a href="ShowBillAdmin2.jsp" class="title is-6" >ตรวจสอบการชำระเงิน</a></li>
      
      </ul>
    </li>
    
  </ul>






    </div>
  </div>
  
 <%
						request.setCharacterEncoding("utf-8");
						response.setCharacterEncoding("utf-8");
											
						//รับค่าแก้ไข
						
				String room	 = request.getParameter("room_ID");
						
				String NumberRoom = request.getParameter("NumberRoom");
						
						String DayCost = request.getParameter("DayCost");
						
						String NameType = request.getParameter("NameType");
						
						String InsureCost = request.getParameter("InsureCost");	
						
						String StatusRoom = request.getParameter("StatusRoom");	
						
						String MouthCost  = request.getParameter("MouthCost");	
						
						
						
						int num = Integer.parseInt(room);
						
											 %>
		
											  

  	

  
  
  <div class="tile is-parent">
    <div class="tile is-child box">
      <p class="title">แก้ไขข้อมูลห้องพัก</p>
      
 <form action="UpdateRoomAdmin" method="post">
      	<input type="hidden" name="room_ID" value="<%=room%>">
      
				
			
<h5 class="title is-5">
	

     <label class="label">หมายเลขห้อง</label>
<p class="control">
  <input class="input"  type="number" disabled="disabled" value="<%=NumberRoom%>"  >
</p>		
			
		<label class="label">ราคารายวัน</label>
<p class="control">
  <input class="input"  type="number" name="DayCost"
						value="<%=DayCost%>" maxlength="5" >
</p>		
			
				<label class="label">ราคารายเดือน</label>
<p class="control">
  <input class="input"  type="number" name="MouthCost"
						value="<%=MouthCost%>" maxlength="5" >
</p>		
			
		
				<label class="label">ค่ามัดจำรายเดือน</label>
<p class="control">
  <input class="input"  type="number" name="InsureCost"
						value="<%=InsureCost%>" maxlength="5" >
</p>			
			
			
		<label class="label">ประเภทการจอง</label>
		<p class="control">
			<% if(StatusRoom.equals("RoomEmpty")){	%> 
  <label class="radio">
    <input type="radio"  value="RoomEmpty" name="StatusRoom"  checked="checked">
   ห้องว่าง
  </label>
  <label class="radio">
    <input type="radio" value="No_RoomEmpty" name="StatusRoom" >
   ห้องไม่ว่าง
  </label>
</p>	
			
		<%}else{ %>	
			
		 <label class="radio">
    <input type="radio"  value="RoomEmpty" name="StatusRoom"  >
   ห้องว่าง
  </label>
  <label class="radio">
    <input type="radio" value="No_RoomEmpty" name="StatusRoom" checked="checked" >
   ห้องไม่ว่าง
  </label>
</p>	
			
			<%} %>	
			
			
	<label class="label">สถานะการจอง</label>
		<p class="control">
		<%if(NameType.equals("Sweet Room")) {%>
  <label class="radio">
    <input type="radio" value="1" name="NameType" >
Super Deluxe
  </label>
  <label class="radio">
    <input type="radio" value="2" name="NameType">
Deluxe
  </label>
  <label class="radio">
    <input type="radio" value="3" name="NameType" checked="checked">
Sweet Room
  </label>
</p>	
			
		<%}else if(NameType.equals("Super Deluxe")){ %> 
			
		<label class="radio">
    <input type="radio" value="1" name="NameType" checked="checked" >
Super Deluxe
  </label>
  <label class="radio">
    <input type="radio" value="2" name="NameType">
Deluxe
  </label>
  <label class="radio">
    <input type="radio" value="3" name="NameType" >
Sweet Room
  </label>
</p>	
			
			
			<%}else{ %>
				
			<label class="radio">
    <input type="radio" value="1" name="NameType" >
Super Deluxe
  </label>
  <label class="radio">
    <input type="radio" value="2" name="NameType" checked="checked">
Deluxe
  </label>
  <label class="radio">
    <input type="radio" value="3" name="NameType" >
Sweet Room
  </label>
</p>	
			
			<%} %>
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
		
	

<br><br>


 
     
      <button type="submit" class="button is-success is-medium">
  <span class="icon">
    <i class="fa fa-check"></i>
  </span>
  <span>Save</span>
  
</button>
      
       
      <button type="reset" class="button  is-danger is-medium">
  <span class="icon">
    <i class="fa fa-times"></i>
  </span>
  <span>reset</span>
  
</button>
     








   
      
      
       
      
      
   	</form>
      
      </h5>
      
       </div>
  </div>
     
     	
</div>
      
 

 
      
   
      
 
   </div>
    </div>
  </section>
</body>





<footer class="footer">
  <div class="container">
    <div class="content has-text-centered">
      <p>
        <strong>Design</strong> by <a href="https://www.facebook.com/mos13571">กลุ่มจัดการหอพักออนไลน์</a>.
        นครแม่โจ้ comsci
        
      </p>
      <p>
      
      
      
        <a class="icon" href="https://github.com/jgthms/bulma">
          <i class="fa fa-github"></i>
        </a>
      </p>
    </div>
  </div>
</footer>







</body>
</html>