<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@page import="java.util.ArrayList"%>
<%@ page import="DAO.RoomDAO"%>
<%@ page import="Bean.roomBean"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

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
<body>

<br><br><br><br>

	<center><div class="container">
	<div class="alert alert-info" role="alert">
		<table id="myTable" class="table" cellspacing="0" width="30%">

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
		
			
	

			<form action="UpdateRoomAdmin" method="post">
				<input type="hidden" name="room_ID" value="<%=room%>">

				<tr>
					<th align="left">เลขห้อง:</th>
					<th align="left"><input type="number" disabled="disabled"
						value="<%=NumberRoom%>" ></th>
				</tr>
			

				<tr>
					<th align="left">รายวัน:</th>
					<td align="left"><input type="number" name="DayCost"
						value="<%=DayCost%>" maxlength="6"></td>
				</tr>

				<tr>
					<th align="left">รายเดือน:</th>
					<td align="left"><input type="number" name="MouthCost"
						value="<%=MouthCost%>" maxlength="6"></td>
				</tr>

<tr>
					<th align="left">ค่ามัดจำรายเดือน:</th>
					<td align="left"><input type="number" name="InsureCost"
						value="<%=InsureCost%>" maxlength="6"></td>
				</tr>
				
				
		
				
				<tr>
				
					<th align="left">StatusRoom:</th>
					<td align="left">
						<% if(StatusRoom.equals("RoomEmpty")){	%> 
						<input type="radio" value="RoomEmpty" name="StatusRoom" checked="checked">ห้องว่าง
						 <input type="radio" value="No_RoomEmpty" name="StatusRoom">ห้องไม่ว่าง
						 <%}else{ %>
						<input type="radio" value="RoomEmpty" name="StatusRoom">ห้องว่าง
						<input type="radio" value="No_RoomEmpty" name="StatusRoom"
						checked="checked">ห้องไม่ว่าง <%} %>
					</td>
				</tr>



				<tr>
					<th align="left">NameType:</th>
					<td align="left">
						<%if(NameType.equals("Sweet Room")) {%>
	 <input type="radio" value="1" name="NameType">Super Deluxe
	 <input type="radio" value="2" name="NameType">Deluxe
     <input type="radio" value="3" name="NameType" checked="checked">Sweet Room

	<%}else if(NameType.equals("Super Deluxe")){ %> 
	<input type="radio" value="1" name="NameType" checked="checked">Super Deluxe
	 <input type="radio" value="2" name="NameType">Deluxe
     <input type="radio" value="3" name="NameType">Sweet Room

						<%}else{ %>
	<input type="radio" value="1" name="NameType">Super Deluxe
	 <input type="radio" value="2" name="NameType" checked="checked">Deluxe
     <input type="radio" value="3" name="NameType">Sweet Room
						
						<%} %>
					</td>
				</tr>


			




				<tr>
					<th><center>
							<input type="submit" name="ยืนยัน">
						</center></th>
				</tr>
		</table>
		</div>
</div>
	</center>








</body>
</html>