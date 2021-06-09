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

	public static void main(String[] args) {
			Connection conn = null;
			try {
				Class.forName(DBDRIVER);
				conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=TT_TUYENSINH_2","sa","sa");
				System.out.println(conn);
				System.out.println("connect successfully!");
			} catch (Exception ex) {
				System.out.println("connect failure!");
				ex.printStackTrace();
			}
			// connnect to database 'testdb'

	}
//	private static String getJSONString(String URL) {
//		String JSONString = null;
//		try {
//			URL url = new URL(URL);
//			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//			conn.setRequestMethod("GET");
//			conn.setRequestProperty("Accept", "application/json");
//			conn.setRequestProperty("User-Agent",
//					"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36");
//			if (conn.getResponseCode() != 200) {
//				throw new RuntimeException("Failed : HTTP error code : " + conn.getResponseCode());
//			}
//			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
//			JSONString = br.readLine();
//
//			conn.disconnect();
//		} catch (MalformedURLException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		return JSONString;
//	}
//
//	public static void main(String[] args) {
//		LinkedHashMap<String, String> provinces = new LinkedHashMap<String, String>();
//		Gson gson = new Gson();
//		String jsonString = getJSONString("https://thongtindoanhnghiep.co/api/city/");
//		JsonObject ls = gson.fromJson(jsonString, JsonObject.class);
//		JsonArray arr = ls.get("LtsItem").getAsJsonArray();
//		for (JsonElement jsonElement : arr) {
//			String provinceID = ((JsonObject) jsonElement).get("ID").toString();
//			String provinceName = ((JsonObject) jsonElement).get("Title").toString();
//			provinceName = provinceName.substring(1, provinceName.length() - 1);
//
//			provinces.put(provinceID, provinceName);
//		}
//		System.out.println(provinces);
//	}
}
