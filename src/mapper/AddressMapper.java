package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.AddressDetail;

public class AddressMapper implements RowMapper<AddressDetail>{

	@Override
	public AddressDetail mapper(ResultSet rs) {
		AddressDetail addr = new AddressDetail();
		try {
			addr.setTitle(rs.getNString(2));
			addr.setAddress(rs.getNString(3));
			addr.setDistrict(rs.getNString(5));
			addr.setState(rs.getNString(6));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return addr;
	}

}
