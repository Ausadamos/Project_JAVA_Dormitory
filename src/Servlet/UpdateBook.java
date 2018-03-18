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

/**
 * Servlet implementation class UpdateBook
 */
@WebServlet("/UpdateBook")
public class UpdateBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateBook() {
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
		
		
		
		
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		//----------------------------------------------------------------------------
		
		
		String book_ID = new String();
		String numroom = new String();
		String date_in = new String();
		String date_out = new String();
		String typeroom = new String();
		
		String People = request.getParameter("People");
		System.out.println("People"+People);
		
		
		if(!(request.getParameter("book_ID").isEmpty())){
			book_ID = request.getParameter("book_ID");
		System.out.println("book_ID"+book_ID);
		}
		
		if(!(request.getParameter("numroom").isEmpty())){
		numroom = request.getParameter("numroom");
		System.out.println("numroom"+ numroom);
		}
		
		
		if(!(request.getParameter("date_in").isEmpty())){
		
			date_in = request.getParameter("date_in");
			System.out.println("date_in"+date_in);
		}
		
		if(!(request.getParameter("date_out").isEmpty())){
			date_out = request.getParameter("date_out");
		System.out.println("date_out"+date_out);
		}
		
		if(!(request.getParameter("typeroom").isEmpty())){
			typeroom = request.getParameter("typeroom");
		System.out.println("typeroom"+typeroom);
		}
		

		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		 java.util.Date date;
		
		
		
		
	//-------------------------------------------------------------------------------	
		
		 roombook Updatebean = new roombook();
		 Updatebean.setBookType(typeroom);//1
		 Updatebean.setBookID(Integer.parseInt(book_ID));//2
		Updatebean.setRoomID(Integer.parseInt(numroom));//3
	
		Updatebean.setPeople(Integer.parseInt(People));//4
		
		 // sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
		  
		 if(!(date_in.equals("")) ){
		 try {
            date = sdf.parse(date_in);
           
            java.sql.Date Date_IN = new Date(date.getTime());
           
            System.out.println("String converted to java.sql.DateIn :" + Date_IN);
            Updatebean.setDateCheckIn(Date_IN);
            
		 }catch (Exception e) {
			
		}
		 }
         //----------------------------------------------------------------------------   
           // java.util.Date date2;
		 
		 if(!(date_out.equals(""))){
			try {
				date = sdf.parse(date_out);
				 java.sql.Date Date_out = new Date(date.getTime());
	               
	            System.out.println("String converted to java.sql.DateOut :" + Date_out);
	                
	            Updatebean.setDateCheckOut(Date_out);
			} catch (ParseException e) {
				
				e.printStackTrace();
			}
               
           //-------------------------------------------------------------------
	
		 }
			
				
			System.out.println("################################################");
            
				
				BookDAO.UpdateBook(Updatebean);
				
				BookDAO.UpdateBook3(Updatebean); 
				
			
				
				
				if(Updatebean.isValid()){
					response.setContentType("text/html");
					PrintWriter out = response.getWriter();
					out.println("<!DOCTYPE HTML>");
					out.println("<html>");
					out.println("<body>");
					out.println(
					" <script>alert('สำเร็จ');window.location='ShowLog.jsp';</script>");
					out.println(" </body>");
					out.println("</html>");
				} else {
					response.setContentType("text/html");
					PrintWriter out = response.getWriter();
					out.println("<!DOCTYPE HTML>");
					out.println("<html>");
					out.println(" <body>");
					out.println(
					" <script>alert('ไม่สำเร็จ');window.location='update.jsp';</script>");
					out.println(" </body>");
					out.println("</html>");
					}
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
