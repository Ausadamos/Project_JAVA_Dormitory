package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.roomBean;
import Bean.roombook;
import DAO.BookDAO;
import DAO.RoomDAO;

/**
 * Servlet implementation class bookToDAOServlet
 */
@WebServlet("/bookToDAOServlet")
public class bookToDAOServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public bookToDAOServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
		// ----------------------------------------------------------
		String typeroom = request.getParameter("typeroom");
		String datein = request.getParameter("datein");
		String dateout = request.getParameter("dateout");
		String people = request.getParameter("people");
		String roomID = request.getParameter("roomID");
		String CustomerID = request.getParameter("CustomerID");

		// ----------------------------------------------------------
		
		System.out.println("###########################");
		System.out.println("¡“·≈È«typeroom" + typeroom);
		System.out.println("¡“·≈È«datein" + datein);
		System.out.println("¡“·≈È«dateout" + dateout);
		System.out.println("¡“·≈È«people" + people);
		System.out.println("¡“·≈È«roomID" + roomID);
		System.out.println("¡“·≈È«CustomerID" + CustomerID);

		// ------------------------------------------------------------

		BookDAO book = new BookDAO();

		book.addCustomerid(Integer.parseInt(CustomerID), datein, dateout, typeroom, Integer.parseInt(people));

		book.addbook(Integer.parseInt(roomID), Integer.parseInt(book.getLastBook()));

		
		// ------------------------------------------------------------------

		ArrayList<roombook> roomlist = null;

		
		RoomDAO room = new RoomDAO();

		roomlist = room.getroomBook(Integer.parseInt(CustomerID));
		
		
		//--------------------------------------------------------------------------------------

		
		RequestDispatcher dispatcher = request.getRequestDispatcher("showBook.jsp");
		if (dispatcher != null) {

			System.out.println("‰¡Ë«Ë“ßπ– ");
			request.setAttribute("room2",roomlist);
			dispatcher.forward(request, response);
			
		}else{
			System.out.println("¢ÈÕ¡Ÿ≈«Ë“ßπ– ");
		}

	}

}
