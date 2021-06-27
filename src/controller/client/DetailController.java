package controller.client;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.impl.CollegesBO;
import bo.impl.FrameBO;
import model.CollegesInfo;

@WebServlet("/detail")
public class DetailController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    	int id = -1;
	    	try {
		    	id = Integer.parseInt(req.getParameter("id"));
	    	}catch (Exception e) {
	    		id = -1;
			}
	    	CollegesInfo info = CollegesBO.getInstance().getCollegeById(id);
	    	List<String> addresses = CollegesBO.getInstance().getAddress(id);
	    	List<String> phones = CollegesBO.getInstance().getPhone(id);
	    	List<String> frames = FrameBO.getInstance().getNameFrameByCollege(id);
	    	
	    	req.setAttribute("info", info);
	    	req.setAttribute("addresses", addresses);
	    	req.setAttribute("phones", phones);
	    	req.setAttribute("frames", frames);
	    	
	    	req.getRequestDispatcher("view/jsp/page/DetailInforUI.jsp").forward(req, resp);
	    }	
}
