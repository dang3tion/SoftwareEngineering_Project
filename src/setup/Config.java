package setup;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import connection.SinglePool;

public class Config {
	public static int DB_MAX_CONNECTIONS = 100;
	public static String SERVER_NAME = "jdbc:sqlserver://localhost:1433";
	public static String DATABASE_NAME = "TT_TUYENSINH_2";
	public static String USERNAME_DB = "sa";
	public static String PASSWORD_DB = "0123456789";
	public static String DBDRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
}
