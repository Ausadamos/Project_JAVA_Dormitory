package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.roomBean;
import DAO.RoomDAO;

/**
 * Servlet implementation class showRoomServletCustomer
 */
@WebServlet("/showRoomServletCustomer")
public class showRoomServletCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showRoomServletCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String roomID = request.getParameter("idtyperoom");
		System.out.print("ÀπÈ“ShowRoom: 1-2-3"+roomID);
		
		
		

			
			 ArrayList<roomBean> roomlist = null;
		
		RoomDAO book = new RoomDAO();
		

	   roomlist = book.getroomType(Integer.parseInt(roomID));
		
		
		
	                  
	 	
	 		
	 		
	 		
	 		RequestDispatcher dispatcher = request.getRequestDispatcher("ShowRoomTypeSelectCustomers.jsp");
			if(dispatcher != null){
				request.setAttribute("roomlist", roomlist);

				dispatcher.forward(request, response);
			}
	 		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
