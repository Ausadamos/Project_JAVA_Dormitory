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
  
  <%
						request.setCharacterEncoding("utf-8");
						response.setCharacterEncoding("utf-8");
											
						//รับค่าแก้ไข
						
				String book_ID	 = request.getParameter("book_ID");
						String number_room = request.getParameter("number_room");
						
						String BookType = request.getParameter("BookType");
						
						String Stutus_payBook = request.getParameter("Stutus_payBook");
						
						String Stutus_book = request.getParameter("Stutus_book");	
						
						String date_in = request.getParameter("date_in");	
						String date_out = request.getParameter("date_out");	
						
						String people = request.getParameter("people");	
						
						int num = Integer.parseInt(number_room);
						int people2 = Integer.parseInt(people);
											 %>
			
			<%
											  
RoomDAO CD = new RoomDAO();
  	


ArrayList<roomBean> PB = new ArrayList<roomBean>();
%>
  
  
  <div class="tile is-parent">
    <div class="tile is-child box">
      <p class="title">แก้ไขการจอง</p>
      
     <form action="UpdateBookAdmin" method="post">
      <input type="hidden" name="book_ID" value="<%=book_ID%>">
      
				
			
<h5 class="title is-5">
	

      <label class="label">หมายเลขห้อง</label>
<p class="control">
  <span class="select">
    <select name="numroom">


							<%  PB=CD.UpdateBook();
                    for(int i=0;i<PB.size();i++){ %>

							<%if((i+1001) == num){ %>
							<option value="<%=(i+1001)%>" selected="selected"><%=PB.get(i).getNumberRoom()%></option>
							<%} else { %>
							<option value="<%=(i+1001)%>"><%=PB.get(i).getNumberRoom()%></option>
							<%} %>


							<%}%>
					</select>
  </span>
</p>
			
			
		<label class="label">จำนวนผู้เข้าพัก</label>
		<p class="control">
			<%if(people2 == 1){ %> 
  <label class="radio">
    <input type="radio"  name="people" value="1" checked="checked" >
1
  </label>
  <label class="radio">
    <input type="radio" name="people" value="2" >
  2
  </label>
</p>
	<%}else{ %>		
		 <label class="radio">
    <input type="radio"  name="people" value="1"  >
1
  </label>
  <label class="radio">
    <input type="radio" name="people" value="2" checked="checked" >
  2
  </label>
</p>	
			
		<%} %>	
			
	
	<label class="label">วันที่เข้าอยู่</label>
<p class="control">
  <input class="input" type="date" value="<%=date_in%>" name="date_in" required >
</p>		
		
		<label class="label">วันที่ออก</label>
<p class="control">
  <input class="input" type="date" name="date_out" value="<%=date_out%>" >
</p>	

		
			
		
			<label class="label">ประเภทการจอง</label>
		<p class="control">
		<% if(BookType.equals("daily")){	%>
  <label class="radio">
    <input type="radio"  name="typeroom"  value="daily" checked="checked">
   รายวัน
  </label>
  <label class="radio">
    <input type="radio" name="typeroom"  value="monthly" >
   รายเดือน
  </label>
</p>	
			
		<%}else{ %>	
			
			<label class="radio">
    <input type="radio"  name="typeroom"  value="daily" >
   รายวัน
  </label>
  <label class="radio">
    <input type="radio" name="typeroom"  value="monthly" checked="checked">
   รายเดือน
  </label>
</p>	
			
			<%} %>
			
			
				<label class="label">สถานะการชำระเงิน</label>
		<p class="control">
		<%if(Stutus_payBook.equals("Pending_paybook")) {%>
  <label class="radio">
    <input type="radio"  value="Pending_paybook" name="Stutus_payBook" checked="checked">
รอชำระเงิน
  </label>
  <label class="radio">
    <input type="radio" value="Pending_paybooked" name="Stutus_payBook">
ชำระเงินแล้ว
  </label>
</p>	
			
		<%}else{ %>	
			
			 <label class="radio">
    <input type="radio"  value="Pending_paybook" name="Stutus_payBook" >
รอชำระเงิน
  </label>
  <label class="radio">
    <input type="radio" value="Pending_paybooked" name="Stutus_payBook" checked="checked">
ชำระเงินแล้ว
  </label>
</p>	
			
			<%} %>
			
			
			
			
		<label class="label">สถานะการจอง</label>
		<p class="control">
	<%if(Stutus_book.equals("Pending_Book")){%>
  <label class="radio">
    <input type="radio" value="Pending_Book" name="Stutus_book" checked="checked">
รออนุมัติ
  </label>
  <label class="radio">
    <input type="radio" value="Pending_Booked" name="Stutus_book">
อนุมัติ
  </label>
  <label class="radio">
    <input type="radio" value="No_Pending_Book" name="Stutus_book">
ไม่อนุมัติ
  </label>
</p>	
			
		<%}else if(Stutus_book.equals("Pending_Booked")){ %>
			
		<label class="radio">
    <input type="radio" value="Pending_Book" name="Stutus_book" >
รออนุมัติ
  </label>
  <label class="radio">
    <input type="radio" value="Pending_Booked" name="Stutus_book" checked="checked">
อนุมัติ
  </label>
  <label class="radio">
    <input type="radio" value="No_Pending_Book" name="Stutus_book">
ไม่อนุมัติ
  </label>
</p>	
			
			
			<%}else{ %>
				
			<label class="radio">
    <input type="radio" value="Pending_Book" name="Stutus_book" >
รออนุมัติ
  </label>
  <label class="radio">
    <input type="radio" value="Pending_Booked" name="Stutus_book">
อนุมัติ
  </label>
  <label class="radio">
    <input type="radio" value="No_Pending_Book" name="Stutus_book" checked="checked">
ไม่อนุมัติ
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