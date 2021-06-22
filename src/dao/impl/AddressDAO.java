package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.AccessDatabase;
import connection.SinglePool;
import dao.IAddressDAO;
import mapper.AddressMapper;
import model.AddressDetail;

public class AddressDAO extends AbstractDAO<AddressDetail> implements IAddressDAO{
	private static AddressDAO ins = new AddressDAO();

	public AddressDAO() {

	}

	public static AddressDAO getInstance() {
		if (ins == null) {
			ins = new AddressDAO();
		}
		return ins;
	}

	@Override
	public boolean insertAddress(AddressDetail address, String id) {
		AccessDatabase ac = AccessDatabase.getInstance();
		String query = "INSERT INTO DIACHI VALUES(?,?,?,?,?,?,?,'1')";
		try (ResultSet rs = ac.executeQuery(query, address.getTitle(), address.getAddress(), address.getAddress(),
				address.getCity(), address.getDistrict(), address.getState(), id)) {
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<String> getAllDistrict() {
		List<String> addresses = new ArrayList<String>();
		String sql = "SELECT DISTINCT(TINH) FROM DIACHI";
		Connection cn = SinglePool.getConnection();
		try {
			Statement st = SinglePool.getConnection().createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()) addresses.add(rs.getNString(1));
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			SinglePool.returnConnection(cn);
		}

		
		return addresses;
	}
}
