package db;
import java.sql.*;


public class ConnectionManager {
	static Connection con;
	static String url;
	public static Connection getConnection() {
	String jdbcutf8 = "?useUnicode=true&characterEncoding=UTF-8";
	try {
	String url = "jdbc:mysql://localhost/home2";
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection(url+jdbcutf8,"root","");
	} catch (SQLException ex) {
	ex.printStackTrace();
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	return con;
	}
	}