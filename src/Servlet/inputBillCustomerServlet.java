package Servlet;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import DAO.BillDAO;


/**
 * Servlet implementation class inputBillCustomerServlet
 */
@WebServlet("/inputBillCustomerServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class inputBillCustomerServlet extends HttpServlet {
	
	private String dbURL = "jdbc:mysql://localhost:3306/home2";
    private String dbUser = "root";
    private String dbPass = "";
    private String jdbcutf8 = "?useUnicode=true&characterEncoding=UTF-8";
    
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public inputBillCustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String  Customerid = request.getParameter("Customerid");
		String  date = request.getParameter("date");
		String  money = request.getParameter("money");
		//String picture = request.getParameter("picture");
		
	
		System.out.print("Customerid:" + Customerid);
		System.out.print("date:" + date);
		System.out.print("money:" +money);
	//System.out.print("picture:" +picture);
		
		
		//เพิ่มข้อมูลใบเสร็จของลูกค้า
BillDAO bill = new BillDAO();
		
		bill.addDtailBill(date,Integer.parseInt(Customerid) ,Integer.parseInt(money));
		
	
	//--------------เพิ่มรูป----------------------------------
		
		InputStream inputStream = null; // input stream of the upload file
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("picture");
        if (filePart != null) {           
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }else{
        	System.out.println("Error");
        }
        
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
        
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            
        	
        	
            conn = DriverManager.getConnection(dbURL+jdbcutf8, dbUser, dbPass);
 
            // constructs SQL statement
            String sql = " INSERT INTO `picturebill`(`customerID`, `picture`) VALUES (?,?)";
            			
            PreparedStatement statement = conn.prepareStatement(sql);
             
          
                statement.setInt(1,Integer.parseInt(Customerid));
                
                if (inputStream != null) {
                    // fetches input stream of the upload file for the blob column
                    statement.setBlob(2, inputStream);
                }
          
            // sends the statement to the database server
            int row = statement.executeUpdate();
          
            if (row > 0) {
                message = "File uploaded and saved into database";
            }else{
            	message = "File uploaded and Not_saved into database";
            }
            	
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/ShowLog.jsp").forward(request, response);
        }
		
		
	}

}
