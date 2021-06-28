package dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.AccessDatabase;
import connection.SinglePool;
import dao.ICollegesDAO;
import mapper.CollegesMapper;
import model.CollegesInfo;
import page.Page;

public class CollegesDAO extends AbstractDAO<CollegesInfo> implements ICollegesDAO {
	private static CollegesDAO instance = new CollegesDAO();

	public static CollegesDAO getInstance() {
		return instance;
	}

	private CollegesDAO() {
	}

	@Override
	public List<CollegesInfo> searchColleges(String search, Page page, Object... params) {
		String sql = "SELECT * FROM TRUONGHOC TH ";
		sql += "WHERE TH.TENTRUONG LIKE '%" + search + "%' ";
		// filter condition
		if (params.length > 0) {
			sql += "AND EXISTS(SELECT * FROM DIACHI DC WHERE TINH LIKE ? AND LOAITRUONG LIKE ? AND DC.ID_TRUONG = TH.ID_TRUONG";
			sql += ") AND EXISTS(";
			sql += "SELECT * FROM KHUNGDT_TRUONG KT WHERE KT.ID_TRUONG = TH.ID_TRUONG AND ";
			sql += "EXISTS(";
			sql += "SELECT * FROM NGANH_TOHOP NT WHERE NT.ID_KDT = KT.ID_KDT AND ";
			sql += "EXISTS(";
			sql += "SELECT * FROM NGANH N WHERE N.ID_NGANH = NT.ID_NGANH AND N.TEN_NGANH LIKE ?";
			sql += ")))";
		}
		
		sql += " ORDER BY @@CURSOR_ROWS OFFSET " + page.getOffset() + " ROWS FETCH NEXT " + page.getMaxPageItem()
				+ " ROWS ONLY";
		return query(sql, new CollegesMapper(), params);
	}

	@Override
	public boolean isIdExists(String id) {
		AccessDatabase ac = AccessDatabase.getInstance();
		String query = "SELECT * FROM TRUONGHOC WHERE MATRUONG=?";
		try (ResultSet rs = ac.executeQuery(query, id)) {
			if (!rs.isBeforeFirst()) {
				return false;
			}
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	public int getIdColleges(String idColleges) {
		AccessDatabase ac = AccessDatabase.getInstance();
		String query = "SELECT ID_TRUONG FROM TRUONGHOC WHERE MATRUONG=?";
		try (ResultSet rs = ac.executeQuery(query, idColleges)) {
			if (rs.next()) {
				return Integer.parseInt(rs.getString("ID_TRUONG"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;

	}

	public boolean insertColleges(CollegesInfo c) {
		AccessDatabase ac = AccessDatabase.getInstance();
		String query = "INSERT INTO TRUONGHOC VALUES(?,?,?,?,?,?,?,'1')";
		try (ResultSet rs = ac.executeQuery(query, c.getIdColleges(), c.getState(), c.getName(), c.getType(),
				c.getWebsite(), c.getIntroduce(), c.getAdmissionDetail())) {
			// address
			int id = getIdColleges(c.getIdColleges());
			System.out.println("idturong" + id);
			for (int i = 0; i < c.getListAdress().size(); i++) {
				AddressDAO.getInstance().insertAddress(c.getListAdress().get(i), id + "");
			}
			// phone
			for (int i = 0; i < c.getListPhone().size(); i++) {
				PhoneDetailDAO.getInstance().insertPhone(c.getListPhone().get(i), id + "");
			}
			// img
			for (int i = 0; i < c.getLstImg().size(); i++) {
				ImageDAO.getInstance().insertImage(c.getLstImg().get(i), id + "");
			}

			// frame
			for (int i = 0; i < c.getListFrame().size(); i++) {
				FrameDAO.getInstance().insertFrame(c.getListFrame().get(i), id + "");
			}
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public int countColleges(String search, Object... params) {
		String sql = "SELECT COUNT(*) FROM TRUONGHOC TH ";
		sql += "WHERE TH.TENTRUONG LIKE '%" + search + "%' ";
		// filter condition
		if (params.length > 0) {
			sql += "AND EXISTS(SELECT * FROM DIACHI DC WHERE TINH LIKE ? AND LOAITRUONG LIKE ? AND DC.ID_TRUONG = TH.ID_TRUONG";
			sql += ") AND EXISTS(";
			sql += "SELECT * FROM KHUNGDT_TRUONG KT WHERE KT.ID_TRUONG = TH.ID_TRUONG AND ";
			sql += "EXISTS(";
			sql += "SELECT * FROM NGANH_TOHOP NT WHERE NT.ID_KDT = KT.ID_KDT AND ";
			sql += "EXISTS(";
			sql += "SELECT * FROM NGANH N WHERE N.ID_NGANH = NT.ID_NGANH AND N.TEN_NGANH LIKE ?";
			sql += ")))";
		}

		return count(sql, params);

	}

	@Override
	public CollegesInfo getCollegeById(int id) {
		String sql = "SELECT * FROM TRUONGHOC WHERE ID_TRUONG = ?";
		List<CollegesInfo> list = query(sql, new CollegesMapper(), id);
		return list.size() == 0 ? null : list.get(0);
	}

	@Override
	public List<String> getAddress(int idCollege) {
		List<String> result = new ArrayList<String>();
		String sql = "SELECT DIACHI FROM DIACHI WHERE ID_TRUONG = " + idCollege;
		try {
			Statement st = SinglePool.getConnection().createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next())
				result.add(rs.getNString(1));
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public List<String> getPhone(int idCollege) {
		List<String> result = new ArrayList<String>();
		String sql = "SELECT SDT FROM SDT WHERE ID_TRUONG = " + idCollege;
		try {
			Statement st = SinglePool.getConnection().createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next())
				result.add(rs.getNString(1));
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;

	}
}
