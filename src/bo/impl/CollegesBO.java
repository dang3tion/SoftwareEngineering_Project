package bo.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import bo.ICollegesBO;
import dao.ICollegesDAO;
import dao.impl.CollegesDAO;
import model.AddressDetail;
import model.CollegesInfo;
import model.Course;
import model.Images;
import model.PhoneDetail;
import model.TrainingFrame;
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

	public List<AddressDetail> createAddress(HttpServletRequest request) {
		List<AddressDetail> lstAddress = new ArrayList<AddressDetail>();
		String[] tieude = request.getParameterValues("tieude-diachi");
		for (int i = 0; i < tieude.length; i++) {
			AddressDetail ad = new AddressDetail();
			ad.setTitle(tieude[i].trim());
			ad.setAddress(request.getParameterValues("diachi")[i].trim());
			ad.setCity(request.getParameterValues("diachi-tinh")[i].trim());
			ad.setDistrict(request.getParameterValues("diachi-huyen")[i].trim());
			ad.setState(request.getParameterValues("diachi-trangthai")[i].trim());
			lstAddress.add(ad);
		}
		return lstAddress;
	}

	public List<PhoneDetail> createPhoneDetail(HttpServletRequest request) {
		List<PhoneDetail> lstPhone = new ArrayList<PhoneDetail>();
		String[] tieude = request.getParameterValues("sdt-tieude");
		for (int i = 0; i < tieude.length; i++) {
			PhoneDetail po = new PhoneDetail();
			po.setTitle(tieude[i].trim());
			po.setPhoneNo(request.getParameterValues("sdt")[i].trim());
			po.setState(request.getParameterValues("sdt-trangthai")[i].trim());
			lstPhone.add(po);
		}
		return lstPhone;
	}

	public List<Images> createListImage(HttpServletRequest request) {
		List<Images> lstIm = new ArrayList<Images>();
		String anhnen = request.getParameter("anh-nen");
		lstIm.add(new Images("nen", anhnen.trim(), ""));
		String logo = request.getParameter("logo");
		lstIm.add(new Images("logo", logo.trim(), ""));
		String[] anhphu = request.getParameterValues("anh-phu");
		for (int i = 0; i < anhphu.length; i++) {
			lstIm.add(new Images("phu", anhphu[i].trim(), ""));
		}
		return lstIm;
	}

	public List<TrainingFrame> createListFrame(HttpServletRequest request) {
		List<TrainingFrame> lstFrame = new ArrayList<TrainingFrame>();
		String[] nam = request.getParameterValues("khung-nam");
		for (int i = 0; i < nam.length; i++) {
			TrainingFrame frame = new TrainingFrame();
			String loaikhung = request.getParameterValues("loai-khung")[i].trim();
			String mota = request.getParameterValues("mota-khung")[i].trim();
			String hocphi = request.getParameterValues("hocphi")[i].trim();
			String giatri = request.getParameterValues("giatri-hocphi")[i].trim();
			String mota_hocphi = request.getParameterValues("mota-hocphi")[i].trim();
			List<Course> lstCourse = createListCourse(request, i + 1);
			frame.setUpdateTime(nam[i]);
			frame.setTypeFrame(loaikhung);
			frame.setDescription(mota);
			frame.setTuition(hocphi);
			frame.setValue_tuition(Double.parseDouble(giatri));
			frame.setDescriTuition(mota_hocphi);
			frame.setListCourse(lstCourse);
			lstFrame.add(frame);
		}
		return lstFrame;

	}

	public List<Course> createListCourse(HttpServletRequest request, int id) {
		List<Course> lstCourse = new ArrayList<Course>();
		String[] nganh = request.getParameterValues("nganh" + id);
		for (int i = 0; i < nganh.length; i++) {
			Course course = new Course();
			String diem = request.getParameterValues("diem-nganh" + id)[i].trim();
			String chitieu = request.getParameterValues("chitieu-nganh" + id)[i].trim();
			String tohop = request.getParameterValues("tohop-nganh" + id)[i].trim();
			String mota = request.getParameterValues("mota-nganh" + id)[i].trim();
			course.setName(nganh[i].trim());
			course.setGrade(Double.parseDouble(diem));
			course.setRecruimentQuantity(Integer.parseInt(chitieu));
			course.setDesciption(mota);
			course.setRecruimentCombination(new ArrayList<String>(Arrays.asList(tohop.split(","))));
			lstCourse.add(course);
		}
		return lstCourse;
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
		c.setListAdress(createAddress(request));
		c.setListFrame(createListFrame(request));
		c.setLstImg(createListImage(request));
		c.setListPhone(createPhoneDetail(request));
		System.out.println(c);

		return false;

	}
	
	
	
}
