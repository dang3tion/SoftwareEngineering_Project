package dao;

import java.util.List;

import mapper.RowMapper;

public interface IGenericDAO<T> {
	public List<T> query(String sql, RowMapper<T> mapper, Object...params); 
	public int count(String sql, Object ...params);
}
