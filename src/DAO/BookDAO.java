package DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;

import db.ConnectionManager;

import Bean.roomBean;
import Bean.roombook;

public class BookDAO {

	static Connection Con = null;
	static ResultSet rs = null;

	public roomBean getroom(int id) {

		System.out.print("BookDAO.getroomÁÒáÅéÇ = " + id);
		PreparedStatement ps = null;

		String sql = " SELECT `roomID`, `floor`, `mouthCost`, `dayCost`, "
				+ "`insureCost`, `numberRoom` FROM `room` WHERE `roomID` = ?";

		roomBean bean = new roomBean();

		try {
			Con = ConnectionManager.getConnection();
			ps = Con.prepareStatement(sql);
			ps.setInt(1, id);

			rs = ps.executeQuery();
			if (rs.next()) {

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

		} catch (SQLException e) {
			bean.setValid(false);
		}

		return bean;

	}

	public int addCustomerid_M(int customerid, String datein, String typeroom, int people) {

		int addResult = 0;

		String sql = " INSERT INTO book(CustomerID,dateCheckIn,bookType,people) VALUE (?,?,?,?)";

		try {
			Con = ConnectionManager.getConnection();

			PreparedStatement ps = Con.prepareStatement(sql);

			ps.setInt(1, customerid);
			ps.setString(2, datein);
			ps.setString(3, typeroom);
			ps.setInt(4, people);

			addResult = ps.executeUpdate();

			ps.close();
			Con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return addResult;
	}

	public int addCustomerid(int customerid, String datein, String dateCheckOut, String typeroom, int people) {

		int addResult = 0;

		String sql = " INSERT INTO book(CustomerID,dateCheckIn,dateCheckOut,bookType,people) VALUE (?,?,?,?,?)";

		try {
			Con = ConnectionManager.getConnection();

			PreparedStatement ps = Con.prepareStatement(sql);

			ps.setInt(1, customerid);
			ps.setString(2, datein);
			if (dateCheckOut.equals("")) {
				ps.setNull(3, Types.DATE);
			} else {
				ps.setString(3, dateCheckOut);
			}

			ps.setString(4, typeroom);
			ps.setInt(5, people);

			addResult = ps.executeUpdate();

			ps.close();
			Con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return addResult;
	}

	public String getLastBook() {

		String lastBookID = null;

		String sql = " SELECT MAX(bookID) AS lastBookID FROM book";

		try {
			Con = ConnectionManager.getConnection();

			PreparedStatement ps = Con.prepareStatement(sql);

			rs = ps.executeQuery();

			if (rs.next()) {
				lastBookID = rs.getString("lastBookID");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return lastBookID;
	}

	// -------------------------------------------------------------------------
	public String getLastCustomer() {

		String lastCusID = null;

		String sql = " SELECT MAX(customerID) AS lastCusID FROM customer";

		try {
			Con = ConnectionManager.getConnection();

			PreparedStatement ps = Con.prepareStatement(sql);

			rs = ps.executeQuery();

			if (rs.next()) {
				lastCusID = rs.getString("lastCusID");
			}
			System.out.println(lastCusID);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return lastCusID;
	}

	// ----------------------------------------------------------------------
	public ArrayList<roombook> getroomBookLast() {
		PreparedStatement ps = null;
		roombook bean = null;

		ArrayList<roombook> Ab = new ArrayList<roombook>();

		String sql = " SELECT book.people,book.bookDate,book.dateCheckOut ,bookType,book.stutus_payBook"
				+ " ,book.stutus_book ,book.dateCheckIn,customer.firstname,customer.lastname "
				+ " ,room.numberRoom ,typeroom1.nameType FROM detailbook,`book` ,customer,room ,typeroom1 "
				+ " WHERE book.customerID=customer.customerID AND room.TypeRoomID = typeroom1.typeRoomID AND detailbook.roomID=room.roomID AND"
				+ " detailbook.bookID=book.bookID AND detailbook.bookID = "
				+ " ( SELECT MAX(detailbook.bookID) as total FROM detailbook) ";

		try {

			Con = ConnectionManager.getConnection();
			ps = Con.prepareStatement(sql);

			rs = ps.executeQuery();

			while (rs.next()) {
				bean = new roombook();

				bean.setBookDate(rs.getDate("bookDate"));
				bean.setDateCheckIn(rs.getDate("dateCheckIn"));
				bean.setDateCheckOut(rs.getDate("dateCheckOut"));
				bean.setBookDate(rs.getDate("bookDate"));
				bean.setStutus_payBook(rs.getString("stutus_payBook"));
				bean.setStutus_book(rs.getString("stutus_book"));
				bean.setPeople(rs.getInt("people"));
				bean.setBookType(rs.getString("bookType"));
	
				bean.setNumberRoom(rs.getString("numberRoom"));
				bean.setNameType(rs.getString("nameType"));
				bean.setFirstname(rs.getString("firstname"));
				bean.setLastname(rs.getString("lastname"));

				Ab.add(bean);

			}

			// bean.setValid(true);

			ps.close();
			Con.close();
			rs.close();

		} catch (SQLException e) {
			// bean.setValid(false);
		}

		return Ab;

	}

	public int addbook(int roomid, int bookid) {
		System.out.println("##############################");
		System.out.println("ÁÒáÅéÇBookDAO-addbook : " + roomid + "--" + bookid);

		int addResult = 0;
		String sql = " INSERT INTO detailbook(roomID,bookID) VALUE (?,?)";

		try {
			Con = ConnectionManager.getConnection();

			PreparedStatement ps = Con.prepareStatement(sql);

			ps.setInt(1, roomid);
			ps.setInt(2, bookid);

			addResult = ps.executeUpdate();

			ps.close();
			Con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return addResult;
	}

	public int addCustomerByAdmin(String fname, String lname, int Tel) {

		int addResult = 0;

		String sql = " INSERT INTO customer(firstname,lastname,tel) VALUE (?,?,?)";

		try {
			Con = ConnectionManager.getConnection();

			PreparedStatement ps = Con.prepareStatement(sql);

			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setInt(3, Tel);

			addResult = ps.executeUpdate();

			ps.close();
			Con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return addResult;
	}

	public int deleteBook(int[] id3) {

		// int delResult = 0;

		int i = 0;
		while (i < id3.length) {
			System.out.print("ÁÒáÅéÇ" + id3[i]);
			i++;
		}

		String sql = " DELETE FROM book where bookID = ? ";
		PreparedStatement pstmt = null;
		Con = ConnectionManager.getConnection();
		try {

			for (int j = 0; j < id3.length; j++) {

				pstmt = Con.prepareStatement(sql);

				pstmt.setInt(1, id3[j]);

				pstmt.executeUpdate();

			}

			pstmt.close();
			Con.close();

			return 1;

		} catch (SQLException e) {

			return 0;

		}

	}

	public static roombook UpdateBook(roombook updatebean) {

		int addResult = 0;
		PreparedStatement ps = null;
		System.out.print("ÁÒáÅéÇupdate1:");
		// ¤ÓÊÑè§sql
		String UpdateSQL = " UPDATE `detailbook` SET `roomID`=? WHERE bookID = ? ";

		System.out.print("ÁÒáÅéÇupdate1:" + updatebean.getRoomID());
		System.out.print("ÁÒáÅéÇupdate1:" + updatebean.getBookID());

		try {
			Con = ConnectionManager.getConnection();

			ps = Con.prepareStatement(UpdateSQL);

			ps.setInt(1, updatebean.getRoomID());
			ps.setInt(2, updatebean.getBookID());

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

	public static roombook UpdateBook2(roombook updatebean) {

		int addResult = 0;
		PreparedStatement ps = null;

		System.out.print("เข้าupdate2:" );
		
	
		String UpdateSQL = " Update book set dateCheckIn =? ,dateCheckOut=?,bookType=?,people=?,Stutus_book =?,Stutus_payBook =? where bookID = ? ";
		try {
			Con = ConnectionManager.getConnection();

			ps = Con.prepareStatement(UpdateSQL);
			if (updatebean.getDateCheckIn() != null || (!(updatebean.getDateCheckIn().equals("")))) {
			ps.setDate(1, updatebean.getDateCheckIn());
			} else {
				ps.setNull(1,Types.DATE);
			}
			//-------------------------------------------------------
			if ((updatebean.getDateCheckOut() == null) || (updatebean.getDateCheckOut().equals(""))){
				ps.setNull(2,java.sql.Types.DATE);
			}else{
				
				ps.setDate(2, updatebean.getDateCheckOut());
				System.out.println("เข้าDAO checkin");
				
			}

			ps.setString(3, updatebean.getBookType());

		
			
			ps.setInt(4,updatebean.getPeople());
			

			ps.setString(5,updatebean.getStutus_book());
			
		
			ps.setString(6,updatebean.getStutus_payBook());
			
			
			ps.setInt(7, updatebean.getBookID());

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
	
	public static roombook UpdateBook3(roombook updatebean) {

		int addResult = 0;
		PreparedStatement ps = null;

		System.out.print("ÁÒáÅéÇupdate2:" );
		
		// ¤ÓÊÑè§sql
		String UpdateSQL = " Update book set dateCheckIn =? ,dateCheckOut=?,bookType=?,people=? where bookID = ? ";
		try {
			Con = ConnectionManager.getConnection();

			ps = Con.prepareStatement(UpdateSQL);
			if (updatebean.getDateCheckIn() != null || (!(updatebean.getDateCheckIn().equals("")))) {
			ps.setDate(1, updatebean.getDateCheckIn());
			} else {
				ps.setNull(1,Types.DATE);
			}
			//-------------------------------------------------------
			if ((updatebean.getDateCheckOut() == null) || (updatebean.getDateCheckOut().equals(""))){
				ps.setNull(2,java.sql.Types.DATE);
			}else{
				
				ps.setDate(2, updatebean.getDateCheckOut());
				System.out.println("à¢éÒDAO checkin");
				
			}

			ps.setString(3, updatebean.getBookType());

		
			
			ps.setInt(4,updatebean.getPeople());
			
			
			
			
			
			ps.setInt(5, updatebean.getBookID());

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
	

	public ArrayList<roombook> getBillBook(int CustomerID) {
		PreparedStatement ps = null;
		roombook bean = null;

		ArrayList<roombook> Ab = new ArrayList<roombook>();

		System.out.print("RoomDAO-getroomBook ÁÒáÅéÇ = " + CustomerID);

		String sql = " select typeroom1.nameType,room.numberRoom ,customer.firstname ,customer.lastname,room.dayCost FROM detailbook"
				+ " ,customer,book,room,typeroom1 WHERE room.TypeRoomID "
				+ " = typeroom1.typeRoomID AND detailbook.roomID = room.roomID "
				+ " AND detailbook.bookID = book.bookID AND "
				+ " book.customerID=customer.customerID AND book.stutus_payBook=? "
				+ "AND book.stutus_book = ? AND book.bookType= ? AND customer.customerID = ?  ";

		try {

			Con = ConnectionManager.getConnection();
			ps = Con.prepareStatement(sql);

			ps.setString(1,"Pending_paybook");
			ps.setString(2,"Pending_Booked");
			ps.setString(3,"daily");
			ps.setInt(4, CustomerID);

			rs = ps.executeQuery();

			while (rs.next()) {
				bean = new roombook();

				bean.setNameType(rs.getString("nameType"));
				bean.setNumberRoom(rs.getString("numberRoom"));
				bean.setFirstname(rs.getString("firstname"));
				bean.setLastname(rs.getString("lastname"));
				bean.setDayCost(rs.getInt("dayCost"));

				Ab.add(bean);

			}

			// bean.setValid(true);

			ps.close();
			Con.close();
			rs.close();

		} catch (SQLException e) {
			// bean.setValid(false);
		}

		return Ab;

	}

	public ArrayList<roombook> getBillBook2(int CustomerID) {
		PreparedStatement ps = null;
		roombook bean = null;

		ArrayList<roombook> Ab = new ArrayList<roombook>();

		System.out.print("RoomDAO-getroomBook ÁÒáÅéÇ = " + CustomerID);

		String sql = " select typeroom1.nameType,room.numberRoom ,"
				+ " customer.firstname ,customer.lastname,room.mouthCost FROM detailbook "
				+ " ,customer,book,room,typeroom1 WHERE room.TypeRoomID = typeroom1.typeRoomID "
				+ " AND detailbook.roomID = room.roomID AND detailbook.bookID = book.bookID "
				+ " AND book.customerID=customer.customerID AND book.stutus_payBook= ? "
				+ " AND book.stutus_book = ? AND book.bookType= ? " + "AND customer.customerID = ?  ";

		try {

			Con = ConnectionManager.getConnection();
			ps = Con.prepareStatement(sql);

			ps.setString(1, "Pending_paybook");
			ps.setString(2, "Pending_Booked");
			ps.setString(3, "monthly");
			ps.setInt(4, CustomerID);

			rs = ps.executeQuery();

			while (rs.next()) {
				bean = new roombook();

				bean.setNameType(rs.getString("nameType"));
				bean.setNumberRoom(rs.getString("numberRoom"));
				bean.setFirstname(rs.getString("firstname"));
				bean.setLastname(rs.getString("lastname"));
				bean.setMouthCost(rs.getInt("mouthCost"));

				Ab.add(bean);

			}

			// bean.setValid(true);

			ps.close();
			Con.close();
			rs.close();

		} catch (SQLException e) {
			// bean.setValid(false);
		}

		return Ab;

	}

}
