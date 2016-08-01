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
	
	private File[] cover;
	

	public StartupsCreateDTO getSd() {
		return sd;
	}

	public void setSd(StartupsCreateDTO sd) {
		this.sd = sd;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}
	
	
	
}
