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
 * Servlet implementation class UpdateBookAdmin
 */
@WebServlet("/UpdateBookAdmin")
public class UpdateBookAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateBookAdmin() {
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
		
		String book_ID = new String();
		String numroom = new String();
		String people = new String();
		String date_in = new String();
		String date_out = new String();
		
		String typeroom = new String();
		String Stutus_payBook = new String();
		String Stutus_book = new String();
		
		people = request.getParameter("people");
		
	     System.out.println("	people Admin" + 	people);
	     
		Stutus_payBook = request.getParameter("Stutus_payBook");
		Stutus_book = request.getParameter("Stutus_book");
		
		System.out.print("Stutus:"+Stutus_book);
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
		 
		 Updatebean.setBookType(typeroom);
		 
		 Updatebean.setBookID(Integer.parseInt(book_ID));
		Updatebean.setRoomID(Integer.parseInt(numroom));
		 Updatebean.setPeople(Integer.parseInt(people));
		 
			
			
			
				
			Updatebean.setStutus_book(Stutus_book);
				Updatebean.setStutus_payBook(Stutus_payBook);
		
		 // sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
		  
		 try {
            date = sdf.parse(date_in);
           
            java.sql.Date Date_IN = new Date(date.getTime());
           
            System.out.println("String converted to java.sql.Date :" + Date_IN);
            Updatebean.setDateCheckIn(Date_IN);
            
		 }catch (Exception e) {
			
		}
         //----------------------------------------------------------------------------   
           // java.util.Date date2;
		 
		 if(!(date_out.equals(""))){
			 System.out.println("เข้า dateout_Admin" );
			try {
				date = sdf.parse(date_out);
				 java.sql.Date Date_out = new Date(date.getTime());
	               
	            System.out.println("String converted to java.sql.Date :" + Date_out);
	                
	            Updatebean.setDateCheckOut(Date_out);
			} catch (ParseException e) {
				
				e.printStackTrace();
			}
		 }
           //-------------------------------------------------------------------
	
		
				
				
			
				
			System.out.println("################################################");
            
				
				BookDAO.UpdateBook(Updatebean);
				
				BookDAO.UpdateBook2(Updatebean); 
				
			
				
				
				if(Updatebean.isValid()){
					response.setContentType("text/html");
					PrintWriter out = response.getWriter();
					out.println("<!DOCTYPE HTML>");
					out.println("<html>");
					out.println("<body>");
					out.println(
					" <script>alert('Sucess');window.location='indexAdmin2.jsp';</script>");
					out.println(" </body>");
					out.println("</html>");
				} else {
					response.setContentType("text/html");
					PrintWriter out = response.getWriter();
					out.println("<!DOCTYPE HTML>");
					out.println("<html>");
					out.println(" <body>");
					out.println(
					" <script>alert('NO Sucess');window.location='indexAdmin2.jsp';</script>");
					out.println(" </body>");
					out.println("</html>");
					}
			
		
		
		
		
		
		
	}

}
