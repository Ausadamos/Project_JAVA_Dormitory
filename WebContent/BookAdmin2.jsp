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
  
  
  
  
  <div class="tile is-parent">
    <div class="tile is-child box">
      <p class="title">เพิ่มข้อมูลการจอง</p>
      
      <form action="AddBookAdminServlet" method="post">
      
      
				
						<%
  
		  
RoomDAO CD = new RoomDAO();
  	


ArrayList<roomBean> PB = new ArrayList<roomBean>();
%>
      
<h5 class="title is-5">
	

      <label class="label">หมายเลขห้อง</label>
<p class="control">
  <span class="select">
    <select name="numroom">

   <%  PB=CD.UpdateBook();
                    for(int i=0;i<PB.size();i++){ %>
   
   
   
			
			
      <option value="<%=(i+1001)%>">
				<%=PB.get(i).getNumberRoom()%></option>

			<%}%>
    </select>
  </span>
</p>
			
			
			
			
			
			
		<label class="label">ชื่อ</label>
<p class="control">
  <input class="input" name="fname" maxlength="20" required  type="text" placeholder="กรอกชื่อ">
</p>
			
			<label class="label">นามสกุล</label>
<p class="control">
  <input class="input" name="lname" maxlength="20" required  type="text" placeholder="กรอกนามสกุล">
</p>
				
	
	
	
	<label class="label">เบอร์โทร</label>
<p class="control">
  <input class="input" type="number" name="Tel" maxlength="13" required placeholder="กรอกเบอร์โทร">
</p>		
	
	
	
	<label class="label">วันที่เข้าอยู่</label>
<p class="control">
  <input class="input" type="date" name="date_in" required >
</p>		
		
		<label class="label">วันที่ออก</label>
<p class="control">
  <input class="input" type="date" name="date_out"  >
</p>	

		
			<label class="label">ประเภทการจอง</label>
		<p class="control">
  <label class="radio">
    <input type="radio"  name="TypeRoom"  value="daily" checked="checked">
   รายวัน
  </label>
  <label class="radio">
    <input type="radio" name="TypeRoom"  value="monthly" >
   รายเดือน
  </label>
</p>

		
		
			<label class="label">จำนวนผู้เข้าพัก</label>
		<p class="control">
  <label class="radio">
    <input type="radio"  name="people" value="1" checked="checked" >
1
  </label>
  <label class="radio">
    <input type="radio" name="people" value="2" >
  2
  </label>
</p>

		
		
	
       
		
   
   
   
   
   
   
   
   
   
   
   
   


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