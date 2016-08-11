package com.chuangyejia.action;

import org.apache.struts2.ServletActionContext;

import com.chuangyejia.bean.InviteContract;
import com.chuangyejia.factory.ServiceFactory;
import com.chuangyejia.service.IInviteContractService;
import com.chuangyejia.service.IStartupsService;
import com.chuangyejia.service.IUserService;
import com.chuangyejia.tools.StartupsTempShow;
import com.chuangyejia.tools.UserTempShow;
import com.opensymphony.xwork2.ActionSupport;

public class GetInviteContractInIdAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String inviteId;
	
	public String getInviteId() {
		return inviteId;
	}

	public void setInviteId(String inviteId) {
		this.inviteId = inviteId;
	}


	public String JustDoIt() {
		if(ServletActionContext.getRequest().getSession().getAttribute("user") != null && inviteId != null && inviteId.trim().hashCode() != 0) {
			
			IInviteContractService iics = ServiceFactory.createInviteContractService();
			InviteContract inviteContract = iics.getInviteContractInInviteId(inviteId);
			
			if(inviteContract == null) 
				return NONE;
			else {
				String startupsId = inviteContract.getInviteOrganiserStartupsId();
				String userId = inviteContract.getInviteUserId();
				IStartupsService iss = ServiceFactory.createStartupsService();
				IUserService ius = ServiceFactory.createUserService();

				StartupsTempShow inviteStartups = iss.getStartupsTempShowInId(startupsId);
				UserTempShow inviteUser = ius.getUserTempShowInId(userId);
				
				ServletActionContext.getRequest().setAttribute("inviteContract", inviteContract);
				ServletActionContext.getRequest().setAttribute("inviteStartups", inviteStartups);
				ServletActionContext.getRequest().setAttribute("inviteUser", inviteUser);
				return SUCCESS;
			}
			
		} else {
			return NONE;
		}
	}
	
	
}
