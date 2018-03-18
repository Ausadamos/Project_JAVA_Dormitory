<%@page import="Bean.customerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.util.ArrayList"%>
<%@page import="Bean.customerBean"%>
<%@page import="Bean.pictureBillBean"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Prompt:300" rel="stylesheet">
<style>
      body {
   font-family: 'Prompt', sans-serif;
        font-size: 16px;
   color: black;
background-color:#f5f5ef;
   
     
    
}

#myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Caption of Modal Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation */
.modal-content, #caption {    
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
}

/* The Close Button */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content {
        width: 80%;
    }
}

    </style>
    <script type="text/javascript">
    $(function () {
    	  $('[data-toggle="popover"]').popover()
    	})
    </script>
</head>
<body>


<div class="container">
 <%
 customerBean bean = (customerBean) request.getAttribute("cusBean");
	%>
<br><br>
	<div class="alert alert-info" role="alert" style="width: 50%">
  <strong>รายละเอียดสมาชิก</strong><br> <%=bean.getFirstname()%>  <%=bean.getLastname()%><br>
เบอร์โทรติดต่อ   <%=bean.getTel() %>

</div>

					
 <%         
                		ArrayList<pictureBillBean> pictureBill = (ArrayList<pictureBillBean>)request.getAttribute("pictureBill");													
                		
 if(pictureBill.size()>0){ %>
 	
	
	
<center><table class="table table-hover table-success" style="width: 80%" >
<thead>
					<th class="bg-success" >ลำดับ</th>
						<th class="bg-success">วันที่แจ้งการยืนยัน</th>
							<th class="bg-success">รูปการยืนยัน</th>
					</thead>
					<tbody>
 	<% pictureBillBean PictureBillBean = null;
                 	for(int i=0;i<pictureBill.size();i++){
                			PictureBillBean = (pictureBillBean)pictureBill.get(i);
                			
					%>
					<tr>
				<td>	<%=i+1 %> </td>
				<td>	<%=PictureBillBean.getDate() %></td>
					
<td>	


<img id="myImg<%=i%>" src="BillPictureServlet1?id=<%=PictureBillBean.getPictureBill_ID()%>&picid=<%=PictureBillBean.getCustomerID()%>" alt="Trolltunga, Norway" width="200" height="150">

<!-- The Modal -->
<div id="myModal" class="modal">
  <span class="close">×</span>
  <img class="modal-content" id="img01">
  <div id="caption"></div>
</div>

</td>

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById('myImg<%=i%>');
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
    modal.style.display = "block";
    modalImg.src = this.src;
    captionText.innerHTML = this.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
    modal.style.display = "none";
}
</script>


</tr>




<%} %>




</tbody>


</table>
</center>
<%}else{ %>

<div class="alert alert-info" role="alert" style="width: 50%">
  <strong>ไม่มีข้อมูล</strong>
</div>

<%}%>
</div>



</body>
</html>