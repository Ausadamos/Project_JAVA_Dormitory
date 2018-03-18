package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.roomBean;
import DAO.BookDAO;
import DAO.RoomDAO;

/**
 * Servlet implementation class detailroomServlet
 */
@WebServlet("/detailroomServlet")
public class detailroomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public detailroomServlet() {
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
		

		RoomDAO room = new RoomDAO();
		
	    roomBean room2 ;
		
		room2 = room.getroom(Integer.parseInt(roomID));
		
		
		
		
		
		if(room2.isValid()){
			
			HttpSession session = request.getSession(true);
			
			session.setAttribute("room", room);
			response.sendRedirect("ShowRoomDtail.jsp");
		
		

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
