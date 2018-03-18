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
</head>
<body>



	<center>
		<table id="myTable" class="display" cellspacing="0" table border="0"
			style="background-color: #95FFC4" width="30%">

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

			<form action="UpdateBookAdmin" method="post">
				<input type="hidden" name="book_ID" value="<%=book_ID%>">

				<tr>
					<th align="left">number_room:</th>
					<th align="left"><select name="numroom">


							<%  PB=CD.UpdateBook();
                    for(int i=0;i<PB.size();i++){ %>

							<%if((i+1001) == num){ %>
							<option value="<%=(i+1001)%>" selected="selected"><%=PB.get(i).getNumberRoom()%></option>
							<%} else { %>
							<option value="<%=(i+1001)%>"><%=PB.get(i).getNumberRoom()%></option>
							<%} %>


							<%}%>
					</select></th>
				</tr>
				<th align="left">จำนวนคนพัก:</th>
				<th align="left">
					<%if(people2 == 1){ %> 
					
					<input type="radio" value="1"
					name="people" checked="checked">1 
					
					<input type="radio"
					value="2" name="people">2 <%}else{ %> <input
					type="radio" value="1" name="people">1 <input
					type="radio" value="2" name="people" checked="checked">2
				</th>

				<%} %>


				<tr>
					<th align="left">date_in:</th>
					<th align="left"><input type="date" name="date_in"
						value="<%=date_in%>" maxlength="6"></th>
				</tr>

				<tr>
					<th align="left">date_out:</th>
					<th align="left"><input type="date" name="date_out"
						value="<%=date_out%>" maxlength="6"></th>
				</tr>

				<tr>
					<th align="left">book_type:</th>
					<th align="left">
						<% if(BookType.equals("daily")){	%> <input type="radio"
						value="daily" name="typeroom" checked="checked">รายวัน <input
						type="radio" value="monthly" name="typeroom">รายเดือน <%}else{ %>
						<input type="radio" value="daily" name="typeroom">รายวัน
						<input type="radio" value="monthly" name="typeroom"
						checked="checked">รายเดือน <%} %>
					</th>
				</tr>



				<tr>
					<th align="left">สถานะการชำระเงิน:</th>
					<th align="left">
						<%if(Stutus_payBook.equals("Pending_paybook")) {%> <input
						type="radio" value="Pending_paybook" name="Stutus_payBook"
						checked="checked">รอชำระเงิน <input type="radio"
						value="Pending_paybooked" name="Stutus_payBook">ชำระเงินแล้ว


						<%}else{ %> <input type="radio" value="Pending_paybook"
						name="Stutus_payBook">รอชำระเงิน <input type="radio"
						value="Pending_paybooked" name="Stutus_payBook" checked="checked">ชำระเงินแล้ว


						<%} %>
					</th>
				</tr>


				<tr>
					<th align="left">สถานะการจอง:</th>
					<th align="left">
						<%if(Stutus_book.equals("Pending_Book")){%> <input type="radio"
						value="Pending_Book" name="Stutus_book" checked="checked">รออนุมัติ
						<input type="radio" value="Pending_Booked" name="Stutus_book">อนุมัติ
						<input type="radio" value="No_Pending_Book" name="Stutus_book">ไม่อนุมัติ

		<%}else if(Stutus_book.equals("Pending_Booked")){ %> <input type="radio" value="Pending_Book"
						name="Stutus_book">รออนุมัติ <input type="radio"
						value="Pending_Booked" name="Stutus_book" checked="checked" >อนุมัติ
						<input type="radio" value="No_Pending_Book" name="Stutus_book" >ไม่อนุมัติ




						<% }else{ %> <input type="radio" value="Pending_Book"
						name="Stutus_book">รออนุมัติ <input type="radio"
						value="Pending_Booked" name="Stutus_book" checked="checked">อนุมัติ
						<input type="radio" value="No_Pending_Book" name="Stutus_book" checked="checked">ไม่อนุมัติ


<%} %>


					</th>
				</tr>




				<tr>
					<th><center>
							<input type="submit" name="ยืนยัน">
						</center></th>
				</tr>
		</table>
	</center>









</body>
</html>