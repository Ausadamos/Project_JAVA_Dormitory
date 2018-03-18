<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="Bean.adminBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Bean.roombook"%>
<%@page import="Bean.roomBean"%>
<%@page import="Bean.adminBean"%>
<%@page import="Bean.customerBean"%>
<%@page import="DAO.RoomDAO"%>
<%@page import="DAO.CustomersDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>



<%
  
CustomersDAO CD = new CustomersDAO();
  	


ArrayList<customerBean> PB = new ArrayList<customerBean>();
%>





<%  PB=CD.customerShow();
                    for(int i=0;i<PB.size();i++){ %>

<%=PB.get(i).getCustomerID()%>
      <%=PB.get(i).getFirstname()%>
      <%=PB.get(i).getLastname()%>
      <%=PB.get(i).getTel()%>
      <%=PB.get(i).getEmail()%>
      <%=PB.get(i).getCitizen_id()%>

<%} %>






</body>
</html>