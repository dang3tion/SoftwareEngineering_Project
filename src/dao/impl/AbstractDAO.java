package dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.SinglePool;
import dao.IGenericDAO;
import mapper.RowMapper;

public abstract class AbstractDAO<T> implements IGenericDAO<T> {
	@Override
	public int count(String sql, Object... params) {
		int count = 0;
		Connection cn = SinglePool.getConnection();
		try {
			PreparedStatement st = cn.prepareStatement(sql);
			setParams(st, params);
			ResultSet rs = st.executeQuery();
			rs.next();
			count = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SinglePool.returnConnection(cn);
		}
		return count;
	}

	@Override
	public List<T> query(String sql, RowMapper<T> rowMapper, Object... params) {
		// TODO Auto-generated method stub
		List<T> list = new ArrayList<T>();
		Connection cn = SinglePool.getConnection();
		try {
			PreparedStatement st = cn.prepareStatement(sql);
			setParams(st, params);
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				list.add(rowMapper.mapper(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SinglePool.returnConnection(cn);
		}
		return list;
	}


	public void setParams(PreparedStatement st, Object... params) {
		if (params == null)
			return;
		try {
			for (int i = 0; i < params.length; i++) {
				if (params[i] instanceof String) {
					st.setNString(i + 1, "%" + params[i].toString() + "%");
				} else if (params[i] instanceof Integer) {
					st.setInt(i + 1, (Integer) params[i]);
				} else if (params[i] instanceof Date) {
					st.setDate(i + 1, (Date) params[i]);
				} else if (params[i] instanceof Boolean) {
					st.setBoolean(i + 1, (Boolean) params[i]);
				} else if (params[i] instanceof Long) {
					st.setLong(i + 1, (Long) params[i]);
				} else {
					st.setString(i + 1, null);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	};
}
