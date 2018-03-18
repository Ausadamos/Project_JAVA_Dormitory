<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ page import="Bean.roomBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="Bean.customerBean"%>
<%@ page import="Bean.roombook"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
table, td, th {
    border: 1px solid black;
    
}

table {
    border-collapse: collapse;
    width: 100%;
    
   
}
th.th1{
	width:2%;
	background-color: black;
	font-color:white;
	
}th.th2{
	width:20%;
	background-color: black;
	
}th.th3{
	width:7%;
	background-color: black;
}th.th4{
	width:7%;
	background-color: black;
}th.th5{
	width:7%;
	background-color: black;
}td.td1{
height: 100px;
vertical-align: bottom;
background-color:white;
}td.td2{
height: 100px;
    vertical-align: bottom;
background-color:white;
}td.td3{
height: 100px;
vertical-align: bottom;
background-color:white;
height: 100px;
    vertical-align: bottom;
}td.td4{
background-color:white;
height: 100px;
    vertical-align: bottom;
}td.td5{
background-color:white;
height: 100px;
    vertical-align: bottom;
    
}td.td6{
background-color:white;
height: 20px;
    vertical-align: bottom;
}td.td7{
background-color:white;
height: 20px;
    vertical-align: bottom;
}td.td8{
background-color:white;
height: 20px;
    vertical-align: bottom;
}td.td9{
background-color:black;
height: 20px;
    vertical-align: bottom;
}td.td10{
background-color:white;
height: 20px;
    vertical-align: bottom;
    
    
}font{
	margin-left: 25%;

}div.div1{
	border-radius: 5px;
    background-color: #999999;
    padding: 20px;
    width: 60%;
    height: 50%px;
    margin-left: 25%;
    
}div.div2{
	border-radius: 5px;
    background-color:blues;
    padding: 20px;

}font.font1{
margin-right: 30%;

}font.font2{
margin-right: 1%;

}font.font3{

margin-right: 30%;


}font.font4{
margin-right:1%;

}font.f1{

}font.f2{

}font.f3{

}font.f4{

}font.f5{
margin-left: 1%;

}font.fend{
margin-right:1%;

}.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #708090;
  border: none;
  color:#FAF0E6;
  text-align: center;
  font-size: 16px;
  padding: 20px;
  width: 100px;
  height:50px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '»';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
  
}img.img1{
margin-right: 8%;
}

</style>
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



	
<div class="div1">
<center>
<img class="img1" src="img/logo-meghna.png" width=150px height=70px ><br>
<font class="font1" color="#ffffff" size="7" face="LilyUPC">นครแม่โจ้</font><br>

<div class="div2">

<font class="font3" color="#ffffff" size="5" face="LilyUPC" >รหัสลูกค้า<%=cus.getCustomerID()%></font><br>
<font class="font3" color="#ffffff" size="5" face="TH SarabunPSK">ชื่อ-นามสกุล<%=cus.getFirstname()%> <%=cus.getLastname()%></font><br>
<font class="font3" color="#ffffff" size="5" face="TH SarabunPSK">เบอร์โทร<%=cus.getTel()%></font><br>





<center><table>

<tr>
<th class="th1"><font class="f1" color="#FFFFFF" size="4" face="TH SarabunPSK"><center>ลำดับ</center></font></th>
<th class="th2"><font class="f2" color="#FFFFFF" size="4" face="TH SarabunPSK"><center>รายการ</center></font></th>
<th class="th3"><font class="f3" color="#FFFFFF" size="4" face="TH SarabunPSK"><center>ประเภทห้อง</center></font></th>
<th class="th4"><font class="f4" color="#FFFFFF" size="4" face="TH SarabunPSK"><center>จำนวนเงิน</center></font></th>
</tr>
<%
	ArrayList<roombook> List = (ArrayList) request.getAttribute("room2");

	roombook room;
	int total=0; 

	for (int i = 0; i < List.size(); i++) {

		room = (roombook) List.get(i);
		
		total = total+room.getMouthCost();
%>

					
<tr>
<td class="td1">  <%=i+1 %>	 </td>
<td class="td2">  <%=room.getNumberRoom()%>         </td>
<td class="td3">      <%=room.getNameType() %>           </td>
<td class="td4">           <%=room.getMouthCost()%>     </td>

</tr>
<%} %>
<tr class="trtr">
<td class="td6">              </td>
<td class="td7">              </td>
<td class="td8">              </td>



<td class="td9"><font class="f5" color="#FFFFFF" size="5" face="TH Sarabun New">รวม <%=total %></font></td>


</tr>

</table></center><br>



<center><button class="button" onclick="myFunction()">พิมพ์</button></center>
<script>
function myFunction() {
    window.print();
}
</script></div>




</body>
</html>

