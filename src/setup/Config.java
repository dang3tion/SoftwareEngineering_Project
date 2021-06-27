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

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import connection.SinglePool;

public class Config {
	public static int DB_MAX_CONNECTIONS = 10;
	public static String SERVER_NAME = "jdbc:sqlserver://localhost:1433";
	public static String DATABASE_NAME = "TT_TUYENSINH_2";
	public static String USERNAME_DB = "sa";
	public static String PASSWORD_DB = "sa";
	public static String DBDRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

//	public static void main(String[] args) {
//			Connection conn = null;
//			try {
//				Class.forName(DBDRIVER);
//				conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=TT_TUYENSINH_2","sa","0123456789");
//				System.out.println(conn);
//				System.out.println("connect successfully!");
//			} catch (Exception ex) {
//				System.out.println("connect failure!");
//				ex.printStackTrace();
//			}
//			// connnect to database 'testdb'
//
//	}

}
