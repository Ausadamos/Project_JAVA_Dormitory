<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Bean.roombook"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>





<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap4.min.js"></script>
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.5/css/bootstrap.css">

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.5/css/bootstrap.css">

<link href="https://fonts.googleapis.com/css?family=Athiti" rel="stylesheet">

<style type="text/css">

body{
font-family: 'Athiti', sans-serif;
font-size: 17.5px;
background-color: White;
}

</style>

</head>
<body>




	
<div class="container">
	<br>

	<form action="DeleteBookAdmin" method="POST">
		<table   id="example" class="table table-striped table-bordered" >
		 <thead>
            <tr>
                            <th>เลือก</th>
                                 <th>ลำดับ</th>
                
                <th>หมายเลขห้อง</th>
                <th>วันที่จอง</th>
                <th>วันที่เข้าอยู่</th>
                <th>วันที่ออก</th>
                <th>ประเภทการจอง</th>
                 <th>สถานะการชำระเงิน</th>
                <th>สถานะการจอง</th>
                <th>จำนวน</th>
                <th>ชื่อ นามสกุล</th>
           
                <th>ประเภทห้อง</th>
                     <th></th>
            </tr>
        </thead>
        
<tbody>
			<%
		ArrayList<roombook> List2 = (ArrayList<roombook>)
		                            request.getAttribute("show");
int i=0;
							for(roombook bean : List2){
						%>
			<tr>
			
				<td><input type="CHECKBOX" name="id_del"
					value="<%=bean.getBookID()%>" id="chk[]"></td>
	<td><%=++i %></td>

			
				
				<td><%=bean.getNumberRoom()%></td>
				<td><%=bean.getBookDate()%></td>
				<td><%=bean.getDateCheckIn()%></td>
				<%if (null == bean.getDateCheckOut()) { %>
				<td>ไม่มีข้อมูล</td>
				<%}else{ %>
				<td><%=bean.getDateCheckOut()%></td>
				<%} %>
				<%if ("daily".equals(bean.getBookType())) { %>
				<td>รายวัน</td>
				<%}else{ %>
					<td>รายเดือน</td>
					<%} %>
					<%if ("Pending_paybook".equals(bean.getStutus_payBook())) { %>
				<td>ยังไม่ได้ชำระเงิน</td>
				<%}else{ %>
					<td>ชำระเงินแล้ว</td>
					<%} %>
					
					
					<%if ("Pending_Book".equals(bean.getStutus_book())) { %>
				<td>รออนุมัติ</td>
				<%}else if("Pending_Booked".equals(bean.getStutus_book())){ %>
					<td>อนุมัติแล้ว</td>
				<%}else{ %>
					<td>ไม่อนุมัติ</td>
				<%} %>
				<td><%=bean.getPeople()%>คน</td>
				<td><%=bean.getFirstname()%> <br><%=bean.getLastname()%></td>
			
				<td><%=bean.getNameType()%></td>


				<td><a
					href="EditBookAdmin2.jsp?book_ID=<%=bean.getBookID()%>&&date_in=<%=bean.getDateCheckIn()%>&&number_room=<%=bean.getRoomID()%>&&date_out=<%=bean.getDateCheckOut()%>&&BookType=<%=bean.getBookType()%>&&Stutus_payBook=
<%=bean.getStutus_payBook()%>
&&Stutus_book=<%=bean.getStutus_book()%>&&people=<%=bean.getPeople()%>">แก้ไข</a>
				</td>






			</tr>

			<%
							}
						%>

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





</div>





</body>
</html>