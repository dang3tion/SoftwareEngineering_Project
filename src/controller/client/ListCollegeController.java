package controller.client;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import bo.IAddressBO;
import bo.ICollegesBO;
import bo.ICourseBO;
import bo.IFrameBO;
import bo.impl.AddressBO;
import bo.impl.CollegesBO;
import bo.impl.CourseBO;
import bo.impl.FrameBO;
import model.CollegesInfo;
import model.Course;
import model.TrainingFrame;

@WebServlet(urlPatterns = {"/college-list"})
public class ListCollegeController extends HttpServlet{
	private ICollegesBO collegeBO = CollegesBO.getInstance();
	private ICourseBO courseBO = CourseBO.getInstance();
	private IAddressBO addressBO = AddressBO.getInstance();
	private IFrameBO frameBO = FrameBO.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Gson gson = new Gson();
		
		req.setCharacterEncoding("UTF-8");
	    resp.setCharacterEncoding("UTF-8");
	    resp.setContentType("text/html; charset=UTF-8");
	    
	    String action = req.getParameter("search-method");
	    
	    if(action.equals("ajax")) {
	    	String search = req.getParameter("text");
			List<CollegesInfo> list = collegeBO.searchColleges(search);
	    	req.setAttribute("search", search);
	    	
			PrintWriter writer = resp.getWriter();
			writer.append(gson.toJson(list).toString());
	    }else if(action.equals("normal")) {
	    	String search = req.getParameter("search");
	    	String province = req.getParameter("province");
	    	String course = req.getParameter("course");
	    	String type = req.getParameter("type") == null ? "" : req.getParameter("type");
	    		    	
	    	req.setAttribute("search", search);
	    	req.setAttribute("province", province);
	    	req.setAttribute("course", course);
	    	req.setAttribute("type", type);
	    	
	    	List<CollegesInfo> colleges = collegeBO.searchColleges(search, province, course, type);
	    	List<Course> courses = courseBO.getCourses();
	    	List<String> addresses = addressBO.getAllDistrict();
	    	List<TrainingFrame> frames = frameBO.getListFrame();
	    	
	    	req.setAttribute("colleges", colleges);
	    	req.setAttribute("courses", courses);
	    	req.setAttribute("addresses", addresses);
	    	req.setAttribute("frames", frames);
	    	
	    	req.getRequestDispatcher("view/jsp/page/FilterUI.jsp").forward(req, resp);;
	    }else if(action.equals("normal-3p")){
	    	
	    }else {
	    	resp.sendRedirect("/home");
	    }
	}
}
