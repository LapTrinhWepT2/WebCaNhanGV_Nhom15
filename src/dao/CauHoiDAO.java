package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.PreparedStatement;

import connect.DBConnect;
import model.CauHoi;
import model.Users;
import model.DeThi_CauHoi;

public class CauHoiDAO {
	public CauHoi getCauHoi(String macauhoi) throws SQLException{
		Connection connection= DBConnect.getConnection();
		String sql= "select * from cauhoi where MaCauHoi='"+macauhoi+"'";
		PreparedStatement ps;
		ps = (PreparedStatement) connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		CauHoi cauhoi=new CauHoi();
		while(rs.next()){
			cauhoi.setMacauhoi(rs.getString("MaCauHoi"));
			cauhoi.setNoidungcauhoi(rs.getString("NoiDungCauHoi"));
			cauhoi.setLuachon1(rs.getString("LuaChon1"));
			cauhoi.setLuachon2(rs.getString("LuaChon2"));
			cauhoi.setLuachon3(rs.getString("LuaChon3"));
			cauhoi.setLuachon4(rs.getString("LuaChon4"));
			cauhoi.setDapan(rs.getString("DapAn"));
		}
		return cauhoi;
	}
	
	public ArrayList<CauHoi> getListCauHoitheomacauhoi() throws SQLException{
		Connection connection = DBConnect.getConnection();
		String sql= "select * from cauhoi";
		PreparedStatement ps;
		ps = (PreparedStatement) connection.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		ArrayList<CauHoi> list = new ArrayList<>();
		while (rs.next()){
			CauHoi cauhoi=new CauHoi();
			cauhoi.setMacauhoi(rs.getString("MaCauHoi"));
			cauhoi.setNoidungcauhoi(rs.getString("NoiDungCauHoi"));
			cauhoi.setLuachon1(rs.getString("LuaChon1"));
			cauhoi.setLuachon2(rs.getString("LuaChon2"));
			cauhoi.setLuachon3(rs.getString("LuaChon3"));
			cauhoi.setLuachon4(rs.getString("LuaChon4"));
			cauhoi.setDapan(rs.getString("DapAn"));
			list.add(cauhoi);
		}
		return list;
	}
	
	
	public ArrayList<DeThi_CauHoi> getListCauHoiWithDeThi(String madethi) throws SQLException{
		Connection connection = DBConnect.getConnection();
		String sql= "select * from cauhoi,dethi,chitietdethi where cauhoi.MaCauHoi=chitietdethi.MaCauHoi  and chitietdethi.MaDeThi=dethi.MaDeThi and dethi.MaDeThi='"+madethi+"'";
		PreparedStatement ps;
		ps = (PreparedStatement) connection.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		ArrayList<DeThi_CauHoi> list = new ArrayList<>();
		while (rs.next()){
			DeThi_CauHoi dethi_cauhoi=new DeThi_CauHoi();
			dethi_cauhoi.setMacauhoi(rs.getString("MaCauHoi"));
			dethi_cauhoi.setNoidungcauhoi(rs.getString("NoiDungCauHoi"));
			dethi_cauhoi.setLuachon1(rs.getString("LuaChon1"));
			dethi_cauhoi.setLuachon2(rs.getString("LuaChon2"));
			dethi_cauhoi.setLuachon3(rs.getString("LuaChon3"));
			dethi_cauhoi.setLuachon4(rs.getString("LuaChon4"));
			dethi_cauhoi.setDapan(rs.getString("DapAn"));
			list.add(dethi_cauhoi);
			
		}
		return list;
	}
	
	public static void main(String[] args) throws SQLException{
		CauHoiDAO dao=new CauHoiDAO();
		//System.out.println(dao.getCauHoi("CH1").getNoidungcauhoi());
		/*for(CauHoi ds:dao.getListCauHoitheomacauhoi()){
			System.out.println(ds.getNoidungcauhoi()+"-"+ds.getLuachon1());
		}
		*/
		/*for(DeThi_CauHoi ad: dao.getListCauHoiWithDeThi("DT01")){
			System.out.println(ad.getNoidungcauhoi());
		}*/
		
	}

}
