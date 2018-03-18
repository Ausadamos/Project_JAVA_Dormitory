package Servlet;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.customerBean;
import Bean.roomBean;
import DAO.BookDAO;
/**
 * Servlet implementation class ServletBook
 */
@WebServlet("/ServletBook")
public class ServletBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String roomID = request.getParameter("id");
		
		
		
		BookDAO book = new BookDAO();
		
	    roomBean room ;
		
		room = book.getroom(Integer.parseInt(roomID));
		
		
		if(room.isValid()){
			
			HttpSession session = request.getSession(true);
			
			session.setAttribute("room", room);
			response.sendRedirect("ShowRoomSelect.jsp");
		
		

		}else{
			response.sendRedirect("indexmember.jsp");
		}

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
