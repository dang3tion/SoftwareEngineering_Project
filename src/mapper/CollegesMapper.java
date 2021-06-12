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
			info.setName(rs.getNString(4));
			info.setWebsite(rs.getString(6));
			info.setIntroduce(rs.getNString(7));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return info;
	}

}
