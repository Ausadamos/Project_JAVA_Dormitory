package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Types;
import java.sql.Date;

import Bean.pictureroom;
import Bean.roomBean;
import Bean.roomTypeBean;
import Bean.roombook;

import db.ConnectionManager;
public class RoomDAO {
	static Connection Con = null;
	static ResultSet rs = null;

	
	
	public ArrayList<roomBean> getRoom() {
		PreparedStatement pstmt = null;

		ArrayList<roomBean> Ab = new ArrayList<roomBean>();
		String sql = "SELECT * FROM room;";
		try {
			Con = ConnectionManager.getConnection();
			pstmt = Con.prepareStatement(sql);
			
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				roomBean room = new roomBean();
				room.setRoomID(rs.getInt("roomID"));
				room.setRoomtype(rs.getString("roomtype"));
				room.setNumberRoom(rs.getString("numberRoom"));
				room.setDayCost(rs.getInt("dayCost"));
				room.setMouthCost(rs.getInt("mouthCost"));
				room.setFloor(rs.getInt("floor"));
				room.setStatusRoom(rs.getString("statusRoom"));

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

	
	
	
public roomBean getroom(int id){
		
		
		System.out.print("RoomDAO¡“·≈È« = " + id);
		PreparedStatement ps = null;
		
		
		String sql ="SELECT `roomID`, `floor`, `mouthCost`, `dayCost`, "
				+ "`insureCost`, `numberRoom` FROM `room` WHERE `roomID` = ?";
		
	    roomBean bean = new roomBean();
	    
		try{
			Con = ConnectionManager.getConnection();
			ps = Con.prepareStatement(sql);
			ps.setInt(1,id);
			
			
			rs = ps.executeQuery();
			if(rs.next()){
	
		bean.setNumberRoom(rs.getString("numberRoom"));
		bean.setFloor(rs.getInt("floor"));
		bean.setInsureCost(rs.getInt("insureCost"));
		bean.setMouthCost(rs.getInt("mouthCost"));
		bean.setDayCost(rs.getInt("dayCost"));
		bean.setRoomID(rs.getInt("roomID"));
		
			}
				
			
			
			bean.setValid(true);
			
			ps.close();
			Con.close();
			rs.close();
			
		}catch (SQLException e) {
		bean.setValid(false);
		}
		
		
		
		
		
		
		
		return bean;
		
		
	
		
	}
	
	
	
	
	

	
	
public pictureroom roomPicture(int roomID) {

	pictureroom  bean = null;

	System.out.println(roomID);
	
	String sql = "SELECT Picture FROM pictureroom WHERE roomID = ?";
	try {

		Con = ConnectionManager.getConnection();

		PreparedStatement ps = Con.prepareStatement(sql);
		ps.setInt(1, roomID);

		rs = ps.executeQuery();

		if (rs.next()) {
			bean = new pictureroom ();
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
	

	
public pictureroom roomPictureMap(int roomID) {
	System.out.println("Map" + roomID);
	pictureroom  bean = null;

	System.out.println(roomID);
	
	String sql = " SELECT PictureMap FROM room WHERE numberRoom = ?";
	try {

		Con = ConnectionManager.getConnection();

		PreparedStatement ps = Con.prepareStatement(sql);
		ps.setInt(1,roomID);

		rs = ps.executeQuery();

		if (rs.next()) {
			bean = new pictureroom ();
			bean.setPictureMap(rs.getBlob("pictureMap"));
			
		}

		ps.close();
		rs.close();
		Con.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return bean;

}
	


	
	
public ArrayList<roomTypeBean> RoomType() {
	PreparedStatement pstmt = null;

	ArrayList<roomTypeBean> Ab = new ArrayList<roomTypeBean>();
	String sql = "SELECT * FROM typeroom1;";
	try {
		Con = ConnectionManager.getConnection();
		pstmt = Con.prepareStatement(sql);
		
		
		rs = pstmt.executeQuery();

		while (rs.next()) {
			roomTypeBean room = new roomTypeBean();
			
			
			room.setTypeRoomID(rs.getInt("typeRoomID"));
			room.setNameType(rs.getString("nameType"));
			room.setDescription(rs.getString("description"));
			

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
	



public roomBean roomPicture2(int roomID) {

	roomBean bean = null;

	String sql = "SELECT Picture FROM typeroom1 WHERE typeRoomID = ?";
	try {

		Con = ConnectionManager.getConnection();

		PreparedStatement ps = Con.prepareStatement(sql);
		ps.setInt(1,roomID);

		rs = ps.executeQuery();

		if (rs.next()) {
			bean = new roomBean();
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


public ArrayList<roomBean> getroomType(int id){
	PreparedStatement ps = null;
	roomBean bean = null;
	ArrayList<roomBean> Ab = new ArrayList<roomBean>();
	
		System.out.print("RoomDAO¡“·≈È« = " + id);
		
		
		String sql ="SELECT * FROM typeroom1,room "
				+ "WHERE room.TypeRoomID = typeroom1.typeRoomID AND room.TypeRoomID = ? ";
		
		
	    
		try{
			
			Con = ConnectionManager.getConnection();
			ps = Con.prepareStatement(sql);
			ps.setInt(1,id);
			
			
			rs = ps.executeQuery();
			while(rs.next()){
			bean =	 new roomBean();
		bean.setNumberRoom(rs.getString("numberRoom"));
		bean.setFloor(rs.getInt("floor"));
		bean.setInsureCost(rs.getInt("insureCost"));
		bean.setMouthCost(rs.getInt("mouthCost"));
		bean.setDayCost(rs.getInt("dayCost"));
		bean.setRoomID(rs.getInt("roomID"));
		
		
		
		
		
		Ab.add(bean);
		
			}
				
			
			
			//bean.setValid(true);
			
			ps.close();
			Con.close();
			rs.close();
			
		}catch (SQLException e) {
		//bean.setValid(false);
		}
		
		
		
		
		
		
		
		return Ab;
		
		
	
		
	}





public ArrayList<roombook> getroomBook(int CustomerID){
PreparedStatement ps = null;
roombook bean = null;

ArrayList<roombook> Ab = new ArrayList<roombook>();

	System.out.print("RoomDAO-getroomBook ¡“·≈È« = " + CustomerID);
	
	
	String sql =" SELECT book.*,room.*,typeroom1.nameType FROM `detailbook`,room,book,customer,typeroom1 WHERE book.customerID = customer.customerID AND detailbook.roomID = room.roomID "
			+ "AND detailbook.bookID = book.bookID AND "
			+ "typeroom1.typeRoomID=room.TypeRoomID AND book.customerID = ? " ;
	
	
    
	try{
		
		Con = ConnectionManager.getConnection();
		ps = Con.prepareStatement(sql);
		ps.setInt(1,CustomerID);
		
		
		rs = ps.executeQuery();
		
		while(rs.next()){
		bean = new roombook();
	
		bean.setBookID(rs.getInt("bookID"));
		bean.setBookDate(rs.getDate("bookDate"));
		bean.setDateCheckIn(rs.getDate("dateCheckIn"));
		bean.setDateCheckOut(rs.getDate("dateCheckOut"));
		bean.setBookType(rs.getString("bookType"));
		
		
		
		
		bean.setCustomerID(rs.getInt("customerID"));
		bean.setStutus_payBook(rs.getString("stutus_payBook"));
		bean.setStutus_book(rs.getString("stutus_book"));
		bean.setPeople(rs.getInt("people"));
		bean.setRoomID(rs.getInt("roomID"));
		bean.setStatusRoom(rs.getString("statusRoom"));
		
		
		bean.setFloor(rs.getInt("floor"));
		
		bean.setMouthCost(rs.getInt("mouthCost"));
		bean.setDayCost(rs.getInt("dayCost"));
		bean.setInsureCost(rs.getInt("insureCost"));
		
		
		bean.setNumberRoom(rs.getString("numberRoom"));
		bean.setTypeRoomID(rs.getInt("typeRoomID"));
		bean.setNameType(rs.getString("nameType"));
		
		

	Ab.add(bean);
	
		}
			
		
		
		//bean.setValid(true);
		
		ps.close();
		Con.close();
		rs.close();
		
	}catch (SQLException e) {
	//bean.setValid(false);
	}
	
	
	
	
	
	
	
	return Ab;
	
	

	
}




public ArrayList<roomBean> UpdateBook() {
	PreparedStatement pstmt = null;

	ArrayList<roomBean> room = new ArrayList<roomBean>();
	String sql = " SELECT room.numberroom,typeroom1.nameType "
			+ " FROM room,typeroom1 WHERE room.TypeRoomID = typeroom1.typeRoomID ";
	try {

		Con = ConnectionManager.getConnection();
		pstmt = Con.prepareStatement(sql);
		
		
		rs = pstmt.executeQuery();

		while (rs.next()) {
			roomBean bean = new roomBean();
			
		
			bean.setNumberRoom(rs.getString("numberRoom"));
			bean.setNameType(rs.getString("nameType"));
			
			
			
			
			room.add(bean);

		}
		pstmt.close();
		Con.close();
		rs.close();
	} catch (Exception e) {
		e.printStackTrace();
	}

	return room;
}


public ArrayList<roombook> selectAllest(String book2,String ContactName ,String roomType,String date1 ,String date2,String book,String pay,String numroom) {
	System.out.println("¡“‡‡≈È«" + book2+ ContactName +roomType+ date1 + date2 + book+pay+numroom);

	ArrayList<roombook> List = new ArrayList<roombook>();
	
	PreparedStatement preparedStmt = null;															

	String selectSQL = " SELECT book.people,DetailBook.bookID,DetailBook.roomID,room.numberRoom,book.bookDate,book.dateCheckIn,book.dateCheckOut"
			+ " ,book.bookType,book.stutus_payBook,book.stutus_book,customer.firstname,customer.lastname, typeroom1.nameType FROM book,customer,detailbook,typeroom1,room WHERE customer.customerID = book.customerID AND "
			+ " detailbook.roomID = room.roomID AND detailbook.bookID=book.bookID "
			+ " AND room.TypeRoomID = typeroom1.typeRoomID";
	
	
	
	
	
	//-----------------------------------------------------
	if (ContactName != null) {
		selectSQL += " AND customer.firstname LIKE ?";
		System.out.println("‡¢È“ContactName" + ContactName);
	}
	//--------------------------------------------------------

	if (roomType != null) {
		selectSQL += " AND typeroom1.nameType LIKE ?";
		System.out.println("‡¢È“roomType" + roomType);
	}
	//------------------------------------------------------
	
	if (date1 != null) {
		if (date2 != null) {
			selectSQL += " AND dateCheckIn BETWEEN ? and ?";
			System.out.println("‡¢È“date1 ∫’∑«’π" + date1);
		} else if (date2 == null){
			selectSQL += " AND dateCheckIn = ?";
			System.out.println("‡¢È“date1 No btween" + date1);
		}
	}
	
	//-----------------------------------------------------
	if (book != null) {
		selectSQL += " AND book.stutus_book LIKE ? ";
		System.out.println("‡¢È“book" + book);
	}
	//---------------------------------------------------------
	if (pay != null) {
		selectSQL += " AND book.stutus_payBook LIKE ? ";
		System.out.println("‡¢È“pay" + pay);
	}
	//---------------------------------------------------------
		if (numroom != null) {
			selectSQL += " AND detailbook.roomID LIKE ? ";
			System.out.println("‡¢È“numroom" + numroom);
		}
	
		if (book2 != null) {
			selectSQL += " AND book.bookType LIKE ? ";
			System.out.println("‡¢È“book2" + book);
		}
		
	//selectSQL += "GROUP BY detailbook.bookID";

	
		
		
	try {
		int i = 1;
		Con = ConnectionManager.getConnection();
		preparedStmt = Con.prepareStatement(selectSQL);
		
		
		
		

		if (ContactName!= null) {
			preparedStmt.setString(i++,ContactName+"%");
			System.out.println("‡¢È“DAO_ContactName");
		}
		
		if (roomType!= null) {
			preparedStmt.setString(i++,roomType);
			System.out.println("‡¢È“DAO_roomType");
		}
		if (date1!= null) {
			if (date2!= null) {
				preparedStmt.setString(i++,date1);
				preparedStmt.setString(i++,date2);
				System.out.println("‡¢È“DAO_date1_date2");
			} else {
				preparedStmt.setString(i++,date1);
				System.out.println("‡¢È“DAO_date1");
			}
		}
		
		if (book!= null) {
			preparedStmt.setString(i++,book);
			System.out.println("‡¢È“DAO_book");
		}
		if (pay!= null) {
			preparedStmt.setString(i++,pay);
			System.out.println("‡¢È“DAO_pay");
		}
		if (numroom!= null) {
			preparedStmt.setInt(i++,Integer.parseInt(numroom));
			System.out.println("‡¢È“DAO_numroom");
		}
		
		if (book2!= null) {
			preparedStmt.setString(i++,book2);
			System.out.println("‡¢È“DAO_book2");
		}
		rs = preparedStmt.executeQuery();
		
		

		roombook roomList = null; 
									// //ÕÕ∫‡®§¢Õß§≈“ ProductsBean
		while (rs.next()) {
			roomList = new roombook();
			// °”Àπ¥§Ë“„ÀÈ//ÕÍÕ∫‡®Á§ ProductsList
			roomList.setPeople(rs.getInt("people"));
			roomList.setRoomID(rs.getInt("roomID"));
			roomList.setBookID(rs.getInt("bookID"));
			roomList.setNumberRoom(rs.getString("numberRoom"));
			roomList.setBookDate(rs.getDate("bookDate"));
			roomList.setDateCheckIn(rs.getDate("dateCheckIn"));
			
			roomList.setDateCheckOut(rs.getDate("dateCheckOut"));
			roomList.setBookType(rs.getString("bookType"));
			roomList.setStutus_payBook(rs.getString("stutus_payBook"));
			roomList.setStutus_book(rs.getString("stutus_book"));
			roomList.setFirstname(rs.getString("firstname"));
			
			roomList.setLastname(rs.getString("lastname"));
			roomList.setNameType(rs.getString("nameType"));
			
			List.add(roomList);

		}
		//preparedStmt.close();
		rs.close(); // ª‘¥°“√∑”ß“π rs
		Con.close(); // ª‘¥°“√∑”ß“π dbconConnection

	} catch (SQLException e) {
		e.printStackTrace(); // ‡‡ ¥ß§Ë“¿“…“ SQL ∑’Ë‡°‘¥¢Õßº‘¥æ≈“¥
	}
	return List;
}


public ArrayList<roombook> getRoomAdmin() {
	PreparedStatement pstmt = null;

	ArrayList<roombook> Ab = new ArrayList<roombook>();
	String sql = " SELECT room.*,typeroom1.nameType FROM `room` , "
			+ " typeroom1 WHERE typeroom1.typeRoomID = room.TypeRoomID ";
	try {
		Con = ConnectionManager.getConnection();
		pstmt = Con.prepareStatement(sql);
		
		
		rs = pstmt.executeQuery();
		roombook room = null;
		while (rs.next()) {
			 room = new roombook();
			room.setRoomID(rs.getInt("roomID"));
			room.setStatusRoom(rs.getString("statusRoom"));
			room.setFloor(rs.getInt("floor"));
			room.setMouthCost(rs.getInt("mouthCost"));
			room.setDayCost(rs.getInt("dayCost"));
			
			
			room.setInsureCost(rs.getInt("insureCost"));
			room.setNumberRoom(rs.getString("numberRoom"));
			room.setTypeRoomID(rs.getInt("typeRoomID"));
			
			
			room.setNameType(rs.getString("nameType"));
			
			
			
			
		
			
			room.setTypeRoomID(rs.getInt("typeRoomID"));
		
			room.setNameType(rs.getString("nameType"));
			
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




public ArrayList<roomTypeBean> getRoomTypeAdmin() {
	PreparedStatement pstmt = null;

	ArrayList<roomTypeBean> Ab = new ArrayList<roomTypeBean>();
	String sql = " SELECT nameType,Description,typeRoomID FROM `typeroom1` ";
	try {
		Con = ConnectionManager.getConnection();
		pstmt = Con.prepareStatement(sql);
		
		
		rs = pstmt.executeQuery();
		roomTypeBean room = null;
		while (rs.next()) {
			 room = new roomTypeBean();
			room.setNameType(rs.getString("nameType"));
			room.setTypeRoomID(rs.getInt("typeRoomID"));
			room.setDescription(rs.getString("description"));
			
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





public int deleteRoom(int[] id3){
	
	//int delResult = 0;
	
	
	int i=0;
	while(i<id3.length){
	System.out.print("¡“·≈È«" + id3[i]);
	i++;
	}

	
	String sql ="DELETE FROM room where roomID = ? ";
	PreparedStatement pstmt = null;
	Con = ConnectionManager.getConnection();
	try{
	
		
		
	
		
		for(int j=0;j<id3.length;j++){
		
			pstmt = Con.prepareStatement(sql);
			
			
			pstmt.setInt(1,id3[j]);
			
		  pstmt.executeUpdate();
			 

		}
		
		pstmt.close();
		Con.close();
		
		return 1 ;
		
		
	}catch (SQLException e) {
	
		return 0;
		
	}
	
}
	



public static roombook UpdateRoom(roombook updatebean) {

	int addResult = 0;
	PreparedStatement ps = null;
	System.out.print("¡“·≈È«update1:");
	// §” —Ëßsql
	String UpdateSQL = " UPDATE `room` SET statusRoom =?,mouthCost = ?,dayCost=?,insureCost=?,TypeRoomID=? WHERE `roomID`=?";

	
	

	try {
		Con = ConnectionManager.getConnection();

		ps = Con.prepareStatement(UpdateSQL);

		ps.setString(1, updatebean.getStatusRoom());
		ps.setInt(2, updatebean.getMouthCost());
		ps.setInt(3, updatebean.getDayCost());
		ps.setInt(4, updatebean.getInsureCost());
		ps.setInt(5, updatebean.getTypeRoomID());
		ps.setInt(6, updatebean.getRoomID());
	
		addResult = ps.executeUpdate();

		if (addResult == 1) {
			updatebean.setValid(true);

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
	



}
