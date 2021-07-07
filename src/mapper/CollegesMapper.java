package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.CollegesInfo;

public class CollegesMapper implements RowMapper<CollegesInfo>{

	@Override
	public CollegesInfo mapper(ResultSet rs) {
		CollegesInfo info = new CollegesInfo();
		try {
			info.setId(rs.getInt(1));
			info.setIdColleges(rs.getString(2));
			info.setState(rs.getString(3));
			info.setName(rs.getString(4));
			info.setType(rs.getString(5));
			info.setWebsite(rs.getString(6));
			info.setIntroduce(rs.getString(7));
			info.setAdmissionDetail(rs.getString(8));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return info;
	}

}
