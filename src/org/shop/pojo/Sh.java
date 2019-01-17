package org.shop.pojo;

import java.util.Date;

public class Sh {
	private int  id;
	private String  hw;//货物名称
	private String name;//客户名称
	private String money;//进货价格
	private String jg;//出货价格
	private String lr;//利润
	private String phone;//客户联系方式
	private int sh;
	private Date date;
	private int sl;
	private String zrr;
	public String getZrr() {
		return zrr;
	}
	public void setZrr(String zrr) {
		this.zrr = zrr;
	}
	public int getSl() {
		return sl;
	}
	public void setSl(int sl) {
		this.sl = sl;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getSh() {
		return sh;
	}
	public void setSh(int sh) {
		this.sh = sh;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHw() {
		return hw;
	}
	public void setHw(String hw) {
		this.hw = hw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getJg() {
		return jg;
	}
	public void setJg(String jg) {
		this.jg = jg;
	}
	public String getLr() {
		return lr;
	}
	public void setLr(String lr) {
		this.lr = lr;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "Sh [id=" + id + ", hw=" + hw + ", name=" + name + ", money=" + money + ", jg=" + jg + ", lr=" + lr
				+ ", phone=" + phone + ", sh=" + sh + ", date=" + date + ", sl=" + sl + ", zrr=" + zrr + "]";
	}
	
	
}
