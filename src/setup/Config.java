package setup;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedHashMap;

//import org.jsoup.Jsoup;
//import org.jsoup.nodes.Document;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import connection.SinglePool;

public class Config {
	public static int DB_MAX_CONNECTIONS = 10;
	public static String SERVER_NAME = "jdbc:sqlserver://mssql-45585-0.cloudclusters.net:18602;";
	public static String DATABASE_NAME = "databaseName=TT_TUYENSINH_2";
	public static String USERNAME_DB = "robocon321";
	public static String PASSWORD_DB = "CNPMtest2021";
	public static String DBDRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

//	public static void main(String[] args) {
//			Connection conn = null;
//			try {
//				Class.forName(DBDRIVER);
//				conn = DriverManager.getConnection(SERVER_NAME + DATABASE_NAME,USERNAME_DB,PASSWORD_DB);
//				System.out.println("connect successfully!");
//				Statement st = conn.createStatement();
//				ResultSet rs = st.executeQuery("SELECT * FROM DIACHI");
//				System.out.println(rs.getInt(1));
//			} catch (Exception ex) {
//				System.out.println("connect failure!");
//				ex.printStackTrace();
//			}
//			// connnect to database 'testdb'
//
//	}

}
