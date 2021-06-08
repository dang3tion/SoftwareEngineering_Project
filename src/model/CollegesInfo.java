package model;

import java.util.List;

public class CollegesInfo {
	private int id;
	
	private String name;
	private String idColleges;
	private String type;

	private String trainingSystem;
	private List<String> address;
	private List<String> phoneNumber;
	private String website;
	private String email;
	private String introduce;
	private String admissionDetail;
	private List<TrainingFrame> listFrame;
	private List<AddressDetail> listAdress;
	private List<PhoneDetail> listPhone;
	public CollegesInfo(int id, String name, String type, String trainingSystem, List<String> address,
			List<String> phoneNumber, String website, String email, String introduce, String admissionDetail,
			List<TrainingFrame> listFrame, List<AddressDetail> listAdress, List<PhoneDetail> listPhone) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.trainingSystem = trainingSystem;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.website = website;
		this.email = email;
		this.introduce = introduce;
		this.admissionDetail = admissionDetail;
		this.listFrame = listFrame;
		this.listAdress = listAdress;
		this.listPhone = listPhone;
	}
	public CollegesInfo() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTrainingSystem() {
		return trainingSystem;
	}
	public void setTrainingSystem(String trainingSystem) {
		this.trainingSystem = trainingSystem;
	}
	public List<String> getAddress() {
		return address;
	}
	public void setAddress(List<String> address) {
		this.address = address;
	}
	public List<String> getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(List<String> phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getAdmissionDetail() {
		return admissionDetail;
	}
	public void setAdmissionDetail(String admissionDetail) {
		this.admissionDetail = admissionDetail;
	}
	public List<TrainingFrame> getListFrame() {
		return listFrame;
	}
	public void setListFrame(List<TrainingFrame> listFrame) {
		this.listFrame = listFrame;
	}
	public List<AddressDetail> getListAdress() {
		return listAdress;
	}
	public void setListAdress(List<AddressDetail> listAdress) {
		this.listAdress = listAdress;
	}
	public List<PhoneDetail> getListPhone() {
		return listPhone;
	}
	public void setListPhone(List<PhoneDetail> listPhone) {
		this.listPhone = listPhone;
	}
	@Override
	public String toString() {
		return "CollegesInfo [id=" + id + ", name=" + name + ", type=" + type + ", trainingSystem=" + trainingSystem
				+ ", address=" + address + ", phoneNumber=" + phoneNumber + ", website=" + website + ", email=" + email
				+ ", introduce=" + introduce + ", admissionDetail=" + admissionDetail + ", listFrame=" + listFrame
				+ ", listAdress=" + listAdress + ", listPhone=" + listPhone + "]";
	}

}