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

/**
 * Servlet implementation class BillCustomerServlet2
 */
@WebServlet("/BillCustomerServlet2")
public class BillCustomerServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BillCustomerServlet2() {
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
		
		
		String CustomerID = request.getParameter("CustomerID");
		System.out.print("ÀπÈ“BillCustomerServlet:" + CustomerID);
        ArrayList<roombook> roomlist = null;

		
		BookDAO room = new BookDAO();

		roomlist = room.getBillBook2(Integer.parseInt(CustomerID));
		
		
		//--------------------------------------------------------------------------------------

		
		RequestDispatcher dispatcher = request.getRequestDispatcher("showBill_M.jsp");
		if (dispatcher != null) {

			System.out.println("‰¡Ë«Ë“ßπ– ");
			
			request.setAttribute("room2",roomlist);
			dispatcher.forward(request, response);
			
		}else{
			System.out.println("¢ÈÕ¡Ÿ≈«Ë“ßπ– ");
		}

		
		
		
		
		
	}

}
