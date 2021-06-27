package dao;

import java.util.List;

import model.CollegesInfo;
import page.Page;

public interface ICollegesDAO extends IGenericDAO<CollegesInfo> {
	public List<CollegesInfo> searchColleges(String search, Page page, Object... params);
	
	public int countColleges(String search, Object... params);
	
	public CollegesInfo getCollegeById(int id);
	
	public List<String> getAddress(int idCollege);
	
	public List<String> getPhone(int idCollege);
	
	public boolean isIdExists(String id);
}
