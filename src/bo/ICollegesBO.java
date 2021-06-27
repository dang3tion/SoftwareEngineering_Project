package bo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.AddressDetail;
import model.CollegesInfo;
import page.Page;

public interface ICollegesBO {
	public List<CollegesInfo> searchColleges(String search);

	public List<CollegesInfo> searchColleges(String search,Page page, Object... params);
	
	public int countColleges(String search, Object...params);
	
	public CollegesInfo  getCollegeById(int id);

	public List<String> getAddress(int idCollege);
	
	public List<String> getPhone(int idCollege);
	
	public boolean isIdExists(String id);

	public boolean createNewObject(HttpServletRequest request);
	
}
