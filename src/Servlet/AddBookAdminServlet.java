package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.roombook;
import DAO.BookDAO;
import DAO.RoomDAO;

/**
 * Servlet implementation class AddBookAdminServlet
 */
@WebServlet("/AddBookAdminServlet")
public class AddBookAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBookAdminServlet() {
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
		
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
		// ----------------------------------------------------------
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String Tel = request.getParameter("Tel");
		String date_in = request.getParameter("date_in");
		String date_out = request.getParameter("date_out");
		String TypeRoom = request.getParameter("TypeRoom");
		String people = request.getParameter("people");
		String numroom = request.getParameter("numroom");
		// ----------------------------------------------------------
		
		System.out.println("#######AddBookAdminServlet#########");
		
		System.out.println("¡“·≈È«fname" + fname);
		System.out.println("¡“·≈È«lname" + lname);
		System.out.println("¡“·≈È«Tel" + Tel);

		System.out.println("¡“·≈È«date_in" + date_in);
		System.out.println("¡“·≈È«date_out" + date_out);
		System.out.println("¡“·≈È«TypeRoom" + TypeRoom);
		System.out.println("¡“·≈È«people" +people);
		System.out.println("¡“·≈È«numroom" +numroom);
		
		// ------------------------------------------------------------

		BookDAO book = new BookDAO();
		
		book.addCustomerByAdmin(fname,lname,Integer.parseInt(Tel));
		
		

		book.addCustomerid(Integer.parseInt(book.getLastCustomer()),date_in,date_out,TypeRoom, Integer.parseInt(people));

		
		book.addbook(Integer.parseInt(numroom), Integer.parseInt(book.getLastBook()));

		
		// ------------------------------------------------------------------

		ArrayList<roombook> roomlist = null;

		
		BookDAO room = new BookDAO();

		roomlist = room.getroomBookLast();
		
		
		//--------------------------------------------------------------------------------------

		
		RequestDispatcher dispatcher = request.getRequestDispatcher("showbookLast.jsp");
		if (dispatcher != null) {

			System.out.println("‰¡Ë«Ë“ßπ– ");
			request.setAttribute("room2",roomlist);
			dispatcher.forward(request, response);
			
		}else{
			System.out.println("¢ÈÕ¡Ÿ≈«Ë“ßπ– ");
		}

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
