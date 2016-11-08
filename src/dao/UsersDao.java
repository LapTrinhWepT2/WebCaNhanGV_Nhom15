package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.PreparedStatement;

import connect.DBConnect;
import model.Users;

public class UsersDao {
	//Kiểm tra tài khoản có tồn tại chưa
	public boolean checkUser(String username)
	{
		Connection conn = DBConnect.getConnection();
		String sql = "select * from user where UserName = '" + username +"'";
		PreparedStatement ps;
		
		try{
			ps= (PreparedStatement) conn.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				conn.close();
				return true;
			}
		}
		catch(SQLException e) {
			Logger.getLogger(UsersDao.class.getName()).log(Level.SEVERE, null, e);
		}
		return false;
	}
	
	//Phương thức thêm tài khoản
	public boolean insertUser(Users u)
	{
		Connection conn = DBConnect.getConnection();
		String sql = "insert into user value(?,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareCall(sql);
			ps.setString(1,u.getUsername());
			ps.setString(2,	u.getPassword());
			ps.setString(3,u.getHovaten());
			ps.setDate(4, u.getNgaysinh());
			ps.setString(5,u.getGioitinh());
			ps.setString(6,u.getDiachi());
			ps.setString(7,u.getQuequan());
			ps.setString(8,u.getSodt());
			ps.setString(9,u.getEmail());
			ps.setString(10,u.getTrangthai());
			ps.executeUpdate();
			return true;	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			Logger.getLogger(UsersDao.class.getName()).log(Level.SEVERE, null, e);
		}		
		return false;
	}
	public Users login(String username, String password){
		Connection con = DBConnect.getConnection();
		String sql = "select * from user where UserName ='" +username + "' and Password ='" +password+ "'";
		PreparedStatement ps;
		
		try{
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()){
				Users users = new Users();
				users.setUsername(rs.getString("UserName"));
				users.setPassword(rs.getString("Password"));
				users.setEmail(rs.getString("Email"));
				users.setHovaten(rs.getString("HoVaTen"));
				con.close();
				return users;
			}
		}
		
		catch (SQLException e){
			e.printStackTrace();
		}
		
		return null;
	}
	
	public ArrayList<Users> getListUser() throws SQLException{
		Connection connection = DBConnect.getConnection();
		String sql="select * from user";
		PreparedStatement ps;
		ps = (PreparedStatement) connection.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		ArrayList<Users> list = new ArrayList<>();
		while (rs.next()){
			Users users=new Users();
			users.setUsername(rs.getString("UserName"));
			users.setPassword(rs.getString("Password"));
			users.setHovaten(rs.getString("HoVaTen"));
			users.setDiachi(rs.getString("DiaChi"));
			users.setEmail(rs.getString("Email"));
			list.add(users);
		}
		return list;
	}
	
	public static void main(String[] args) throws SQLException{
		UsersDao dao=new UsersDao();
		for(Users ds: dao.getListUser()){
			System.out.println(ds.getUsername()+"-"+ds.getPassword()+"-"+ds.getEmail());
		}
	}
}

