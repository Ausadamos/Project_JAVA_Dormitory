package Bean;

import java.sql.Blob;
import java.sql.Date;

public class roomBean {

	int roomID;
	String statusRoom;
	int floor;
	int mouthCost;
	int dayCost;
	int insureCost;
	String roomtype;
	String numberRoom;
	
    int typeroom1;
	
    int status;
    String bookType;
    Date bookDate;
   Date dateCheckIn;
   String  dateCheckOut;
   int  customerID;
    int TypeRoomID;
   String nameType;
   
   
	public String getNameType() {
	return nameType;
}
public void setNameType(String nameType) {
	this.nameType = nameType;
}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getBookType() {
		return bookType;
	}
	public void setBookType(String bookType) {
		this.bookType = bookType;
	}
	public Date getBookDate() {
		return bookDate;
	}
	public void setBookDate(Date bookDate) {
		this.bookDate = bookDate;
	}
	public Date getDateCheckIn() {
		return dateCheckIn;
	}
	public void setDateCheckIn(Date dateCheckIn) {
		this.dateCheckIn = dateCheckIn;
	}
	public String getDateCheckOut() {
		return dateCheckOut;
	}
	public void setDateCheckOut(String dateCheckOut) {
		this.dateCheckOut = dateCheckOut;
	}
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	public int getTypeRoomID() {
		return TypeRoomID;
	}
	public void setTypeRoomID(int typeRoomID) {
		TypeRoomID = typeRoomID;
	}
	public int getTyperoom1() {
	return typeroom1;
}
public void setTyperoom1(int typeroom1) {
	this.typeroom1 = typeroom1;
}
	Blob picture;
	public Blob getPicture() {
		return picture;
	}
	public void setPicture(Blob picture) {
		this.picture = picture;
	}
	boolean valid;
	
	
	public boolean isValid() {
		return valid;
	}
	public void setValid(boolean valid) {
		this.valid = valid;
	}
	public String getNumberRoom() {
		return numberRoom;
	}
	public void setNumberRoom(String numberRoom) {
		this.numberRoom = numberRoom;
	}
	public int getRoomID() {
		return roomID;
	}
	public void setRoomID(int roomID) {
		this.roomID = roomID;
	}
	public String getStatusRoom() {
		return statusRoom;
	}
	public void setStatusRoom(String statusRoom) {
		this.statusRoom = statusRoom;
	}
	public int getFloor() {
		return floor;
	}
	public void setFloor(int floor) {
		this.floor = floor;
	}
	public int getMouthCost() {
		return mouthCost;
	}
	public void setMouthCost(int mouthCost) {
		this.mouthCost = mouthCost;
	}
	public int getDayCost() {
		return dayCost;
	}
	public void setDayCost(int dayCost) {
		this.dayCost = dayCost;
	}
	public int getInsureCost() {
		return insureCost;
	}
	public void setInsureCost(int insureCost) {
		this.insureCost = insureCost;
	}
	public String getRoomtype() {
		return roomtype;
	}
	public void setRoomtype(String roomtype) {
		this.roomtype = roomtype;
	}
	
	
	
	
	
	
	
	
	
	
	
}
