package Bean;

import java.sql.Blob;

public class roomTypeBean {

 	int typeRoomID;
 	 String nameType;
 	String Description;
 	 Blob picture;
 	 
 
	public int getTypeRoomID() {
		return typeRoomID;
	}
	public void setTypeRoomID(int typeRoomID) {
		this.typeRoomID = typeRoomID;
	}
	public String getNameType() {
		return nameType;
	}
	public void setNameType(String nameType) {
		this.nameType = nameType;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public Blob getPicture() {
		return picture;
	}
	public void setPicture(Blob picture) {
		this.picture = picture;
	}
	
	
	
	
	
	
	
	
	
	
}
