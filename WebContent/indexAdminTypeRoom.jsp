<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<%@page import="Bean.adminBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Bean.roombook"%>
<%@page import="Bean.roomBean"%>
<%@page import="Bean.roomTypeBean"%>
<%@page import="Bean.adminBean"%>
<%@page import="DAO.RoomDAO"%>
<title>Insert title here</title>
</head>
<body>
	<form>
	<table border="1" bordercolor="green">
	
		

			<tr>

		
				<th>ลำดับ</th>
				<th>ประเภท</th>
				<th>รายละเอียด</th>
				<th>รูปภาพ</th>
	
	
				

	<% 
  	
RoomDAO SH2 = new RoomDAO();
  	

ArrayList<roomTypeBean> RB2 = new ArrayList<roomTypeBean>();

  	%>


			</tr>
			<%
                     RB2=SH2.getRoomTypeAdmin();
                    for(int i=0;i<RB2.size();i++){ %>
			<tr>

					<td><%=RB2.get(i).getTypeRoomID()%><!-- 2 --></td>

				<td><%=RB2.get(i).getNameType()%><!-- 2 --></td>

				<td><%=RB2.get(i).getDescription() %><!-- 2 --></td>
				
			
				
			
		
<td><a href="EditRoomAdmin.jsp?NumberRoom=<%=RB2.get(i).getNameType()%>">แก้ไข

				</a></td>
               

			</tr>
			<%} %>


			

		</table>
		</center>
	</form>


</body>
</html>