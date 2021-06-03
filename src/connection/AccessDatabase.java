package connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccessDatabase {
	public ResultSet executeQuery(String query, Object... parameters) {
		ResultSet resultSet = null;
		Connection con = null;
		try {
			con = SinglePool.getConnection();
			PreparedStatement stmt = con.prepareStatement(query);
			int i = 0;
			for (Object object : parameters) {
				if (object instanceof String) {
					stmt.setString(i + 1, (String) object);
				}
				if (object instanceof Integer) {
					stmt.setInt(i + 1, (Integer) object);
				}
				i++;

			}
			if (query.toLowerCase().contains("select")) {
				resultSet = stmt.executeQuery();
			} else {
				stmt.executeUpdate();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		finally {
			SinglePool.returnConnection(con);
		}
		return resultSet;
	}

	/**
	 * @implNote CHỈ DÙNG TRONG TRƯỜNG HỢP DANH SÁCH THAM SỐ ĐỀU LÀ STRING
	 * @param query : câu truy vấn không chứa tham số (String)
	 * @return : trả về 1 ResultSet, null đối với câu lệnh delete
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public ResultSet updateQuery(String query) {
		ResultSet resultSet = null;
		Connection con = null;
		try {
			con = SinglePool.getConnection();
			PreparedStatement stmt = con.prepareStatement(query);
			if (query.toLowerCase().contains("select")) {
				resultSet = stmt.executeQuery();
			} else {
				stmt.executeUpdate();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SinglePool.returnConnection(con);
		}
		return resultSet;
	}
}
