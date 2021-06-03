package controller.client;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import bo.ICollegesBO;
import bo.impl.CollegesBO;
import model.CollegesInfo;

@WebServlet(urlPatterns = {"/college-list"})
public class ListCollegeController extends HttpServlet{
	private ICollegesBO collegeBO = CollegesBO.getInstance();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Gson gson = new Gson();
		
		req.setCharacterEncoding("UTF-8");
	    resp.setCharacterEncoding("UTF-8");
	    resp.setContentType("text/html; charset=UTF-8");
	    
	    String action = req.getParameter("search-method");

	    if(action.equals("ajax")) {
	    	String strSearch = req.getParameter("text");
			List<CollegesInfo> list = collegeBO.searchColleges(strSearch);
	    
			PrintWriter writer = resp.getWriter();
			System.out.println(gson.toJson(list).toString());
			writer.append(gson.toJson(list).toString());
	    }
	}
}
