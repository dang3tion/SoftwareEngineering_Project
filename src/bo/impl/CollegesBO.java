package bo.impl;

import java.util.List;

import bo.ICollegesBO;
import dao.ICollegesDAO;
import dao.impl.CollegesDAO;
import model.CollegesInfo;
import page.Page;

public class CollegesBO implements ICollegesBO{
	private ICollegesDAO collegeDAO = CollegesDAO.getInstance();
	private static CollegesBO instance = new CollegesBO();
	public static CollegesBO getInstance() {
		return instance;
	}
	public CollegesBO() {}

	@Override
	public List<CollegesInfo> searchColleges(String search) {
		return collegeDAO.searchColleges(search, new Page());
	}
	@Override
	public List<CollegesInfo> searchColleges(String search, Object... params) {
		return collegeDAO.searchColleges(search, new Page(), params);
	}
}
