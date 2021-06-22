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

	public boolean isIdExists(String id);

	public boolean createNewObject(HttpServletRequest request);
	
}
