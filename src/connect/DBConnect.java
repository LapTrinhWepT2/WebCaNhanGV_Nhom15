package connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public static Connection getConnection(){
		Connection conn = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webcanhangv","root","1411");
			//System.out.println("Connect success!");
		}
//		catch (ClassNotFoundException e){
//			System.out.println("Class not found!");
//		}
//		catch (SQLException e)
//		{
//			System.out.println("Error connection!");
//		}
		catch (Exception e ){
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void main(String[] args){
		/*DBConnect dbconnect = new DBConnect();
		dbconnect.getConnection();*/
		System.out.println(getConnection());
	}
}
