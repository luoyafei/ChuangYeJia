package com.chuangyejia.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.chuangyejia.bean.Startups;
import com.chuangyejia.bean.User;
import com.chuangyejia.factory.ServiceFactory;
import com.chuangyejia.service.IStartupsService;
import com.chuangyejia.tools.StartupsTempShow;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.opensymphony.xwork2.ActionSupport;

public class GetStartupsInUserConsole  extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public void getStartupsList() {
		
		HttpSession session = ServletActionContext.getRequest().getSession();
		User user = (User)session.getAttribute("user");
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = null;
		Gson gson = new Gson();
		JsonObject jo = new JsonObject();
		boolean success = false;
		
		if(user != null) {
			try {
				out = response.getWriter();
			} catch(IOException e) {
System.out.println("GetStartupsInUserConsole.java 中获取输出管道出错");
				e.printStackTrace();
			}
			
			IStartupsService iss = ServiceFactory.createStartupsService();
			List<Startups> leaderS = iss.getStartupsInLeaderId(user.getUserId());
			List<StartupsTempShow> joinS = iss.getStartupsInCopartnerId(user.getUserId());
			for(int i = 0; i < joinS.size(); i++) {
				joinS.get(i).getStartupsLeader().setAllJoinStartups(null);
				joinS.get(i).getStartupsLeader().setAllLeaderStartups(null);
				joinS.get(i).setCopartner(null);
			}
			success = true;
			
			jo.add("leaderS", gson.toJsonTree(leaderS));
			jo.add("joinS", gson.toJsonTree(joinS));
		}
		jo.addProperty("success", success);
		
//System.out.println(jo.toString());
		out.print(jo);
		out.flush();
		out.close();
	}

}
