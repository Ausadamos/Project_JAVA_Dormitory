<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="Bean.roomBean"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>





	<table id="example1" class="table table-bordered table-striped">
		<thead>
			<tr>


				<th>หมายเลขห้อง</th>
				<th>ชั้น</th>
				<th>ราคาต่อเดือน</th>
				<th>ราคาต่อวัน</th>
				<th>ประเภทห้อง</th>
				<th>ค่ามัดจำ</th>
				<th>สถานะห้อง</th>


			</tr>
		</thead>
		<tbody>
			<%
						ArrayList<roomBean> List = (ArrayList) request.getAttribute("room2");
						roomBean bean;
						for (int i = 0; i < List.size(); i++) {
							bean = (roomBean) List.get(i);
					%>
			<tr>
				<td><%=bean.getNumberRoom()%></td>
				<td><%=bean.getFloor()%></td>
				<td><%=bean.getMouthCost()%></td>
				<td><%=bean.getDayCost()%></td>
				<td><%=bean.getRoomtype()%></td>
				<td><%=bean.getInsureCost()%></td>
				<td><%=bean.getStatusRoom()%></td>
				<td><form method="get" action="">
						<button>จอง</button>
					</form></td>


			</tr>

			<%
						}
					%>
		
	</table>

	</div>









</body>
</html>