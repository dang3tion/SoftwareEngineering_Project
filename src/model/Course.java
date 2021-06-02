package model;

import java.util.List;

public class Course {
	private int id;
	private String name;
	private double grade;
	private List<String> recruimentCombination; 
	private int recruimentQuantity;
	private String groupCourse;
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
	public double getGrade() {
		return grade;
	}
	public void setGrade(double grade) {
		this.grade = grade;
	}
	public List<String> getRecruimentCombination() {
		return recruimentCombination;
	}
	public void setRecruimentCombination(List<String> recruimentCombination) {
		this.recruimentCombination = recruimentCombination;
	}
	public int getRecruimentQuantity() {
		return recruimentQuantity;
	}
	public void setRecruimentQuantity(int recruimentQuantity) {
		this.recruimentQuantity = recruimentQuantity;
	}
	public String getGroupCourse() {
		return groupCourse;
	}
	public void setGroupCourse(String groupCourse) {
		this.groupCourse = groupCourse;
	}
}
