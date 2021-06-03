package dao.impl;

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

public abstract class AbstractDAO<T> implements IGenericDAO<T>{
	
	public abstract int doInsert(T t, Object...params);
	public abstract boolean doUpdate(T t, Object...params);
	public abstract boolean doDelete(int id, Object...params);
	public abstract T doGet(int id, Object...params);
	
	@Override
	public List<T> query(String sql, RowMapper<T> rowMapper, Object... params) {
		// TODO Auto-generated method stub
		List<T> list = new ArrayList<T>();
		try {
			PreparedStatement st = SinglePool.getConnection().prepareStatement(sql);
			setParams(st, params);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				list.add(rowMapper.mapper(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean update(String sql, Object... params) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int insert(String sql, Object... params) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean delete(String sql, Object... params) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int count(String sql, Object... params) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public T get(String sql, Object... params) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public void setParams(PreparedStatement st, Object...params) {
		if(params == null) return ;
		try {
			for(int i=0;i<params.length;i++) {
				if(params[i] instanceof String) {
					st.setString(i, params[i].toString());
				}else if(params[i] instanceof Integer) {
					st.setInt(i, (Integer) params[i]);
				}else if(params[i] instanceof Date) {
					st.setDate(i, (Date) params[i]);
				}else if(params[i] instanceof Boolean) {
					st.setBoolean(i, (Boolean) params[i]);
				}else {
					st.setLong(i, (Long) params[i]);
				}
			}			
		}catch(SQLException e) {
			e.printStackTrace();
		}
	};
}
