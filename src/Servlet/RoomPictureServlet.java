package Servlet;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.pictureroom;
import Bean.roomBean;
import DAO.RoomDAO;

/**
 * Servlet implementation class RoomPictureServlet
 */
@WebServlet("/RoomPictureServlet")
public class RoomPictureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomPictureServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		
		Blob pictureBlob = null;

		byte[] pictureByte = null;

		pictureroom pic = null;

		String room = request.getParameter("id");

		System.out.println("มาแล้วหน้า picSer=" + room);
		
		if (room != null) {

			try {

				// สร้าง Object จาก Class ProductDAO

				RoomDAO roomDAO = new RoomDAO();

				// ค้นหารูปภาพประเภทสินค้า

				pic  = roomDAO.roomPicture(Integer.parseInt(room));

				// เปลี่ยนประเภทตัวแปรสําหรับการ render รูปภาพ จาก Blob -->
				// Byte[]

				pictureBlob = pic.getPicture();

				pictureByte = pictureBlob.getBytes(1,
						(int) pictureBlob.length());

				// set picture format with jpg

				response.setContentType("image/jpg");

				OutputStream o = response.getOutputStream();

				o.write(pictureByte); // render picture

				o.flush(); // clear render picture

				o.close();

			} catch (Exception e) {

				e.printStackTrace();
				System.out.println(e);

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
