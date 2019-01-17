package org.shop.pojo;

import java.sql.Date;

/**
 * 
 * @author Administrator lwj 
 *
 */
public class Customer {
	private int  id;
	private String name;
	private int sex;
	private String year;
	private Date  date;
	private String phone;
	private int customerType;
	private int checkin;
	private double money;
	private int pay;
	private String modifyInfo;
	private String deleteInfo;
	

	public Customer(int id, String name, int sex, String year, Date date, String phone, int customerType, int checkin,
			double money, int pay, String modifyInfo, String deleteInfo) {
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.year = year;
		this.date = date;
		this.phone = phone;
		this.customerType = customerType;
		this.checkin = checkin;
		this.money = money;
		this.pay = pay;
		this.modifyInfo = modifyInfo;
		this.deleteInfo = deleteInfo;
	}

	public Customer(int id, String name, int sex, String year, Date date, String phone, int customerType, int checkin,
			String modifyInfo, String deleteInfo) {
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.year = year;
		this.date = date;
		this.phone = phone;
		this.customerType = customerType;
		this.checkin = checkin;
		this.modifyInfo = modifyInfo;
		this.deleteInfo = deleteInfo;
	}

	public Customer( String name, int sex,  String year, Date date,String phone, int customerType, int checkin) {
		super();
		this.name = name;
		this.sex = sex;
		this.phone = phone;
		this.year = year;
		this.date = date;
		this.customerType = customerType;
		this.checkin = checkin;

	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getCustomerType() {
		return customerType;
	}
	public void setCustomerType(int customerType) {
		this.customerType = customerType;
	}
	public int getCheckin() {
		return checkin;
	}
	public void setCheckin(int checkin) {
		this.checkin = checkin;
	}
	
	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	public String getModifyInfo() {
		return modifyInfo;
	}
	public void setModifyInfo(String modifyInfo) {
		this.modifyInfo = modifyInfo;
	}
	public String getDeleteInfo() {
		return deleteInfo;
	}
	public void setDeleteInfo(String deleteInfo) {
		this.deleteInfo = deleteInfo;
	}
	
}
