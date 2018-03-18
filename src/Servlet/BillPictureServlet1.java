package Servlet;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.pictureBillBean;
import DAO.BillDAO;

/**
 * Servlet implementation class BillPictureServlet1
 */
@WebServlet("/BillPictureServlet1")
public class BillPictureServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BillPictureServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Blob pictureBlob = null;
		byte[] pictureByte = null;
		
		pictureBillBean picturebean = null;
		String BillID = request.getParameter("id");
		String CustomerID = request.getParameter("picid");
		
		if (BillID != null) {
			try {
				
				BillDAO pictureDAO = new BillDAO();
				
				picturebean  = pictureDAO.getPicture(Integer.parseInt(CustomerID),Integer.parseInt(BillID));
				
				pictureBlob = picturebean.getPicture();
				pictureByte = pictureBlob.getBytes(1,
						(int) pictureBlob.length());
				
				response.setContentType("image/jpg");
				OutputStream o = response.getOutputStream();
				o.write(pictureByte); 
				o.flush(); 
				o.close();
				
				
			}catch (Exception e) {
				e.printStackTrace();
			}
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
