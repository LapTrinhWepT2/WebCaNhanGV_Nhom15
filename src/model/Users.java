package model;

import java.sql.Date;

public class Users {
	private String username;
	private String password;
	private String hovaten;
	private Date ngaysinh;
	private String gioitinh;
	private String diachi;
	private String quequan;
	private String sodt;
	private String email;
	private String trangthai;
	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Users(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	public Users(String username, String password, String hovaten, Date ngaysinh, String gioitinh, String diachi,
			String quequan, String sodt, String email, String trangthai) {
		super();
		this.username = username;
		this.password = password;
		this.hovaten = hovaten;
		this.ngaysinh = ngaysinh;
		this.gioitinh = gioitinh;
		this.diachi = diachi;
		this.quequan = quequan;
		this.sodt = sodt;
		this.email = email;
		this.trangthai = trangthai;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getHovaten() {
		return hovaten;
	}
	public void setHovaten(String hovaten) {
		this.hovaten = hovaten;
	}
	public Date getNgaysinh() {
		return ngaysinh;
	}
	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	public String getGioitinh() {
		return gioitinh;
	}
	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getQuequan() {
		return quequan;
	}
	public void setQuequan(String quequan) {
		this.quequan = quequan;
	}
	public String getSodt() {
		return sodt;
	}
	public void setSodt(String sodt) {
		this.sodt = sodt;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(String trangthai) {
		this.trangthai = trangthai;
	}
	
}
