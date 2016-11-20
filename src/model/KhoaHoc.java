package model;

import java.sql.Date;

public class KhoaHoc {
	
	private String makhoahoc;
	private String tenkhoahoc;
	private String motakhoahoc;
	private Date ngaybatdau;
	private Date ngayketthuc;
	
	public KhoaHoc() {
		super();
		// TODO Auto-generated constructor stub
	}

	public KhoaHoc(String makhoahoc, String tenkhoahoc, String motakhoahoc, Date ngaybatdau, Date ngayketthuc) {
		super();
		this.makhoahoc = makhoahoc;
		this.tenkhoahoc = tenkhoahoc;
		this.motakhoahoc = motakhoahoc;
		this.ngaybatdau = ngaybatdau;
		this.ngayketthuc = ngayketthuc;
	}

	public String getMakhoahoc() {
		return makhoahoc;
	}

	public void setMakhoahoc(String makhoahoc) {
		this.makhoahoc = makhoahoc;
	}

	public String getTenkhoahoc() {
		return tenkhoahoc;
	}

	public void setTenkhoahoc(String tenkhoahoc) {
		this.tenkhoahoc = tenkhoahoc;
	}

	public String getMotakhoahoc() {
		return motakhoahoc;
	}

	public void setMotakhoahoc(String motakhoahoc) {
		this.motakhoahoc = motakhoahoc;
	}

	public Date getNgaybatdau() {
		return ngaybatdau;
	}

	public void setNgaybatdau(Date ngaybatdau) {
		this.ngaybatdau = ngaybatdau;
	}

	public Date getNgayketthuc() {
		return ngayketthuc;
	}

	public void setNgayketthuc(Date ngayketthuc) {
		this.ngayketthuc = ngayketthuc;
	}
	
	

}
