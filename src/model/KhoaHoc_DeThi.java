package model;

import java.sql.Date;
import java.sql.Time;

public class KhoaHoc_DeThi {
	private String makhoahoc;
	private String tenkhoahoc;
	private String motakhoahoc;
	private Date ngaybatdau;
	private Date ngayketthuc;
	
	private String madethi;
	private String tendethi;
	private Time thoigian;
	public KhoaHoc_DeThi() {
		super();
		// TODO Auto-generated constructor stub
	}
	public KhoaHoc_DeThi(String makhoahoc, String tenkhoahoc, String motakhoahoc, Date ngaybatdau, Date ngayketthuc,
			String madethi, String tendethi, Time thoigian) {
		super();
		this.makhoahoc = makhoahoc;
		this.tenkhoahoc = tenkhoahoc;
		this.motakhoahoc = motakhoahoc;
		this.ngaybatdau = ngaybatdau;
		this.ngayketthuc = ngayketthuc;
		this.madethi = madethi;
		this.tendethi = tendethi;
		this.thoigian = thoigian;
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
