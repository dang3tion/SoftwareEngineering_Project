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
import page.Page;

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
	    	String search = req.getParameter("text").trim();
			List<CollegesInfo> list = collegeBO.searchColleges(search);
	    	req.setAttribute("search", search);
	    	
			PrintWriter writer = resp.getWriter();
			writer.append(gson.toJson(list).toString());
	    }else if(action.equals("normal")) {
	    	String search = req.getParameter("search").trim();
	    	String province = req.getParameter("province");
	    	String course = req.getParameter("course");
	    	String type = req.getParameter("type") == null ? "" : req.getParameter("type");
	    	Page page = new Page();
	    	
	    	try {
	    		page.setPage(Integer.parseInt(req.getParameter("page")) < 0 ? 0 : Integer.parseInt(req.getParameter("page")));
	    	}catch(Exception e) {
	    		page.setPage(0);
	    	}
	    	
	    	req.setAttribute("search", search);
	    	req.setAttribute("province", province);
	    	req.setAttribute("course", course);
	    	req.setAttribute("type", type);
	    	
	    	List<CollegesInfo> colleges = collegeBO.searchColleges(search, page, province, type, course);
	    	List<Course> courses = courseBO.getCourses();
	    	List<TrainingFrame> frames = frameBO.getListFrame();
	    	int count = collegeBO.countColleges(search, province, type, course);
	    	
	    	req.setAttribute("colleges", colleges);
	    	req.setAttribute("courses", courses);
	    	req.setAttribute("frames", frames);
	    	req.setAttribute("count", count);
	    	req.setAttribute("page", page.getPage());
	    	req.setAttribute("countPage", count%page.getMaxPageItem()>0 ? count/page.getMaxPageItem(): count/page.getMaxPageItem()-1);
	    	
	    	req.getRequestDispatcher("view/jsp/page/FilterUI.jsp").forward(req, resp);
	    }
	    else {
	    	resp.sendRedirect("/home");
	    }
	}
}

