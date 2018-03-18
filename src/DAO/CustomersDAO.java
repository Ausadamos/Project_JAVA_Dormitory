package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import db.ConnectionManager;
import Bean.*;

public class CustomersDAO {

	static Connection Con = null;
	static ResultSet rs = null;

	
	public customerBean loginCustomers(String Username, String Password) {
		// preparing some objects for connection
		PreparedStatement pstmt = null;
		customerBean bean = new customerBean();

		String sql = "SELECT * FROM customer where username=? and password=?;";

		try {
			// connect to DB
			Con = ConnectionManager.getConnection();
			pstmt = Con.prepareStatement(sql);
			
			pstmt.setString(1, Username);
			pstmt.setString(2, Password);
			
			rs = pstmt.executeQuery();
			boolean test = rs.next();
			
			
			// System.out.println(more);
			if (!test) {
				System.out.println("Sorry, you are not a registered user!Please sign up first");
				bean.setValid(false);
			}
			// if user exists set the isValid variable to true
			else if (test) {
				System.out.println("login Sucsesfull");

				bean.setCustomerID(rs.getInt("customerID")); //1
				bean.setFirstname(rs.getString("firstname"));//2
				bean.setLastname(rs.getString("lastname"));//3
				bean.setCitizen_id(rs.getString("citizen_id"));//4
				bean.setEmail(rs.getString("email"));//5
				bean.setTel(rs.getString("tel"));//6
				bean.setAddress(rs.getString("address"));//7
				
				bean.setUsername(rs.getString("username"));//8
				bean.setPassword(rs.getString("password"));//9
				bean.setDate(rs.getDate("date"));

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


	
	public customerBean editProfile1(String Password,int User) {
		// preparing some objects for connection
		PreparedStatement pstmt = null;
		customerBean bean = new customerBean();
		System.out.print("¡“·≈È«editProfile1"+Password+User);
		
		String sql = " SELECT password FROM customer where password= ? AND customerID = ? ";

		try {
			// connect to DB
			Con = ConnectionManager.getConnection();
			pstmt = Con.prepareStatement(sql);
			
		
			pstmt.setString(1,Password);
			pstmt.setInt(2,User);
			
			rs = pstmt.executeQuery();
			boolean test = rs.next();
			
			
			// System.out.println(more);
			if (!test) {
				System.out.println("Sorry Password incorrect");
				bean.setValid(false);
			}
			// if user exists set the isValid variable to true
			else if (test) {
				System.out.println("password true");

				

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
	
	
	
	public static customerBean  editProfile2(customerBean updatebean) {

		int addResult = 0;
		PreparedStatement ps = null;
		System.out.print("¡“·≈È«editProfile2");
		// §” —Ëßsql
		String UpdateSQL = " UPDATE `customer` SET `citizen_id`=?,`username`= ?,`password`=?,`firstname`=?,"
				+ " `lastname`=?,`address`=?,`tel`=?,`email`=? WHERE customer.customerID = ?";

		//System.out.print("¡“·≈È«update1:" + updatebean.getRoomID());
		//System.out.print("¡“·≈È«update1:" + updatebean.getBookID());

		try {
			Con = ConnectionManager.getConnection();

			ps = Con.prepareStatement(UpdateSQL);


ps.setString(1,updatebean.getCitizen_id());
ps.setString(2,updatebean.getUsername());
ps.setString(3,updatebean.getPassword());
ps.setString(4,updatebean.getFirstname());
ps.setString(5,updatebean.getLastname());
ps.setString(6,updatebean.getAddress());
ps.setString(7,updatebean.getTel());
			
		
			ps.setString(8,updatebean.getEmail());
		
	
		
			
			ps.setInt(9,updatebean.getCustomerID());
			
			
			addResult = ps.executeUpdate();

			if (addResult == 1) {
				updatebean.setValid(true);
				System.out.println("validTrue");

			} else {
				updatebean.setValid(false);

			}

			ps.close();
			Con.close();

		} catch (SQLException ex) {
			System.out.println(ex.getMessage());

		}

		return updatebean;
	}
	
	public int registerCustomers(customerBean bean) {
		PreparedStatement pstmt = null;
		int t = 0;

		
		String sql = " INSERT INTO `customer`(`firstname`,`lastname`,`citizen_id`,`email`,  `address` ,`tel`, `password`,`username`)"
		+" VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			// connect to DB
			Con = ConnectionManager.getConnection();
			pstmt = Con.prepareStatement(sql);

			
			pstmt.setString(1, bean.getFirstname());
			pstmt.setString(2, bean.getLastname());
			pstmt.setString(3, bean.getCitizen_id());
			pstmt.setString(4, bean.getEmail());
			pstmt.setString(5, bean.getAddress());
			pstmt.setString(6, bean.getTel());
			pstmt.setString(7, bean.getPassword());
			pstmt.setString(8, bean.getUsername());
			

			t = pstmt.executeUpdate();
System.out.println(t);

			pstmt.close();
			Con.close();

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return t;

	}

	
	public ArrayList<customerBean> customerShow() {
		PreparedStatement pstmt = null;

		ArrayList<customerBean> Ab = new ArrayList<customerBean>();
		String sql = " SELECT customerID,firstname,lastname,citizen_id,tel,email FROM `customer` ";
		try {
			Con = ConnectionManager.getConnection();
			pstmt = Con.prepareStatement(sql);
			
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				
				customerBean room = new customerBean();
				room.setCustomerID(rs.getInt("customerID"));
				room.setFirstname(rs.getString("firstname"));
				room.setLastname(rs.getString("lastname"));
				room.setCitizen_id(rs.getString("citizen_id"));
				room.setTel(rs.getString("tel"));
				room.setEmail(rs.getString("email"));


				Ab.add(room);

			}
			pstmt.close();
			Con.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return Ab;
	}
	
	
	
	
	
	
	

}