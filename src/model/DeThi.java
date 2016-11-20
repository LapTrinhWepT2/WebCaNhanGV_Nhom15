package model;

import java.sql.Time;

public class DeThi {
	private String madethi;
	private String tendethi;
	private Time thoigian;
	
	public DeThi() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DeThi(String madethi, String tendethi, Time thoigian) {
		super();
		this.madethi = madethi;
		this.tendethi = tendethi;
		this.thoigian = thoigian;
	}
	public String getMadethi() {
		return madethi;
	}
	public void setMadethi(String madethi) {
		this.madethi = madethi;
	}
	public String getTendethi() {
		return tendethi;
	}
	public void setTendethi(String tendethi) {
		this.tendethi = tendethi;
	}
	public Time getThoigian() {
		return thoigian;
	}
	public void setThoigian(Time thoigian) {
		this.thoigian = thoigian;
	}
	
	

	
}
