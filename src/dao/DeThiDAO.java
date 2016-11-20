package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;

import connect.DBConnect;
import model.DeThi;
import model.DeThi_CauHoi;
import model.KhoaHoc_DeThi;

public class DeThiDAO {
	
	public ArrayList<DeThi> getListDeThi() throws SQLException{
		Connection connection = DBConnect.getConnection();
		String sql= "select * from dethi";
		PreparedStatement ps;
		ps = (PreparedStatement) connection.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		ArrayList<DeThi> list = new ArrayList<>();
		while (rs.next()){
			DeThi dethi=new DeThi();
			dethi.setMadethi(rs.getString("MaDeThi"));
			dethi.setTendethi(rs.getString("TenDeThi"));
			dethi.setThoigian(rs.getTime("ThoiGian"));
			list.add(dethi);
		}
		return list;
	}
	
	public ArrayList<KhoaHoc_DeThi> getListDeThiWithKhoaHoc(String makhoahoc) throws SQLException{
		Connection connection = DBConnect.getConnection();
		String sql= "select * from khoahoc,dethi,khoahoc_dethi where khoahoc.MaKhoaHoc=khoahoc_dethi.MaKhoaHoc and khoahoc_dethi.MaDeThi=dethi.MaDeThi and khoahoc.MaKhoaHoc='"+makhoahoc+"'";
		PreparedStatement ps;
		ps = (PreparedStatement) connection.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		ArrayList<KhoaHoc_DeThi> list = new ArrayList<>();
		while (rs.next()){
			KhoaHoc_DeThi khoahoc_dethi=new KhoaHoc_DeThi();
			 khoahoc_dethi.setMadethi(rs.getString("MaDeThi"));
			 khoahoc_dethi.setTendethi(rs.getString("TenDeThi"));
			 khoahoc_dethi.setThoigian(rs.getTime("ThoiGian"));
			list.add( khoahoc_dethi);
			
		}
		return list;
	}
	
	public static void main(String[] args) throws SQLException{
		DeThiDAO dethi=new DeThiDAO();
		/*for(DeThi ds:dethi.getListDeThi())
			System.out.println(ds.getMadethi()+'-'+ds.getTendethi());
		System.out.println(dethi.getListDeThi());*/
		
		//System.out.println(dao.getCauHoi("CH1").getNoidungcauhoi());
		for(KhoaHoc_DeThi ds:dethi.getListDeThiWithKhoaHoc("KH01")){
			System.out.println(ds.getMadethi()+"-"+ds.getTendethi());
		}
	}


}
