package model;

import java.sql.Date;
import java.util.Map;

public class TrainingFrame {
	private int id;
	private String typeFrame;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTypeFrame() {
		return typeFrame;
	}
	public void setTypeFrame(String typeFrame) {
		this.typeFrame = typeFrame;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public Map<String, Integer> getTuitionDetail() {
		return tuitionDetail;
	}
	public void setTuitionDetail(Map<String, Integer> tuitionDetail) {
		this.tuitionDetail = tuitionDetail;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	private Date updateTime;
	private Map<String, Integer> tuitionDetail;
	private String description;
}
