package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.BillBean;
import Bean.customerBean;
import Bean.pictureBillBean;
import DAO.BillDAO;
import Bean.BillBean;
/**
 * Servlet implementation class PictureServlet
 */
@WebServlet("/PictureServlet")
public class PictureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PictureServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String 	customerID = request.getParameter("customerID");
		
		System.out.print("ÀπÈ“Picture :" + 	customerID);
		
		
		
		BillDAO dao1 = new BillDAO();
		
		customerBean cusBean = dao1.getDetailBill(Integer.parseInt(customerID));
		
		
		request.setAttribute("cusBean",cusBean );
		
		
		
		
		
		//--------------------------------------------------------------
		
	
		
		ArrayList<pictureBillBean> Bean = dao1.getBillListPicture(Integer.parseInt(customerID));
		
		request.setAttribute("pictureBill",Bean);
				
		
		
		
		RequestDispatcher dispatcher = getServletContext()
				.getRequestDispatcher("/ViewPictureBill2.jsp");

		if (dispatcher != null) {

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
