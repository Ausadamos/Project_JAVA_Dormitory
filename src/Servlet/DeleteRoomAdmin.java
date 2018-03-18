package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BookDAO;
import DAO.RoomDAO;

/**
 * Servlet implementation class DeleteRoomAdmin
 */
@WebServlet("/DeleteRoomAdmin")
public class DeleteRoomAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteRoomAdmin() {
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

		
		
		
		
	//	ProductBean productBean;
		int i =0;
		
		String id2[] = request.getParameterValues("id_del");
		
		while(i<id2.length){
		System.out.println(i + "=" + id2[i]);
	    i++;
			}

		RoomDAO book = new RoomDAO();
		
		
		
		//String page="ProductListDelete.jsp";
		
		

		int[] numbers = new int[id2.length];
		for(int j = 0;j < id2.length;j++)
		{
		   
		   numbers[j] = Integer.parseInt(id2[j]);
		}
		
		
		   int h=0;
		   
		while(h<numbers.length){
			System.out.println(h + "==" + numbers[h]);
		        h++;
				}
		
		int num = book.deleteRoom(numbers);
		    
		System.out.print("delete:" +num);
	
		
		if(num == 1){
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<!DOCTYPE HTML>");
			out.println("<html>");
			out.println(" <body>");
			out.println(
			" <script>alert('สำเร็จ');window.location='indexAdmin.jsp';</script>");
			out.println(" </body>");
			out.println("</html>");
			} else {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<!DOCTYPE HTML>");
			out.println("<html>");
			out.println(" <body>");
			out.println(
			" <script>alert('ไม่สำเร็จ ');window.location='indexAdmin.jsp';</script>");
			out.println(" </body>");
			out.println("</html>");
	
		
		
		
			}
	}

}
