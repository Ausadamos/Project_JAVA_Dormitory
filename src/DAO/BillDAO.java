package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Bean.BillBean;
import Bean.customerBean;
import Bean.pictureBillBean;
import db.ConnectionManager;



public class BillDAO {

	

	static Connection Con = null;
	static ResultSet rs = null;
	
	
public customerBean getDetailBill(int customerID) {
		
	customerBean Bean = null; 
		
		String sql = " SELECT `tel`,`firstname`,`lastname` FROM `customer` WHERE customerID = ?";
		
		
		
		try {
			
			Con = ConnectionManager.getConnection();
			
			PreparedStatement ps = Con.prepareStatement(sql);

			ps.setInt(1,customerID);
		
			
			
			
			rs = ps.executeQuery();
			
			
			
			if (rs.next()) {
				Bean = new customerBean();
				
				
				Bean.setFirstname(rs.getString("firstname"));
				Bean.setLastname(rs.getString("lastname"));
		
				Bean.setTel(rs.getString("tel"));
				
				
				
				
				
				
			}
			
			
			ps.close();
			rs.close();
			Con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		
		return Bean;
	}
	
	
	
	
	
	
public ArrayList<pictureBillBean> getBillListPicture(int customerID) {

	ArrayList<pictureBillBean> PictureList = new ArrayList<pictureBillBean>();
	
	pictureBillBean  bean=null;		

	String sql = " SELECT * FROM picturebill WHERE customerID=?";
	try {

		Con = ConnectionManager.getConnection();

		PreparedStatement ps = Con.prepareStatement(sql);
		
		ps.setInt(1,customerID);

		rs = ps.executeQuery();

		while(rs.next()) {
			bean = new 	pictureBillBean();
			
			bean.setCustomerID(rs.getInt("customerID"));
			bean.setPictureBill_ID(rs.getInt("pictureBill_ID"));
			bean.setPicture(rs.getBlob("picture"));
			bean.setDate(rs.getDate("date"));
			PictureList.add(bean);
		}

		ps.close();
		rs.close();
		Con.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return PictureList;

}
	

public pictureBillBean getPicture(int customerID,int pictureID) {

	System.out.print("¡“·≈È«BillDAO.getPicture" + customerID+pictureID);

	pictureBillBean bean = null;

	
String sql = "SELECT * FROM picturebill WHERE picturebill.customerID=? AND picturebill.pictureBill_ID=?";
	try {
		
		Con = ConnectionManager.getConnection();


		PreparedStatement ps = Con.prepareStatement(sql);
		
		
		ps.setInt(1, customerID);
		ps.setInt(2, pictureID);
	
		


		rs = ps.executeQuery();

	
		if (rs.next()) {
		
			bean = new pictureBillBean();
	
			bean.setCustomerID(rs.getInt("customerID"));
			bean.setPictureBill_ID(rs.getInt("pictureBill_ID"));
			bean.setPicture(rs.getBlob("picture"));
		}

		ps.close();
		rs.close();
		Con.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return bean;
}
	

	
public int addDtailBill(String date, int Customerid, int money) {

	int addResult = 0;

	String sql = " INSERT INTO `bill`( `date`, `money`, `customerID`) VALUES (?,?,?)";

	try {
		Con = ConnectionManager.getConnection();

		PreparedStatement ps = Con.prepareStatement(sql);

		ps.setString(1,date);
		ps.setInt(2,money);
		ps.setInt(3,Customerid);

		addResult = ps.executeUpdate();

		ps.close();
		Con.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}

	return addResult;
}




	
}
