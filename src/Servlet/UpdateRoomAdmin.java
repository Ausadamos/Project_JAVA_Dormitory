package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.roombook;
import DAO.BookDAO;
import DAO.RoomDAO;

/**
 * Servlet implementation class UpdateRoomAdmin
 */
@WebServlet("/UpdateRoomAdmin")
public class UpdateRoomAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateRoomAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String room_ID = new String();
		
		String DayCost = new String();
		
		String MouthCost = new String();
		String InsureCost = new String();
	
		
		String StatusRoom = new String();
		String NameType = new String();
		
		
		
		DayCost = request.getParameter("DayCost");
		StatusRoom = request.getParameter("StatusRoom");
		NameType = request.getParameter("NameType");
		InsureCost = request.getParameter("InsureCost");
		MouthCost = request.getParameter("MouthCost");
		
		if(!(request.getParameter("room_ID").isEmpty())){
			room_ID = request.getParameter("room_ID");
		System.out.println("room_ID"+room_ID);
		}
		
	
		
		

		

		
		
		
		
	//-------------------------------------------------------------------------------	
		
		 roombook Updatebean = new roombook();
		 
		 Updatebean.setRoomID(Integer.parseInt(room_ID));
		
	    Updatebean.setDayCost(Integer.parseInt(DayCost));
	    Updatebean.setMouthCost(Integer.parseInt(MouthCost));
			
				
			Updatebean.setStatusRoom(StatusRoom);
				Updatebean.setInsureCost(Integer.parseInt(InsureCost));
		
				Updatebean.setTypeRoomID(Integer.parseInt(NameType));
			
				
				
		
		  
		 	
			
				
			System.out.println("################################################");
            
				
				RoomDAO.UpdateRoom(Updatebean);
				
			
				
			
				
				
				if(Updatebean.isValid()){
					response.setContentType("text/html");
					PrintWriter out = response.getWriter();
					out.println("<!DOCTYPE HTML>");
					out.println("<html>");
					out.println("<body>");
					out.println(
					" <script>alert('Sucess');window.location='showRoomAdmin2.jsp';</script>");
					out.println(" </body>");
					out.println("</html>");
				} else {
					response.setContentType("text/html");
					PrintWriter out = response.getWriter();
					out.println("<!DOCTYPE HTML>");
					out.println("<html>");
					out.println(" <body>");
					out.println(
					" <script>alert('NO Sucess');window.location='showRoomAdmin2.jsp';</script>");
					out.println(" </body>");
					out.println("</html>");
					}
			
		
		
		
		
		
		
		
		
		
		
		
	}

}
