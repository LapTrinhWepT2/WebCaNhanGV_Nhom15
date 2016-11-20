package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;

import connect.DBConnect;
import model.KhoaHoc;

public class KhoaHocDAO {
	
	public ArrayList<KhoaHoc> getListKhoaHoc() throws SQLException{
		Connection connection = DBConnect.getConnection();
		String sql= "select * from khoahoc";
		PreparedStatement ps;
		ps = (PreparedStatement) connection.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		ArrayList<KhoaHoc> list = new ArrayList<>();
		while (rs.next()){
			KhoaHoc khoahoc=new KhoaHoc();
			khoahoc.setMakhoahoc(rs.getString("MaKhoaHoc"));
			khoahoc.setTenkhoahoc(rs.getString("TenKhoaHoc"));
			khoahoc.setMotakhoahoc(rs.getString("MoTaKhoaHoc"));
			khoahoc.setNgaybatdau(rs.getDate("NgayBatDau"));
			khoahoc.setNgayketthuc(rs.getDate("NgayKetThuc"));
			list.add(khoahoc);
		}
		return list;
	}
	
	public static void main(String[] args) throws SQLException{
		KhoaHocDAO khoahoc=new KhoaHocDAO();
		for(KhoaHoc ds:khoahoc.getListKhoaHoc())
			System.out.println(ds.getMakhoahoc()+'-'+ds.getMotakhoahoc());
		//System.out.println(dethi.getListDeThi());
		//System.out.println(dao.getCauHoi("CH1").getNoidungcauhoi());
		/*for(CauHoi ds:dao.getListCauHoitheomacauhoi("CH01")){
			System.out.println(ds.getNoidungcauhoi()+"-"+ds.getLuachon1());
		}*/
	}

}
