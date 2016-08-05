package com.chuangyejia.ajax;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.chuangyejia.factory.ServiceFactory;
import com.chuangyejia.service.IStartupsService;
import com.chuangyejia.tools.StartupsTempShow;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.opensymphony.xwork2.ActionSupport;

public class SupportFourStartupsAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String sort;
	
	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public void getStartups() {
		
		if(sort == null) 
			sort = "startupsId";
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		
		IStartupsService iss = ServiceFactory.createStartupsService();
		List<StartupsTempShow> startupsTempList = iss.getStartupTempShows(0, 4, sort);
		
		Gson gson = new Gson();
		JsonObject jo = new JsonObject();
		jo.add("stl", gson.toJsonTree(startupsTempList));
		
		try {
			response.getWriter().print(jo.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
