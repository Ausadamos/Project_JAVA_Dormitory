package Bean;

import java.sql.Blob;
import java.sql.Date;

public class pictureBillBean {

	int pictureBill_ID;
	int customerID;
	Blob picture;
	Date date;
	
	
	
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getPictureBill_ID() {
		return pictureBill_ID;
	}
	public void setPictureBill_ID(int pictureBill_ID) {
		this.pictureBill_ID = pictureBill_ID;
	}
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	public Blob getPicture() {
		return picture;
	}
	public void setPicture(Blob picture) {
		this.picture = picture;
	}
	
	
	
	
	
	
	
}
