package com.chuangyejia.action;

import java.io.File;

import com.chuangyejia.dto.StartupsCreateDTO;
import com.opensymphony.xwork2.ActionSupport;

public class CreateStartupsAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private StartupsCreateDTO sd;
	
	public File[] getImg() {
		return img;
	}

	public void setImg(File[] img) {
		this.img = img;
	}

	public String[] getImgFileName() {
		return imgFileName;
	}

	public void setImgFileName(String[] imgFileName) {
		this.imgFileName = imgFileName;
	}

	public String[] getImgContentType() {
		return imgContentType;
	}

	public void setImgContentType(String[] imgContentType) {
		this.imgContentType = imgContentType;
	}

	private File[] img;
	private String[] imgFileName;
	private String[] imgContentType;
	

	public StartupsCreateDTO getSd() {
		return sd;
	}

	public void setSd(StartupsCreateDTO sd) {
		this.sd = sd;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
System.out.println(sd.getName() + sd.getRequire()[0] + sd.getType());
System.out.println(imgFileName[0] + imgFileName[1] + imgFileName[2]);
		return SUCCESS;
	}
	
	
	
}
