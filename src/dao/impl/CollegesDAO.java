package dao.impl;

import java.sql.Statement;
import java.util.List;

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
		System.out.println(sql);
		return query(sql, new CollegesMapper(), null);
	}

}
