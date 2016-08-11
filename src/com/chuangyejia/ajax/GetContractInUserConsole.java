package com.chuangyejia.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.chuangyejia.bean.ApplyContract;
import com.chuangyejia.bean.InviteContract;
import com.chuangyejia.bean.User;
import com.chuangyejia.factory.ServiceFactory;
import com.chuangyejia.service.IApplyContractService;
import com.chuangyejia.service.IInviteContractService;
import com.chuangyejia.service.IStartupsService;
import com.chuangyejia.service.IUserService;
import com.chuangyejia.tools.StartupsTempShow;
import com.chuangyejia.tools.UserTempShow;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.opensymphony.xwork2.ActionSupport;

public class GetContractInUserConsole extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	public void getContractList() {
		
		HttpSession session = ServletActionContext.getRequest().getSession();
		User user = (User)session.getAttribute("user");
System.out.println(user.toString());
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
System.out.println("GetContractInUserConsole.java 中获取输出管道出错");
				e.printStackTrace();
			}
			
			
			IApplyContractService cs = ServiceFactory.createApplyContractService();
			IStartupsService iss = ServiceFactory.createStartupsService();
			String userId = user.getUserId();

			/**
			 * 这里是我创建的申请合同
			 * 将不需要显示的字段都设置为null
			 */
			List<ApplyContract> myCreateApply = cs.getApplyContractInUserId(userId);
			List<StartupsTempShow> myCreateApplyStartups = new ArrayList<StartupsTempShow>();
			for(int i = 0; i < myCreateApply.size(); i++) {
				StartupsTempShow s = iss.getStartupsTempShowInId(myCreateApply.get(i).getApplyStartupsId());
				s.setCopartner(null);
				s.setStartupsLeader(null);
				s.setStartupsCreateDate(null);
				s.setStartupsBrief(null);
				s.setStartupsDetail(null);
				s.setStartupsServiceType(null);
				s.setStartupsAddress(null);
				s.setStartupsCopartnerRequire(null);
				s.setStartupsOperationStage(null);
				s.setStartupsCover(null);
				s.setStartupsVideo(null);
				s.setStartupsPhoto1(null);
				s.setStartupsPhoto2(null);
				s.setStartupsPhoto3(null);
				
				myCreateApplyStartups.add(s);
			}
			
			jo.add("myCreateApply", gson.toJsonTree(myCreateApply));
			jo.add("myCreateApplyStartups", gson.toJsonTree(myCreateApplyStartups));
			
			/**
			 * 这里是我是Leader的公司的接收到的申请
			 * 将不需要显示的字段都设置为null
			 */
			List<ApplyContract> myLeaderReceive = cs.getApplyContractInLeaderId(userId);
			List<StartupsTempShow> myLeaderReceiveStartups = new ArrayList<StartupsTempShow>();
			List<UserTempShow> myLeaderReceiveUser = new ArrayList<UserTempShow>();
			IUserService ius = ServiceFactory.createUserService();
			for(int i = 0; i < myLeaderReceive.size(); i++) {
				StartupsTempShow s = iss.getStartupsTempShowInId(myLeaderReceive.get(i).getApplyStartupsId());
				s.setCopartner(null);
				s.setStartupsLeader(null);
				s.setStartupsCreateDate(null);
				s.setStartupsBrief(null);
				s.setStartupsDetail(null);
				s.setStartupsServiceType(null);
				s.setStartupsAddress(null);
				s.setStartupsCopartnerRequire(null);
				s.setStartupsOperationStage(null);
				s.setStartupsCover(null);
				s.setStartupsVideo(null);
				s.setStartupsPhoto1(null);
				s.setStartupsPhoto2(null);
				s.setStartupsPhoto3(null);
				myLeaderReceiveStartups.add(s);
				
				
				UserTempShow uts = ius.getUserTempShowInId(myLeaderReceive.get(i).getApplyOrganiserId());
				uts.setAllJoinStartups(null);
				uts.setAllLeaderStartups(null);
				uts.setCopartnerCategory(null);
				uts.setIntroduceVideo(null);
				uts.setIsVerify(null);
				uts.setStartAbility(null);
				uts.setUserAddress(null);
				uts.setUserCreateDate(null);
				uts.setUserEmail(null);
				uts.setUserField(null);
				uts.setUserGender(null);
				uts.setUserGender(null);
				uts.setUserIntroduce(null);
				uts.setUserPhoto(null);
				uts.setUserTel(null);
				uts.setUserWeChat(null);
				myLeaderReceiveUser.add(uts);
			}
			
			jo.add("myLeaderReceive", gson.toJsonTree(myLeaderReceive));
			jo.add("myLeaderReceiveStartups", gson.toJsonTree(myLeaderReceiveStartups));
			jo.add("myLeaderReceiveUser", gson.toJsonTree(myLeaderReceiveUser));
			
			/**
			 * 这里是我创建的邀请合同的获取
			 */
			
			IInviteContractService iics = ServiceFactory.createInviteContractService();
			List<InviteContract> myCreateInvite = iics.getInviteContractInLeaderId(userId);
			List<StartupsTempShow> myCreateInviteStartups = new ArrayList<StartupsTempShow>();
			List<UserTempShow> myCreateInviteUser = new ArrayList<UserTempShow>();
			
			for(int i = 0; i < myCreateInvite.size(); i++) {
				StartupsTempShow s = iss.getStartupsTempShowInId(myCreateInvite.get(i).getInviteOrganiserStartupsId());
				s.setCopartner(null);
				s.setStartupsLeader(null);
				s.setStartupsCreateDate(null);
				s.setStartupsBrief(null);
				s.setStartupsDetail(null);
				s.setStartupsServiceType(null);
				s.setStartupsAddress(null);
				s.setStartupsCopartnerRequire(null);
				s.setStartupsOperationStage(null);
				s.setStartupsCover(null);
				s.setStartupsVideo(null);
				s.setStartupsPhoto1(null);
				s.setStartupsPhoto2(null);
				s.setStartupsPhoto3(null);
				myCreateInviteStartups.add(s);
				
				
				UserTempShow uts = ius.getUserTempShowInId(myCreateInvite.get(i).getInviteUserId());
				uts.setAllJoinStartups(null);
				uts.setAllLeaderStartups(null);
				uts.setCopartnerCategory(null);
				uts.setIntroduceVideo(null);
				uts.setIsVerify(null);
				uts.setStartAbility(null);
				uts.setUserAddress(null);
				uts.setUserCreateDate(null);
				uts.setUserEmail(null);
				uts.setUserField(null);
				uts.setUserGender(null);
				uts.setUserGender(null);
				uts.setUserIntroduce(null);
				uts.setUserPhoto(null);
				uts.setUserTel(null);
				uts.setUserWeChat(null);
				myCreateInviteUser.add(uts);
			}
			jo.add("myCreateInvite", gson.toJsonTree(myCreateInvite));
			jo.add("myCreateInviteStartups", gson.toJsonTree(myCreateInviteStartups));
			jo.add("myCreateInviteUser", gson.toJsonTree(myCreateInviteUser));
			
			
			
			/**
			 * 这里是我接收的邀请合同的获取
			 */
			List<InviteContract> myReceiveInvite = iics.getInviteContractsInInviteUserId(userId);
			List<StartupsTempShow> myReceiveInviteStartups = new ArrayList<StartupsTempShow>();
			for(int i = 0; i < myReceiveInvite.size(); i++) {
				StartupsTempShow s = iss.getStartupsTempShowInId(myReceiveInvite.get(i).getInviteOrganiserStartupsId());
				s.setCopartner(null);
				s.setStartupsLeader(null);
				s.setStartupsCreateDate(null);
				s.setStartupsBrief(null);
				s.setStartupsDetail(null);
				s.setStartupsServiceType(null);
				s.setStartupsAddress(null);
				s.setStartupsCopartnerRequire(null);
				s.setStartupsOperationStage(null);
				s.setStartupsCover(null);
				s.setStartupsVideo(null);
				s.setStartupsPhoto1(null);
				s.setStartupsPhoto2(null);
				s.setStartupsPhoto3(null);
				myReceiveInviteStartups.add(s);
			}
			jo.add("myReceiveInvite", gson.toJsonTree(myReceiveInvite));
			jo.add("myReceiveInviteStartups", gson.toJsonTree(myReceiveInviteStartups));
			
			
			success = true;
		}
		jo.addProperty("success", success);
		
System.out.println(jo.toString());
		out.print(jo);
		out.flush();
		out.close();
		
	}
	

}
