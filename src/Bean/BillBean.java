package Bean;

import java.sql.Date;

public class BillBean {
	int Bill_ID;
	Date date;
	int money;
	String firstname;
	String lastname;
	String tel;
	public int getBill_ID() {
		return Bill_ID;
	}
	public void setBill_ID(int bill_ID) {
		Bill_ID = bill_ID;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
}
