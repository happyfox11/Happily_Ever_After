package dto;

import java.io.Serializable;

public class Consult implements Serializable {

	private static final long serialVersionUID = -4274700572038677000L;

	private String consultId;	//프로그램 아이디
	private String cName;		//프로그램 이름
	private String description; //프로그램 설명
	private String picName; //담당자 이름(person in charge : 담당자)
	private String picPhone;//담당자 연락처
	private Integer maxNum; //최대인원수
	private String filename;
	private int quantity;//장바구니에 담은 개수

	public Consult() {
		super();
	}

	public String getConsultId() {
		return consultId;
	}

	public void setConsultId(String consultId) {
		this.consultId = consultId;
	}

	public String getCName() {
		return cName;
	}

	public void setCName(String cName) {
		this.cName = cName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPicName() {
		return picName;
	}

	public void setPicName(String picName) {
		this.picName = picName;
	}

	public String getPicPhone() {
		return picPhone;
	}

	public void setPicPhone(String picPhone) {
		this.picPhone = picPhone;
	}

	public Integer getMaxNum() {
		return maxNum;
	}

	public void setMaxNum(Integer maxNum) {
		this.maxNum = maxNum;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "Consult [consultId=" + consultId + ", cName=" + cName + ", description=" + description + ", picName="
				+ picName + ", picPhone=" + picPhone + ", maxNum=" + maxNum + "]";
	}



	
}
