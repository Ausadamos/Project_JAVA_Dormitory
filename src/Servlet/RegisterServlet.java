package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.customerBean;
import DAO.CustomersDAO;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		
		customerBean customerB = new customerBean();
		CustomersDAO cd = new CustomersDAO();
		
		int i = 0;
		String page = "";
		String password = request.getParameter("password");
		String username= request.getParameter("username");
		String citizen_id = request.getParameter("citizen_id");
		String firstname = request.getParameter("firstname");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String lastname = request.getParameter("lastname");
	

	
		// System.out.println(name+surname+sex+number+tel+email+address+Username+Password);

		customerB.setFirstname(firstname);
		customerB.setLastname(lastname);
		customerB.setCitizen_id(citizen_id);
		customerB.setAddress(address);
		customerB.setEmail(email);
		customerB.setTel(tel);
		customerB.setPassword(password);
		customerB.setUsername(username);

		i = cd.registerCustomers(customerB);
		
		if (i != 0) {
			System.out.println("register succesfull");
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<!DOCTYPE HTML>");
			out.println("<html>");
			out.println("<body>");
			out.println(
			" <script>alert('success');window.location='index.jsp';</script>");
			out.println(" </body>");
			out.println("</html>");
			
		} else {
			System.out.println("register fale");
			
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


