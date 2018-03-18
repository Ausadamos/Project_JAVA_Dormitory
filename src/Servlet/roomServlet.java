package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.RoomDAO;
import Bean.roombook;
/**
 * Servlet implementation class roomServlet
 */
@WebServlet("/roomServlet")
public class roomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public roomServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		// ------------------------------------------------------------
	
		String ContactName = (String)request.getParameter("ContactName");
		System.out.println("เข้าS_ContactName" + ContactName);
		
		String roomType = (String)request.getParameter("roomType");
		System.out.println("เข้าS_roomType " + roomType);
		
		String date1 = (String)request.getParameter("date1");
		System.out.println("เข้าS_date1 " + date1);
		
		String date2 = (String)request.getParameter("date2");
		System.out.println("เข้าS_date2" + date2);
		
		String book = request.getParameter("book");
		System.out.println("เข้าS_book " + book);
		
		String book2 = request.getParameter("book2");
		System.out.println("เข้าS_book2 " + book2);
	
		String pay = request.getParameter("pay");
		System.out.println("เข้าS_pay " + pay);
		
		String numroom = request.getParameter("numroom");
		System.out.println("เข้าS_numroom " + numroom);
		
			if(book2.equals("")){
				book2 = null;
			}
			if(ContactName.equals("")){
				ContactName = null;
			}
			if(roomType.equals("")){
				roomType = null;
			}
			if(book.equals("")){
				book = null;
			}
			if(pay.equals("")){
				pay = null;
			}
			if(date1.equals("")){
				date1 = null;
			}
			if(date2.equals("")){
				date2= null;
			}
			if(numroom.equals("")){
				numroom= null;
			}
			
			
			
		System.out.println("############################");
		
		try {

			RoomDAO dao = new RoomDAO();
			
			

			ArrayList<roombook> list = dao.selectAllest(book2,ContactName,roomType, date1, date2,book,pay,numroom);

			
			System.out.println("เสร็จDAOแล้ว");
			
			
			String page = "SearchBook.jsp";
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(page);
			
			if (dispatcher != null) {
				request.setAttribute("show", list);
				dispatcher.forward(request,response);
			}

		} catch (Throwable theException) {
			System.out.println(theException);
		}
		
		
	
}
}