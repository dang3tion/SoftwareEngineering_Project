package bo.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import bo.ICollegesBO;
import dao.ICollegesDAO;
import dao.impl.AddressDAO;
import dao.impl.CollegesDAO;
import mapper.MapperList;
import model.AddressDetail;
import model.CollegesInfo;
import page.Page;

public class CollegesBO implements ICollegesBO {
	private ICollegesDAO collegeDAO = CollegesDAO.getInstance();
	private static CollegesBO instance = new CollegesBO();

	public static CollegesBO getInstance() {
		return instance;
	}

	public CollegesBO() {
	}

	@Override
	public List<CollegesInfo> searchColleges(String search) {
		return collegeDAO.searchColleges(search, new Page());
	}

	@Override
	public List<CollegesInfo> searchColleges(String search, Object... params) {
		return collegeDAO.searchColleges(search, new Page(), params);
	}

	@Override
	public boolean isIdExists(String id) {
		id = id.trim().toUpperCase();
		return collegeDAO.isIdExists(id);
	}

	@Override
	public boolean createNewObject(HttpServletRequest request) {

		String tentruong = request.getParameter("tentruong").trim();
		String matruong = request.getParameter("matruong").trim();
		String website = request.getParameter("urlWeb").trim();
		String intro = request.getParameter("gioithieu").trim();
		String tuyensinh = request.getParameter("tuyensinh").trim();
		String loaitruong = request.getParameter("loaitruong").trim();
		String trangthai = request.getParameter("trangthai").trim();
		CollegesInfo c = new CollegesInfo(tentruong, matruong, loaitruong, website, "email@gmail.com", intro, tuyensinh,
				trangthai);
		c.setListAdress(MapperList.getInstance().createAddress(request));
		c.setListFrame(MapperList.getInstance().createListFrame(request));
		c.setLstImg(MapperList.getInstance().createListImage(request));
		c.setListPhone(MapperList.getInstance().createPhoneDetail(request));

		return CollegesDAO.getInstance().insertColleges(c);
	}

}
