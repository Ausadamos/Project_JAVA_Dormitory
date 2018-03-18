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
import DAO.RoomDAO;

/**
 * Servlet implementation class RoomMapPicture
 */
@WebServlet("/RoomMapPicture")
public class RoomMapPicture extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomMapPicture() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		Blob pictureBlob = null;

		byte[] pictureByte = null;

		pictureroom pic2 = null;

		String room = request.getParameter("id");

		System.out.println("������˹�� picMap=" + room);
		
		if (room != null) {

			try {

				// ���ҧ Object �ҡ Class ProductDAO

				RoomDAO roomDAO = new RoomDAO();

				// �����ٻ�Ҿ�������Թ���

				pic2  = roomDAO.roomPictureMap(Integer.parseInt(room));

				// ����¹����������������Ѻ��� render �ٻ�Ҿ �ҡ Blob -->
				// Byte[]

				pictureBlob = pic2.getPictureMap();

				pictureByte = pictureBlob.getBytes(1,(int) pictureBlob.length());

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
