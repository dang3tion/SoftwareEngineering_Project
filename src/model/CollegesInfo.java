package model;

import java.util.List;

public class CollegesInfo {
	private int id;
	private String name;
	private String type;
	private String trainingSystem;
	private List<String> address;
	private List<String> phoneNumber;
	private String website;
	private String email;
	private String introduce;
	private String admissionDetail;
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
	
}
