package com.chuangyejia.ajax;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.chuangyejia.factory.ServiceFactory;
import com.chuangyejia.service.IUserService;
import com.chuangyejia.tools.UserTempShowOnlyUser;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.opensymphony.xwork2.ActionSupport;

public class ProvideUserListForShowAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String[] copartnerCategory = {
			 "其他"						//0 其他
			,"资金"						//1 资金
			,"技术"						//2技术
			,"推广"						//3推广
			,"运营"						//4运营
			,"null"						//5综合
	};
	
	/**
	 * 用来进行排序方式的操作
	 */
	private String sort;
	
	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	
	public void getUsers() {
		
		/**
		 * 暂时前台尚未提供该功能，先直接赋值，
		 */
		sort = "userId";
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");

		IUserService ius = ServiceFactory.createUserService();
		
		List<UserTempShowOnlyUser> other = ius.getUserTempShowOnlyUser(0, 14, copartnerCategory[0], sort);

		List<UserTempShowOnlyUser> fund = ius.getUserTempShowOnlyUser(0, 14, copartnerCategory[1], sort);

		List<UserTempShowOnlyUser> technology = ius.getUserTempShowOnlyUser(0, 14, copartnerCategory[2], sort);

		List<UserTempShowOnlyUser> popularize = ius.getUserTempShowOnlyUser(0, 14, copartnerCategory[3], sort);

		List<UserTempShowOnlyUser> operation = ius.getUserTempShowOnlyUser(0, 14, copartnerCategory[4], sort);

		List<UserTempShowOnlyUser> all = ius.getUserTempShowOnlyUser(0, 15, copartnerCategory[5], sort);
	
		
		Gson gson = new Gson();
		JsonObject jo = new JsonObject();
		jo.add("other", gson.toJsonTree(other));
		jo.add("fund", gson.toJsonTree(fund));
		jo.add("technology", gson.toJsonTree(technology));
		jo.add("popularize", gson.toJsonTree(popularize));
		jo.add("operation", gson.toJsonTree(operation));
		jo.add("all", gson.toJsonTree(all));
		
		try {
			response.getWriter().print(jo.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
