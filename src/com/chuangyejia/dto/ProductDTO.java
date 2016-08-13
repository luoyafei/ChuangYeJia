package com.chuangyejia.dto;

public class ProductDTO {

	private String name;
	private String address;
	private String brief;
	private String detail;
	private String startups;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBrief() {
		return brief;
	}
	public void setBrief(String brief) {
		this.brief = brief;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getStartups() {
		return startups;
	}
	public void setStartups(String startups) {
		this.startups = startups;
	}
	
	private boolean notNull(String data) {
		return data != null && data.trim().hashCode() !=0 ;
	}
	public boolean dataValidate() {
		
		return notNull(name) && notNull(address) && notNull(brief) && notNull(detail) && notNull(startups); 
	}
	
}
