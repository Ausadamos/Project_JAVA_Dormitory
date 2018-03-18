package Bean;

import java.sql.Blob;

public class pictureroom {
Blob pictureMap;

int pictureRoomID;
	int roomID;
	Blob Picture;
	
	
 	 public Blob getPictureMap() {
	return pictureMap;
}
public void setPictureMap(Blob pictureMap) {
	this.pictureMap = pictureMap;
}
	
	public int getPictureRoomID() {
		return pictureRoomID;
	}
	public void setPictureRoomID(int pictureRoomID) {
		this.pictureRoomID = pictureRoomID;
	}
	public int getRoomID() {
		return roomID;
	}
	public void setRoomID(int roomID) {
		this.roomID = roomID;
	}
	public Blob getPicture() {
		return Picture;
	}
	public void setPicture(Blob picture) {
		Picture = picture;
	}
	
	
	
	
	
	
	
	
	
	
	
}
