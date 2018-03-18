package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.adminBean;
import Bean.customerBean;
import Bean.roombook;
import DAO.AdminDAO;
import DAO.CustomersDAO;

/**
 * Servlet implementation class UpdateProfileMember
 */
@WebServlet("/UpdateProfileMember")
public class UpdateProfileMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProfileMember() {
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

		
		CustomersDAO cus = new CustomersDAO();
		
		
		customerBean customerBean;
		
		
		String Username = request.getParameter("Username");
		String Tel = request.getParameter("Tel");
		
		String Address = request.getParameter("Address");
		String Citizen_id = request.getParameter("Citizen_id");
		String CustomerID = request.getParameter("CustomerID");
		String Email = request.getParameter("Email");
		String Firstname = request.getParameter("Firstname");
		String Lastname = request.getParameter("Lastname");
		String Password = request.getParameter("Password");
		
		String pass2 = request.getParameter("pass2");
		String pass3 = request.getParameter("pass3");
	
		
		customerBean = cus.editProfile1(pass2,Integer.parseInt(CustomerID));
		
		
		
	
		if (customerBean.isValid()) {
			
			customerBean Updatebean = new customerBean();
			
			 Updatebean.setAddress(Address);
			 Updatebean.setUsername(Username);
			Updatebean.setTel(Tel);
			 Updatebean.setFirstname(Firstname);
			 Updatebean.setCitizen_id(Citizen_id);
			Updatebean.setCustomerID(Integer.parseInt(CustomerID));
			Updatebean.setEmail(Email);
				Updatebean.setLastname(Lastname);
				Updatebean.setPassword(pass3);	
				
	        CustomersDAO.editProfile2(Updatebean);
	       
	        if (Updatebean.isValid()) {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<!DOCTYPE HTML>");
			out.println("<html>");
			
			out.println(" <body>");

			out.println(
			" <script>alert('Sucess');window.location='index.jsp';</script>");
			out.println(" </body>");
			out.println("</html>");
		
	        
	        
	    	}else{
	    		response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<!DOCTYPE HTML>");
				out.println("<html>");
				out.println(" <body>");
				out.println(
				" <script>alert('NO Sucess');window.location='index.jsp';</script>");
				out.println(" </body>");
				out.println("</html>");
				}
		
	    		
	    	
	       
	        
	        
		}else{
			
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<!DOCTYPE HTML>");
			out.println("<html>");
			out.println(" <body>");
			out.println(
			" <script>alert('NO Sucess');window.location='index.jsp';</script>");
			out.println(" </body>");
			out.println("</html>");
			}
	

		
		
		
	}

}
