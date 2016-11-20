package model;

import java.sql.Time;

public class DeThi_CauHoi {
	private String madethi;
	private String tendethi;
	private Time thoigian;
	private String macauhoi;
	private String noidungcauhoi;
	private String luachon1;
	private String luachon2;
	private String luachon3;
	private String luachon4;
	private String dapan;
	public DeThi_CauHoi() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DeThi_CauHoi(String madethi, String tendethi, Time thoigian, String macauhoi, String noidungcauhoi,
			String luachon1, String luachon2, String luachon3, String luachon4, String dapan) {
		super();
		this.madethi = madethi;
		this.tendethi = tendethi;
		this.thoigian = thoigian;
		this.macauhoi = macauhoi;
		this.noidungcauhoi = noidungcauhoi;
		this.luachon1 = luachon1;
		this.luachon2 = luachon2;
		this.luachon3 = luachon3;
		this.luachon4 = luachon4;
		this.dapan = dapan;
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
	public String getMacauhoi() {
		return macauhoi;
	}
	public void setMacauhoi(String macauhoi) {
		this.macauhoi = macauhoi;
	}
	public String getNoidungcauhoi() {
		return noidungcauhoi;
	}
	public void setNoidungcauhoi(String noidungcauhoi) {
		this.noidungcauhoi = noidungcauhoi;
	}
	public String getLuachon1() {
		return luachon1;
	}
	public void setLuachon1(String luachon1) {
		this.luachon1 = luachon1;
	}
	public String getLuachon2() {
		return luachon2;
	}
	public void setLuachon2(String luachon2) {
		this.luachon2 = luachon2;
	}
	public String getLuachon3() {
		return luachon3;
	}
	public void setLuachon3(String luachon3) {
		this.luachon3 = luachon3;
	}
	public String getLuachon4() {
		return luachon4;
	}
	public void setLuachon4(String luachon4) {
		this.luachon4 = luachon4;
	}
	public String getDapan() {
		return dapan;
	}
	public void setDapan(String dapan) {
		this.dapan = dapan;
	}
	

}
