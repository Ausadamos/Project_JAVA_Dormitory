<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="Bean.customerBean"%>
<%@ page import="Bean.roombook"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<% 
customerBean cus = null;

		
		
		try {
			cus = (customerBean)session.getAttribute("customerBean");
		} catch (Exception e) {
			cus = null;
		}
		%>

	Firstname :
	<%=cus.getFirstname() %><br>Lastname:<%=cus.getLastname() %>
	<br>


	<a href="ShowLog.jsp">กลับหน้าหลัก</a>

	<form action="DeleteBookMember" method="POST" id="form1" name="form1">
		<center>
			<table cellspacing="0" table border="1"
				style="background-color: pink" width="80%">

				<%
							ArrayList<roombook> List = (ArrayList) request.getAttribute("show");

							roombook bean;

							for (int i = 0; i < List.size(); i++) {
								bean = (roombook) List.get(i);
						%>
				<tr>

					<td><input type="CHECKBOX" name="id_del"
						value="<%=bean.getBookID()%>" id="chk[]"></td>


					<td><%=bean.getBookID()%></td>
					<td><%=bean.getRoomID()%></td>

					<td><%=bean.getNumberRoom()%></td>
					<td><%=bean.getBookDate()%></td>
					<td><%=bean.getDateCheckIn()%></td>
					<td><%=bean.getDateCheckOut()%></td>
					<td><%=bean.getBookType()%></td>

					<td><%=bean.getStutus_payBook()%></td>
					<td><%=bean.getStutus_book()%></td>
					<td><%=bean.getFirstname()%></td>
					<td><%=bean.getLastname()%></td>
					<td><%=bean.getNameType()%></td>


					<td><a
						href="EditBookAdmin.jsp?Stutus_payBook=<%=bean.getStutus_payBook()%>&&number_room=<%=bean.getRoomID()%>&&date_out=<%=bean.getDateCheckOut()%>&&BookType=<%=bean.getBookType()%>
&&Stutus_book=<%=bean.getStutus_book()%>">แก้ไข</a>
					</td>






				</tr>

				<%
							}
						%>








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










</body>
</html>