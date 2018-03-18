package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Bean.adminBean;
import db.ConnectionManager;

public class AdminDAO {

	
	static Connection Con = null;
	static ResultSet rs = null;
	
	public adminBean loginAdmin(String Username, String Password) {
		// preparing some objects for connection
		PreparedStatement pstmt = null;
		adminBean bean = new adminBean();

		String sql = "SELECT * FROM admin where username=? and password=?;";

		try {
			// connect to DB
			Con = ConnectionManager.getConnection();
			pstmt = Con.prepareStatement(sql);
			
			pstmt.setString(1, Username);
			pstmt.setString(2, Password);
			
			rs = pstmt.executeQuery();
			boolean test = rs.next();
			
			
		
			if (!test) {
				System.out.println("Sorry, you are not userAdmin");
				bean.setValid(false);
			}
			
			else if (test) {
				System.out.println("login Sucsesfull Admin");

				bean.setAdminID(rs.getInt("adminID")); //1
				bean.setUsername(rs.getString("username")); //1
				

				bean.setValid(true);

				pstmt.close();
				Con.close();
				rs.close();

			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return bean;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
