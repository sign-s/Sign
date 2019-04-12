package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbManager {
	public static String driver = "com.mysql.cj.jdbc.Driver";
	public static String url = "jdbc:mysql://127.0.0.1:3306/qiandao?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC&characterEncoding=utf-8";
	public static String username = "root";
	public static String password = "";
	public static Connection connection;

	public static void init() {
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url, username, password);
			System.out.println("db init!");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close() {
		try {
			connection.close();
			System.out.println("db close!");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
