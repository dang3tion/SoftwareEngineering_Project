package controller.client;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;

import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

@WebServlet(urlPatterns = { "/address" })
public class AddressController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String jsonString = getJSONString("https://thongtindoanhnghiep.co/api/city/");
		System.out.println(jsonString);

		resp.setContentType("text/string;charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter writer = new PrintWriter(resp.getWriter());
		resp.addHeader("Access-Control-Allow-Origin", "*");
		resp.addHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PUT, DELETE, HEAD");
		resp.addHeader("Access-Control-Allow-Headers", "X-PINGOTHER, Origin, X-Requested-With, Content-Type, Accept");
		resp.addHeader("Access-Control-Max-Age", "1728000");
		if (req.getParameter("id") != null) {
			try {
				int id = Integer.parseInt(req.getParameter("id"));
				String jsonString = getJSONString("https://thongtindoanhnghiep.co/api/city/" + id + "/district");
				writer.append(jsonString);
				return;
			} catch (Exception e) {
				writer.append("wrong input");
			}

		} else {
			String jsonString = getJSONString("https://thongtindoanhnghiep.co/api/city/");
			resp.setContentType("text/string;charset=UTF-8");

			writer.append(jsonString);
			return;
		}

	}

	private static String getJSONString(String URL) {
		String JSONString = null;
		try {
			URL url = new URL(URL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");
			conn.setRequestProperty("User-Agent",
					"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36");
			if (conn.getResponseCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code : " + conn.getResponseCode());
			}
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			JSONString = br.readLine();

			conn.disconnect();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return JSONString;
	}

	public static void main(String[] args) {
		String jsonString = getJSONString("https://thongtindoanhnghiep.co/api/city/");
		System.out.println(jsonString);
	}
}
