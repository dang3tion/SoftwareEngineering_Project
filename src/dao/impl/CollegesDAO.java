package dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.SinglePool;
import dao.ICollegesDAO;
import mapper.CollegesMapper;
import model.CollegesInfo;
import page.Page;

public class CollegesDAO extends AbstractDAO<CollegesInfo> implements ICollegesDAO{
	private static CollegesDAO instance = new CollegesDAO();
	public static CollegesDAO getInstance() {
		return instance;
	}
	private CollegesDAO() {}


	@Override
	public int doInsert(CollegesInfo t, Object... params) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean doUpdate(CollegesInfo t, Object... params) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean doDelete(int id, Object... params) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public CollegesInfo doGet(int id, Object... params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CollegesInfo> searchColleges(String search, Page page, Object... params) {
		String sql = "SELECT * FROM TRUONGHOC th JOIN DIACHI dc ON th.ID_TRUONG = dc.ID_TRUONG WHERE th.TENTRUONG LIKE '%"+search+"%'";
		// filter condition
		//
		sql+=" ORDER BY @@CURSOR_ROWS OFFSET "+page.getOffset()+" ROWS FETCH NEXT "+page.getMaxPageItem()+" ROWS ONLY";
		return query(sql, new CollegesMapper(), null);
	}

	public List<String> getAllProvince(){
		List<String> result = new ArrayList<String>();
		String sql = "SELECT TINH FROM DIACHI GROUP BY TINH HAVING COUNT(TINH) > 0";
		try {
			PreparedStatement pt = SinglePool.getConnection().prepareStatement(sql);
			ResultSet rs = pt.executeQuery();
			while(rs.next()) {
				result.add(rs.getNString(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
