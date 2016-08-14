package com.chuangyejia.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.chuangyejia.bean.Product;
import com.chuangyejia.factory.ServiceFactory;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.opensymphony.xwork2.ActionSupport;

public class GetProductsInStartupsIdAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String startupsId;
	
	
	public String getStartupsId() {
		return startupsId;
	}


	public void setStartupsId(String startupsId) {
		this.startupsId = startupsId;
	}


	public void getProductsInStartups() {
		
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch(IOException e) {
System.out.println("GetProductInStartupsIdAction中获取输出管道出错！");
		}
		Gson gson = new Gson();
		JsonObject jo = new JsonObject();
		
		boolean success = false;
		
		if(startupsId != null && startupsId.trim().hashCode() != 0) {
			List<Product> ps = ServiceFactory.createProductService().getProductsInStartupsId(startupsId);
			for(int i = 0; i < ps.size(); i++)
				ps.get(i).setProductStartups(null);
			jo.add("ps", gson.toJsonTree(ps));
			success = true;
		}
		
		jo.addProperty("success", success);
		out.print(jo.toString());
		
		out.flush();
		out.close();
		
	}
}
