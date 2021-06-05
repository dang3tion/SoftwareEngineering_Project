package bo;

import java.util.List;

import model.CollegesInfo;

public interface ICollegesBO{
	public List<CollegesInfo> searchColleges(String search);
	public List<CollegesInfo> searchColleges(String search, Object...params);
}
